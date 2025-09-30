-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue Sep 30 15:22:57 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Polyphase_filter_0_0_sim_netlist.vhdl
-- Design      : Design_2_Polyphase_filter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 4;
  attribute INIT : string;
  attribute INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "SYNC_RST";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 4;
  attribute INIT : string;
  attribute INIT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_wr_en_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair32";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1_n_0\
    );
\count_value_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1_n_0\
    );
\count_value_i[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[1]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1_n_0\
    );
\count_value_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_i,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[10]_i_1_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[11]_i_1_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[9]_i_1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_wr_en_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair13";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1_n_0\
    );
\count_value_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1_n_0\
    );
\count_value_i[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[1]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1_n_0\
    );
\count_value_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_i,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[10]_i_1_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[11]_i_1_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[9]_i_1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  port (
    going_afull : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    leaving_empty0 : out STD_LOGIC;
    going_full1 : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    ram_wr_en_i : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clr_full : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : in STD_LOGIC;
    \count_value_i_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\ : STD_LOGIC;
  signal \^going_full1\ : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__2\ : label is "soft_lutpair21";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
  going_full1 <= \^going_full1\;
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[10]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__2_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__2_n_0\
    );
\count_value_i[11]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__2_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__2_n_0\
    );
\count_value_i[11]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__2_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[8]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__2_n_0\
    );
\count_value_i[9]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__2_n_0\
    );
\count_value_i[9]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \count_value_i_reg[0]_0\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[10]_i_1__2_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[11]_i_1__2_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[8]_i_1__2_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[9]_i_1__2_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[11]_0\(0)
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0\,
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0\,
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0\,
      I3 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0\,
      I4 => \count_value_i_reg[0]_0\,
      I5 => ram_wr_en_i,
      O => going_afull
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(6),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(9),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(0),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(3),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003B2A2A2A"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\,
      I1 => \count_value_i_reg[0]_0\,
      I2 => \^leaving_empty0\,
      I3 => \^going_full1\,
      I4 => ram_wr_en_i,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAAAAFFFFBFBF"
    )
        port map (
      I0 => clr_full,
      I1 => ram_wr_en_i,
      I2 => \^going_full1\,
      I3 => \^leaving_empty0\,
      I4 => \count_value_i_reg[0]_0\,
      I5 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(9),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(6),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\,
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\,
      O => \^going_full1\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\,
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(9),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(6),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    ram_wr_en_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_i_2_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair26";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__0_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__0_n_0\
    );
\count_value_i[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__0_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__0_n_0\
    );
\count_value_i[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__0_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__0_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__0_n_0\
    );
\count_value_i[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_i,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[10]_i_1__0_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[11]_i_1__0_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => ram_wr_en_i,
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      I3 => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(9),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(6),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\ is
  port (
    going_afull : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    leaving_empty0 : out STD_LOGIC;
    going_full1 : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    ram_wr_en_i : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clr_full : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : in STD_LOGIC;
    \count_value_i_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\ : STD_LOGIC;
  signal \^going_full1\ : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__2\ : label is "soft_lutpair2";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
  going_full1 <= \^going_full1\;
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[10]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__2_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__2_n_0\
    );
\count_value_i[11]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__2_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__2_n_0\
    );
\count_value_i[11]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__2_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \count_value_i_reg[1]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[8]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__2_n_0\
    );
\count_value_i[9]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__2_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__2_n_0\
    );
\count_value_i[9]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \count_value_i_reg[0]_0\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[10]_i_1__2_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[11]_i_1__2_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[8]_i_1__2_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \count_value_i_reg[0]_0\,
      D => \count_value_i[9]_i_1__2_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[11]_0\(0)
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0\,
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0\,
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0\,
      I3 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0\,
      I4 => \count_value_i_reg[0]_0\,
      I5 => ram_wr_en_i,
      O => going_afull
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(6),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(9),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(0),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(3),
      I2 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003B2A2A2A"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\,
      I1 => \count_value_i_reg[0]_0\,
      I2 => \^leaving_empty0\,
      I3 => \^going_full1\,
      I4 => ram_wr_en_i,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAAAAFFFFBFBF"
    )
        port map (
      I0 => clr_full,
      I1 => ram_wr_en_i,
      I2 => \^going_full1\,
      I3 => \^leaving_empty0\,
      I4 => \count_value_i_reg[0]_0\,
      I5 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(9),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(6),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\,
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\,
      O => \^going_full1\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\,
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(9),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(6),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_5\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    ram_wr_en_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_i_2_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_5\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_5\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair7";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__0_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__0_n_0\
    );
\count_value_i[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__0_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__0_n_0\
    );
\count_value_i[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__0_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__0_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__0_n_0\
    );
\count_value_i[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_i,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[10]_i_1__0_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[11]_i_1__0_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => ram_wr_en_i,
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      I3 => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(9),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(11),
      I3 => \^q\(11),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(6),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__3\ : label is "soft_lutpair24";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[10]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__3_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__3_n_0\
    );
\count_value_i[11]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__3_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__3_n_0\
    );
\count_value_i[11]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__3_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[6]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__3_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__3_n_0\
    );
\count_value_i[6]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__3_n_0\
    );
\count_value_i[7]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__3_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__3_n_0\
    );
\count_value_i[8]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__3_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__3_n_0\
    );
\count_value_i[9]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__3_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__3_n_0\
    );
\count_value_i[9]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[10]_i_1__3_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[11]_i_1__3_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[6]_i_1__3_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[7]_i_1__3_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[8]_i_1__3_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[9]_i_1__3_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_wr_en_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__1\ : label is "soft_lutpair29";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[10]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__1_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__1_n_0\
    );
\count_value_i[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__1_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__1_n_0\
    );
\count_value_i[11]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__1_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__1_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[1]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__1_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__1_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__1_n_0\
    );
\count_value_i[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__1_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__1_n_0\
    );
\count_value_i[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_i,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[10]_i_1__1_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[11]_i_1__1_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[8]_i_1__1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[9]_i_1__1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__3\ : label is "soft_lutpair5";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[10]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__3_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__3_n_0\
    );
\count_value_i[11]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__3_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__3_n_0\
    );
\count_value_i[11]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__3_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[6]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__3_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__3_n_0\
    );
\count_value_i[6]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__3_n_0\
    );
\count_value_i[7]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__3_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__3_n_0\
    );
\count_value_i[8]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__3_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__3_n_0\
    );
\count_value_i[9]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__3_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__3_n_0\
    );
\count_value_i[9]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[10]_i_1__3_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[11]_i_1__3_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[6]_i_1__3_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[7]_i_1__3_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[8]_i_1__3_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[9]_i_1__3_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_6\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ram_wr_en_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_6\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[11]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__1\ : label is "soft_lutpair10";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[10]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i[11]_i_2__1_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => \^q\(10),
      O => \count_value_i[10]_i_1__1_n_0\
    );
\count_value_i[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count_value_i[11]_i_2__1_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(10),
      I5 => \^q\(11),
      O => \count_value_i[11]_i_1__1_n_0\
    );
\count_value_i[11]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__1_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[11]_i_2__1_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => \count_value_i_reg[1]_0\(0),
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[9]_i_2__1_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2__1_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1__1_n_0\
    );
\count_value_i[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__1_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__1_n_0\
    );
\count_value_i[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => ram_wr_en_i,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[10]_i_1__1_n_0\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[11]_i_1__1_n_0\,
      Q => \^q\(11),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[8]_i_1__1_n_0\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_i,
      D => \count_value_i[9]_i_1__1_n_0\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => clr_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_4 is
  port (
    rst_d1 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_4 : entity is "xpm_fifo_reg_bit";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_4 is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => clr_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    \syncstages_ff_reg[3]\ : out STD_LOGIC;
    ram_wr_en_i : out STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    going_full1 : in STD_LOGIC;
    going_afull : in STD_LOGIC;
    rst : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    \count_value_i_reg[11]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \^ram_wr_en_i\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_1\ : label is "soft_lutpair35";
begin
  \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0) <= \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0);
  ram_wr_en_i <= \^ram_wr_en_i\;
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F7000000F0"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0\,
      I1 => going_full1,
      I2 => going_afull,
      I3 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0\,
      I4 => rst,
      I5 => almost_full,
      O => \syncstages_ff_reg[3]\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^ram_wr_en_i\,
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      I1 => rst_d1,
      I2 => rst,
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0\
    );
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[11]\,
      I2 => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      I3 => rst_d1,
      O => \^ram_wr_en_i\
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_8 is
  port (
    \syncstages_ff_reg[3]\ : out STD_LOGIC;
    ram_wr_en_i : out STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    going_full1 : in STD_LOGIC;
    going_afull : in STD_LOGIC;
    rst : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    \count_value_i_reg[11]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_8 : entity is "xpm_fifo_rst";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_8 is
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \^ram_wr_en_i\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_1\ : label is "soft_lutpair16";
begin
  \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0) <= \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0);
  ram_wr_en_i <= \^ram_wr_en_i\;
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F7000000F0"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0\,
      I1 => going_full1,
      I2 => going_afull,
      I3 => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0\,
      I4 => rst,
      I5 => almost_full,
      O => \syncstages_ff_reg[3]\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^ram_wr_en_i\,
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0\
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      I1 => rst_d1,
      I2 => rst,
      O => \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0\
    );
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[11]\,
      I2 => \^gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0),
      I3 => rst_d1,
      O => \^ram_wr_en_i\
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 23 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 98304;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4096;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 24;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "p2_d16";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 17;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 2047;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "p2_d16";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 17;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 98304;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 17;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3\ : label is "soft_lutpair20";
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 2048;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 4095;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "p2_d16";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 17;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 2048;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 4095;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "p2_d16";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 17;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 98304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 2048;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 4095;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 17;
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3\ : label is "soft_lutpair20";
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 4095;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "p0_d6";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 18;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 23;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 4095;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "p0_d6";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 18;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 23;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 98304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 4095;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 18;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 23;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131\,
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130\,
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129\,
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128\,
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127\,
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126\,
      Q => doutb(23),
      R => rstb
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "FIRST",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 16) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED\(31 downto 16),
      CASDOUTB(15) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52\,
      CASDOUTB(14) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53\,
      CASDOUTB(13) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54\,
      CASDOUTB(12) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55\,
      CASDOUTB(11) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56\,
      CASDOUTB(10) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57\,
      CASDOUTB(9) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58\,
      CASDOUTB(8) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59\,
      CASDOUTB(7) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60\,
      CASDOUTB(6) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61\,
      CASDOUTB(5) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62\,
      CASDOUTB(4) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63\,
      CASDOUTB(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64\,
      CASDOUTB(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65\,
      CASDOUTB(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66\,
      CASDOUTB(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67\,
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED\(3 downto 2),
      CASDOUTPB(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138\,
      CASDOUTPB(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139\,
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0\,
      CASOUTSBITERR => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => dina(15 downto 0),
      DINBDIN(31 downto 0) => B"00000000000000001111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => dina(17 downto 16),
      DINPBDINP(3 downto 0) => B"0011",
      DOUTADOUT(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED\(31 downto 0),
      DOUTBDOUT(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED\(31 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0\,
      ENBWREN => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enb,
      I1 => addrb(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wea(0),
      I1 => addra(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "LAST",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 16) => B"0000000000000000",
      CASDINB(15) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52\,
      CASDINB(14) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53\,
      CASDINB(13) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54\,
      CASDINB(12) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55\,
      CASDINB(11) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56\,
      CASDINB(10) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57\,
      CASDINB(9) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58\,
      CASDINB(8) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59\,
      CASDINB(7) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60\,
      CASDINB(6) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61\,
      CASDINB(5) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62\,
      CASDINB(4) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63\,
      CASDINB(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64\,
      CASDINB(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65\,
      CASDINB(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66\,
      CASDINB(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67\,
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 2) => B"00",
      CASDINPB(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138\,
      CASDINPB(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139\,
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0\,
      CASINSBITERR => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1\,
      CASOREGIMUXA => '0',
      CASOREGIMUXB => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\,
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => enb,
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => dina(15 downto 0),
      DINBDIN(31 downto 0) => B"00000000000000001111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => dina(17 downto 16),
      DINPBDINP(3 downto 0) => B"0011",
      DOUTADOUT(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED\(31 downto 0),
      DOUTBDOUT(31 downto 16) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED\(31 downto 16),
      DOUTBDOUT(15 downto 0) => doutb(15 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED\(3 downto 2),
      DOUTPBDOUTP(1 downto 0) => doutb(17 downto 16),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => addra(11),
      ENBWREN => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addrb(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enb,
      I1 => addrb(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => addra(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_2\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 6) => B"00000000000000000000000000",
      DINADIN(5 downto 0) => dina(23 downto 18),
      DINBDIN(31 downto 0) => B"00000000000000000000000000111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED\(31 downto 0),
      DOUTBDOUT(31 downto 6) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED\(31 downto 6),
      DOUTBDOUT(5) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126\,
      DOUTBDOUT(4) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127\,
      DOUTBDOUT(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128\,
      DOUTBDOUT(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129\,
      DOUTBDOUT(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130\,
      DOUTBDOUT(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131\,
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 23 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 98304;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 4096;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 12;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 12;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 12;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 12;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ : entity is 24;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "p2_d16";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 17;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 2047;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "p2_d16";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 17;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 98304;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 17;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3\ : label is "soft_lutpair1";
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 2048;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 4095;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "p2_d16";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 17;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 2048;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 4095;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "p2_d16";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 17;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 98304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 2048;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 4095;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 17;
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3\ : label is "soft_lutpair1";
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 4095;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "p0_d6";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 18;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 23;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 4095;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "p0_d6";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 18;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 23;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 98304;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 4095;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 18;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_2\ : label is 23;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131\,
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130\,
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129\,
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128\,
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127\,
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126\,
      Q => doutb(23),
      R => rstb
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "FIRST",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 16) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED\(31 downto 16),
      CASDOUTB(15) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52\,
      CASDOUTB(14) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53\,
      CASDOUTB(13) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54\,
      CASDOUTB(12) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55\,
      CASDOUTB(11) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56\,
      CASDOUTB(10) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57\,
      CASDOUTB(9) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58\,
      CASDOUTB(8) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59\,
      CASDOUTB(7) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60\,
      CASDOUTB(6) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61\,
      CASDOUTB(5) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62\,
      CASDOUTB(4) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63\,
      CASDOUTB(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64\,
      CASDOUTB(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65\,
      CASDOUTB(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66\,
      CASDOUTB(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67\,
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED\(3 downto 2),
      CASDOUTPB(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138\,
      CASDOUTPB(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139\,
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0\,
      CASOUTSBITERR => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => dina(15 downto 0),
      DINBDIN(31 downto 0) => B"00000000000000001111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => dina(17 downto 16),
      DINPBDINP(3 downto 0) => B"0011",
      DOUTADOUT(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED\(31 downto 0),
      DOUTBDOUT(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED\(31 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0\,
      ENBWREN => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enb,
      I1 => addrb(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wea(0),
      I1 => addra(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "LAST",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 16) => B"0000000000000000",
      CASDINB(15) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52\,
      CASDINB(14) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53\,
      CASDINB(13) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54\,
      CASDINB(12) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55\,
      CASDINB(11) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56\,
      CASDINB(10) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57\,
      CASDINB(9) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58\,
      CASDINB(8) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59\,
      CASDINB(7) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60\,
      CASDINB(6) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61\,
      CASDINB(5) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62\,
      CASDINB(4) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63\,
      CASDINB(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64\,
      CASDINB(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65\,
      CASDINB(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66\,
      CASDINB(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67\,
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 2) => B"00",
      CASDINPB(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138\,
      CASDINPB(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139\,
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0\,
      CASINSBITERR => \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1\,
      CASOREGIMUXA => '0',
      CASOREGIMUXB => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\,
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => enb,
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => dina(15 downto 0),
      DINBDIN(31 downto 0) => B"00000000000000001111111111111111",
      DINPADINP(3 downto 2) => B"00",
      DINPADINP(1 downto 0) => dina(17 downto 16),
      DINPBDINP(3 downto 0) => B"0011",
      DOUTADOUT(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED\(31 downto 0),
      DOUTBDOUT(31 downto 16) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED\(31 downto 16),
      DOUTBDOUT(15 downto 0) => doutb(15 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED\(3 downto 2),
      DOUTPBDOUTP(1 downto 0) => doutb(17 downto 16),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => addra(11),
      ENBWREN => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addrb(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enb,
      I1 => addrb(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => addra(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_2\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '1',
      ADDRENB => '1',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 6) => B"00000000000000000000000000",
      DINADIN(5 downto 0) => dina(23 downto 18),
      DINBDIN(31 downto 0) => B"00000000000000000000000000111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED\(31 downto 0),
      DOUTBDOUT(31 downto 6) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED\(31 downto 6),
      DOUTBDOUT(5) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126\,
      DOUTBDOUT(4) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127\,
      DOUTBDOUT(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128\,
      DOUTBDOUT(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129\,
      DOUTBDOUT(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130\,
      DOUTBDOUT(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131\,
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => '1',
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 23 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0001100000001000";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4096;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 98304;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4096;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4091;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4091;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 13;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 13;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 12;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 24;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 825765944;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 24;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 13;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 13;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 12;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 12;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal \count_value_i__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal going_afull : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rdp_inst_n_15 : STD_LOGIC;
  signal rdp_inst_n_16 : STD_LOGIC;
  signal rdpp1_inst_n_12 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_10 : STD_LOGIC;
  signal wrpp1_inst_n_11 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal wrpp1_inst_n_9 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_10 : STD_LOGIC;
  signal wrpp2_inst_n_11 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_4 : STD_LOGIC;
  signal wrpp2_inst_n_5 : STD_LOGIC;
  signal wrpp2_inst_n_6 : STD_LOGIC;
  signal wrpp2_inst_n_7 : STD_LOGIC;
  signal wrpp2_inst_n_8 : STD_LOGIC;
  signal wrpp2_inst_n_9 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_0 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair37";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.gae_fwft.aempty_fwft_i_i_1\ : label is "soft_lutpair36";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 23;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 4095;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 98304;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 4096;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair36";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(12) <= \<const0>\;
  rd_data_count(11) <= \<const0>\;
  rd_data_count(10) <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(12) <= \<const0>\;
  wr_data_count(11) <= \<const0>\;
  wr_data_count(10) <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_2
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_2
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD4000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => \^almost_empty\,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_0,
      Q => \^almost_full\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_16,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_15,
      Q => full_n,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(11 downto 0) => wr_pntr_ext(11 downto 0),
      addrb(11 downto 0) => rd_pntr_ext(11 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(23 downto 0) => din(23 downto 0),
      dinb(23 downto 0) => B"000000000000000000000000",
      douta(23 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(23 downto 0),
      doutb(23 downto 0) => dout(23 downto 0),
      ena => '0',
      enb => rdpp1_inst_n_12,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_2,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_i,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\
     port map (
      Q(11 downto 0) => rd_pntr_ext(11 downto 0),
      clr_full => clr_full,
      \count_value_i_reg[0]_0\ => rdpp1_inst_n_12,
      \count_value_i_reg[11]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(11) => wrpp2_inst_n_0,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(10) => wrpp2_inst_n_1,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(9) => wrpp2_inst_n_2,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(8) => wrpp2_inst_n_3,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(7) => wrpp2_inst_n_4,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(6) => wrpp2_inst_n_5,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(5) => wrpp2_inst_n_6,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(4) => wrpp2_inst_n_7,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(3) => wrpp2_inst_n_8,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(2) => wrpp2_inst_n_9,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(1) => wrpp2_inst_n_10,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(0) => wrpp2_inst_n_11,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_15,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rdp_inst_n_16,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(11) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(10) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(9) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(8) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(7) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(6) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(5) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(4) => wrpp1_inst_n_7,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(3) => wrpp1_inst_n_8,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(2) => wrpp1_inst_n_9,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(1) => wrpp1_inst_n_10,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(0) => wrpp1_inst_n_11,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(11 downto 0) => wr_pntr_ext(11 downto 0),
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      going_afull => going_afull,
      going_full1 => going_full1,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_wr_en_i => ram_wr_en_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\
     port map (
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdpp1_inst_n_12,
      Q(11 downto 0) => \count_value_i__0\(11 downto 0),
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_2,
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      Q(0) => xpm_fifo_rst_inst_n_2,
      clr_full => clr_full,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_0\
     port map (
      Q(11 downto 0) => wr_pntr_ext(11 downto 0),
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(11 downto 0) => \count_value_i__0\(11 downto 0),
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdpp1_inst_n_12,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      ram_wr_en_i => ram_wr_en_i,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_1\
     port map (
      Q(11) => wrpp1_inst_n_0,
      Q(10) => wrpp1_inst_n_1,
      Q(9) => wrpp1_inst_n_2,
      Q(8) => wrpp1_inst_n_3,
      Q(7) => wrpp1_inst_n_4,
      Q(6) => wrpp1_inst_n_5,
      Q(5) => wrpp1_inst_n_6,
      Q(4) => wrpp1_inst_n_7,
      Q(3) => wrpp1_inst_n_8,
      Q(2) => wrpp1_inst_n_9,
      Q(1) => wrpp1_inst_n_10,
      Q(0) => wrpp1_inst_n_11,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      ram_wr_en_i => ram_wr_en_i,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp2_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      Q(11) => wrpp2_inst_n_0,
      Q(10) => wrpp2_inst_n_1,
      Q(9) => wrpp2_inst_n_2,
      Q(8) => wrpp2_inst_n_3,
      Q(7) => wrpp2_inst_n_4,
      Q(6) => wrpp2_inst_n_5,
      Q(5) => wrpp2_inst_n_6,
      Q(4) => wrpp2_inst_n_7,
      Q(3) => wrpp2_inst_n_8,
      Q(2) => wrpp2_inst_n_9,
      Q(1) => wrpp2_inst_n_10,
      Q(0) => wrpp2_inst_n_11,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      ram_wr_en_i => ram_wr_en_i,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      almost_full => \^almost_full\,
      \count_value_i_reg[11]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0) => xpm_fifo_rst_inst_n_2,
      going_afull => going_afull,
      going_full1 => going_full1,
      ram_empty_i => ram_empty_i,
      ram_wr_en_i => ram_wr_en_i,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      \syncstages_ff_reg[3]\ => xpm_fifo_rst_inst_n_0,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 23 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "16'b0001100000001000";
  attribute EN_AE : string;
  attribute EN_AE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 4096;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 98304;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 4096;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 4091;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 4091;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 11;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 13;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 13;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 12;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 24;
  attribute READ_MODE : integer;
  attribute READ_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 825765944;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 24;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 13;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 13;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 12;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 12;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 3;
  attribute invalid : integer;
  attribute invalid of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ : entity is 1;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal \count_value_i__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal going_afull : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rdp_inst_n_15 : STD_LOGIC;
  signal rdp_inst_n_16 : STD_LOGIC;
  signal rdpp1_inst_n_12 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_10 : STD_LOGIC;
  signal wrpp1_inst_n_11 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal wrpp1_inst_n_9 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_10 : STD_LOGIC;
  signal wrpp2_inst_n_11 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_4 : STD_LOGIC;
  signal wrpp2_inst_n_5 : STD_LOGIC;
  signal wrpp2_inst_n_6 : STD_LOGIC;
  signal wrpp2_inst_n_7 : STD_LOGIC;
  signal wrpp2_inst_n_8 : STD_LOGIC;
  signal wrpp2_inst_n_9 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_0 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.gae_fwft.aempty_fwft_i_i_1\ : label is "soft_lutpair17";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 23;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 4095;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 98304;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 4096;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 24;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair17";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(12) <= \<const0>\;
  rd_data_count(11) <= \<const0>\;
  rd_data_count(10) <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(12) <= \<const0>\;
  wr_data_count(11) <= \<const0>\;
  wr_data_count(10) <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_2
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_2
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD4000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => \^almost_empty\,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.gaf_cc.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_0,
      Q => \^almost_full\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_16,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_15,
      Q => full_n,
      R => xpm_fifo_rst_inst_n_2
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_2
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2\
     port map (
      addra(11 downto 0) => wr_pntr_ext(11 downto 0),
      addrb(11 downto 0) => rd_pntr_ext(11 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(23 downto 0) => din(23 downto 0),
      dinb(23 downto 0) => B"000000000000000000000000",
      douta(23 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(23 downto 0),
      doutb(23 downto 0) => dout(23 downto 0),
      ena => '0',
      enb => rdpp1_inst_n_12,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_2,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_i,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\
     port map (
      Q(11 downto 0) => rd_pntr_ext(11 downto 0),
      clr_full => clr_full,
      \count_value_i_reg[0]_0\ => rdpp1_inst_n_12,
      \count_value_i_reg[11]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(11) => wrpp2_inst_n_0,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(10) => wrpp2_inst_n_1,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(9) => wrpp2_inst_n_2,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(8) => wrpp2_inst_n_3,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(7) => wrpp2_inst_n_4,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(6) => wrpp2_inst_n_5,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(5) => wrpp2_inst_n_6,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(4) => wrpp2_inst_n_7,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(3) => wrpp2_inst_n_8,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(2) => wrpp2_inst_n_9,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(1) => wrpp2_inst_n_10,
      \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0\(0) => wrpp2_inst_n_11,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_15,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rdp_inst_n_16,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(11) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(10) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(9) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(8) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(7) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(6) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(5) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(4) => wrpp1_inst_n_7,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(3) => wrpp1_inst_n_8,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(2) => wrpp1_inst_n_9,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(1) => wrpp1_inst_n_10,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0\(0) => wrpp1_inst_n_11,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0\(11 downto 0) => wr_pntr_ext(11 downto 0),
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      going_afull => going_afull,
      going_full1 => going_full1,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_wr_en_i => ram_wr_en_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\
     port map (
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdpp1_inst_n_12,
      Q(11 downto 0) => \count_value_i__0\(11 downto 0),
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_2,
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_4
     port map (
      Q(0) => xpm_fifo_rst_inst_n_2,
      clr_full => clr_full,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_5\
     port map (
      Q(11 downto 0) => wr_pntr_ext(11 downto 0),
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.ram_empty_i_i_2_0\(11 downto 0) => \count_value_i__0\(11 downto 0),
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdpp1_inst_n_12,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      ram_wr_en_i => ram_wr_en_i,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_6\
     port map (
      Q(11) => wrpp1_inst_n_0,
      Q(10) => wrpp1_inst_n_1,
      Q(9) => wrpp1_inst_n_2,
      Q(8) => wrpp1_inst_n_3,
      Q(7) => wrpp1_inst_n_4,
      Q(6) => wrpp1_inst_n_5,
      Q(5) => wrpp1_inst_n_6,
      Q(4) => wrpp1_inst_n_7,
      Q(3) => wrpp1_inst_n_8,
      Q(2) => wrpp1_inst_n_9,
      Q(1) => wrpp1_inst_n_10,
      Q(0) => wrpp1_inst_n_11,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      ram_wr_en_i => ram_wr_en_i,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp2_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\
     port map (
      Q(11) => wrpp2_inst_n_0,
      Q(10) => wrpp2_inst_n_1,
      Q(9) => wrpp2_inst_n_2,
      Q(8) => wrpp2_inst_n_3,
      Q(7) => wrpp2_inst_n_4,
      Q(6) => wrpp2_inst_n_5,
      Q(5) => wrpp2_inst_n_6,
      Q(4) => wrpp2_inst_n_7,
      Q(3) => wrpp2_inst_n_8,
      Q(2) => wrpp2_inst_n_9,
      Q(1) => wrpp2_inst_n_10,
      Q(0) => wrpp2_inst_n_11,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_2,
      \count_value_i_reg[5]_0\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      ram_wr_en_i => ram_wr_en_i,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_8
     port map (
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      almost_full => \^almost_full\,
      \count_value_i_reg[11]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0\(0) => xpm_fifo_rst_inst_n_2,
      going_afull => going_afull,
      going_full1 => going_full1,
      ram_empty_i => ram_empty_i,
      ram_wr_en_i => ram_wr_en_i,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      \syncstages_ff_reg[3]\ => xpm_fifo_rst_inst_n_0,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 12 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 12 downto 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 24;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 24;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 3;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "16'b0001100000001000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "16'b0001100000001000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "1'b1";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "1'b1";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 4096;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "block";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 12;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 13;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 16;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 16;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 22;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 21;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 20;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 18;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 4073;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 23;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 825765944;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 825765944;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is 13;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis : entity is "true";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis is
  signal \<const0>\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal xpm_fifo_base_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 4;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001100000001000";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 4096;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 98304;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 4096;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 4091;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 4091;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 5;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 11;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 13;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 13;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 12;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 24;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is 825765944;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 24;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 13;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 13;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 12;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 12;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 5;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  dbiterr_axis <= \<const0>\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  prog_empty_axis <= \<const0>\;
  prog_full_axis <= \<const0>\;
  rd_data_count_axis(12) <= \<const0>\;
  rd_data_count_axis(11) <= \<const0>\;
  rd_data_count_axis(10) <= \<const0>\;
  rd_data_count_axis(9) <= \<const0>\;
  rd_data_count_axis(8) <= \<const0>\;
  rd_data_count_axis(7) <= \<const0>\;
  rd_data_count_axis(6) <= \<const0>\;
  rd_data_count_axis(5) <= \<const0>\;
  rd_data_count_axis(4) <= \<const0>\;
  rd_data_count_axis(3) <= \<const0>\;
  rd_data_count_axis(2) <= \<const0>\;
  rd_data_count_axis(1) <= \<const0>\;
  rd_data_count_axis(0) <= \<const0>\;
  sbiterr_axis <= \<const0>\;
  wr_data_count_axis(12) <= \<const0>\;
  wr_data_count_axis(11) <= \<const0>\;
  wr_data_count_axis(10) <= \<const0>\;
  wr_data_count_axis(9) <= \<const0>\;
  wr_data_count_axis(8) <= \<const0>\;
  wr_data_count_axis(7) <= \<const0>\;
  wr_data_count_axis(6) <= \<const0>\;
  wr_data_count_axis(5) <= \<const0>\;
  wr_data_count_axis(4) <= \<const0>\;
  wr_data_count_axis(3) <= \<const0>\;
  wr_data_count_axis(2) <= \<const0>\;
  wr_data_count_axis(1) <= \<const0>\;
  wr_data_count_axis(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
xpm_fifo_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => almost_empty_axis,
      almost_full => almost_full_axis,
      data_valid => \^m_axis_tvalid\,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(23) => s_axis_tlast,
      din(22) => s_axis_tuser(0),
      din(21) => s_axis_tdest(0),
      din(20) => s_axis_tid(0),
      din(19 downto 18) => s_axis_tkeep(1 downto 0),
      din(17 downto 16) => s_axis_tstrb(1 downto 0),
      din(15 downto 0) => s_axis_tdata(15 downto 0),
      dout(23) => m_axis_tlast,
      dout(22) => m_axis_tuser(0),
      dout(21) => m_axis_tdest(0),
      dout(20) => m_axis_tid(0),
      dout(19 downto 18) => m_axis_tkeep(1 downto 0),
      dout(17 downto 16) => m_axis_tstrb(1 downto 0),
      dout(15 downto 0) => m_axis_tdata(15 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => s_axis_tready,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => '0',
      rd_data_count(12 downto 0) => NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED(12 downto 0),
      rd_en => xpm_fifo_base_inst_i_1_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(12 downto 0) => NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED(12 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => xpm_fifo_base_inst_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 12 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 12 downto 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 24;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 24;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 3;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "16'b0001100000001000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "16'b0001100000001000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "1'b1";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "1'b1";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 4096;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "block";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 12;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "xpm_fifo_axis";
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 13;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 16;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 16;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 22;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 21;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 20;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 18;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 4073;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 23;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 825765944;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 825765944;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is 13;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ : entity is "true";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal xpm_fifo_base_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 4;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001100000001000";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 4096;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 98304;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 4096;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 4091;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 4091;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 5;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 11;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 13;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 13;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 12;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 24;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is 825765944;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 24;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 13;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 13;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 12;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 12;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 5;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  dbiterr_axis <= \<const0>\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  prog_empty_axis <= \<const0>\;
  prog_full_axis <= \<const0>\;
  rd_data_count_axis(12) <= \<const0>\;
  rd_data_count_axis(11) <= \<const0>\;
  rd_data_count_axis(10) <= \<const0>\;
  rd_data_count_axis(9) <= \<const0>\;
  rd_data_count_axis(8) <= \<const0>\;
  rd_data_count_axis(7) <= \<const0>\;
  rd_data_count_axis(6) <= \<const0>\;
  rd_data_count_axis(5) <= \<const0>\;
  rd_data_count_axis(4) <= \<const0>\;
  rd_data_count_axis(3) <= \<const0>\;
  rd_data_count_axis(2) <= \<const0>\;
  rd_data_count_axis(1) <= \<const0>\;
  rd_data_count_axis(0) <= \<const0>\;
  sbiterr_axis <= \<const0>\;
  wr_data_count_axis(12) <= \<const0>\;
  wr_data_count_axis(11) <= \<const0>\;
  wr_data_count_axis(10) <= \<const0>\;
  wr_data_count_axis(9) <= \<const0>\;
  wr_data_count_axis(8) <= \<const0>\;
  wr_data_count_axis(7) <= \<const0>\;
  wr_data_count_axis(6) <= \<const0>\;
  wr_data_count_axis(5) <= \<const0>\;
  wr_data_count_axis(4) <= \<const0>\;
  wr_data_count_axis(3) <= \<const0>\;
  wr_data_count_axis(2) <= \<const0>\;
  wr_data_count_axis(1) <= \<const0>\;
  wr_data_count_axis(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
xpm_fifo_base_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2\
     port map (
      almost_empty => almost_empty_axis,
      almost_full => almost_full_axis,
      data_valid => \^m_axis_tvalid\,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(23) => s_axis_tlast,
      din(22) => s_axis_tuser(0),
      din(21) => s_axis_tdest(0),
      din(20) => s_axis_tid(0),
      din(19 downto 18) => s_axis_tkeep(1 downto 0),
      din(17 downto 16) => s_axis_tstrb(1 downto 0),
      din(15 downto 0) => s_axis_tdata(15 downto 0),
      dout(23) => m_axis_tlast,
      dout(22) => m_axis_tuser(0),
      dout(21) => m_axis_tdest(0),
      dout(20) => m_axis_tid(0),
      dout(19 downto 18) => m_axis_tkeep(1 downto 0),
      dout(17 downto 16) => m_axis_tstrb(1 downto 0),
      dout(15 downto 0) => m_axis_tdata(15 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => s_axis_tready,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => '0',
      rd_data_count(12 downto 0) => NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED(12 downto 0),
      rd_en => xpm_fifo_base_inst_i_1_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(12 downto 0) => NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED(12 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => xpm_fifo_base_inst_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top is
  signal \gen_fifo.xpm_fifo_axis_inst_n_0\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_26\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_27\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_28\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_29\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_30\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_31\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_32\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_33\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_34\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_35\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_36\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_37\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_38\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_39\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_40\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_41\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_42\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_43\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_44\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_45\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_46\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_47\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_48\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_49\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_50\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_51\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_52\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_53\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_54\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_55\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_56\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_57\ : STD_LOGIC;
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 24;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 24;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \gen_fifo.xpm_fifo_axis_inst\ : label is 3;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001100000001000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001100000001000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b1";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b1";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 4096;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is "block";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is 12;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of \gen_fifo.xpm_fifo_axis_inst\ : label is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 13;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 16;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 16;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 22;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 21;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 20;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 18;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 4073;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 23;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of \gen_fifo.xpm_fifo_axis_inst\ : label is 825765944;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is 825765944;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 13;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_fifo.xpm_fifo_axis_inst\ : label is "TRUE";
begin
\gen_fifo.xpm_fifo_axis_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis
     port map (
      almost_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_55\,
      almost_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_40\,
      dbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_57\,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => s_axis_aclk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tdest(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\(0),
      m_axis_tid(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\(0),
      m_axis_tkeep(1 downto 0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\(1 downto 0),
      m_axis_tlast => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tlast_UNCONNECTED\,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(1 downto 0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\(1 downto 0),
      m_axis_tuser(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED\(0),
      m_axis_tvalid => m_axis_tvalid,
      prog_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_41\,
      prog_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_26\,
      rd_data_count_axis(12) => \gen_fifo.xpm_fifo_axis_inst_n_42\,
      rd_data_count_axis(11) => \gen_fifo.xpm_fifo_axis_inst_n_43\,
      rd_data_count_axis(10) => \gen_fifo.xpm_fifo_axis_inst_n_44\,
      rd_data_count_axis(9) => \gen_fifo.xpm_fifo_axis_inst_n_45\,
      rd_data_count_axis(8) => \gen_fifo.xpm_fifo_axis_inst_n_46\,
      rd_data_count_axis(7) => \gen_fifo.xpm_fifo_axis_inst_n_47\,
      rd_data_count_axis(6) => \gen_fifo.xpm_fifo_axis_inst_n_48\,
      rd_data_count_axis(5) => \gen_fifo.xpm_fifo_axis_inst_n_49\,
      rd_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_50\,
      rd_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_51\,
      rd_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_52\,
      rd_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_53\,
      rd_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_54\,
      s_aclk => s_axis_aclk,
      s_aresetn => s_axis_aresetn,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(1 downto 0) => B"00",
      s_axis_tlast => '0',
      s_axis_tready => \gen_fifo.xpm_fifo_axis_inst_n_0\,
      s_axis_tstrb(1 downto 0) => B"00",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_56\,
      wr_data_count_axis(12) => \gen_fifo.xpm_fifo_axis_inst_n_27\,
      wr_data_count_axis(11) => \gen_fifo.xpm_fifo_axis_inst_n_28\,
      wr_data_count_axis(10) => \gen_fifo.xpm_fifo_axis_inst_n_29\,
      wr_data_count_axis(9) => \gen_fifo.xpm_fifo_axis_inst_n_30\,
      wr_data_count_axis(8) => \gen_fifo.xpm_fifo_axis_inst_n_31\,
      wr_data_count_axis(7) => \gen_fifo.xpm_fifo_axis_inst_n_32\,
      wr_data_count_axis(6) => \gen_fifo.xpm_fifo_axis_inst_n_33\,
      wr_data_count_axis(5) => \gen_fifo.xpm_fifo_axis_inst_n_34\,
      wr_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_35\,
      wr_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_36\,
      wr_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_37\,
      wr_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_38\,
      wr_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_39\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top__xdcDup__1\ is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top__xdcDup__1\ : entity is "axis_data_fifo_v2_0_7_top";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top__xdcDup__1\ is
  signal \gen_fifo.xpm_fifo_axis_inst_n_0\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_26\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_27\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_28\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_29\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_30\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_31\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_32\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_33\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_34\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_35\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_36\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_37\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_38\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_39\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_40\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_41\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_42\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_43\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_44\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_45\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_46\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_47\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_48\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_49\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_50\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_51\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_52\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_53\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_54\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_55\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_56\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_57\ : STD_LOGIC;
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 24;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 24;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \gen_fifo.xpm_fifo_axis_inst\ : label is 3;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001100000001000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001100000001000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b1";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b1";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 4096;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is "block";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is 12;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of \gen_fifo.xpm_fifo_axis_inst\ : label is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 13;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 16;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 16;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 22;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 21;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 20;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 18;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 4073;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 23;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of \gen_fifo.xpm_fifo_axis_inst\ : label is 825765944;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is 825765944;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 13;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_fifo.xpm_fifo_axis_inst\ : label is "TRUE";
begin
\gen_fifo.xpm_fifo_axis_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1\
     port map (
      almost_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_55\,
      almost_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_40\,
      dbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_57\,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => s_axis_aclk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tdest(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\(0),
      m_axis_tid(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\(0),
      m_axis_tkeep(1 downto 0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\(1 downto 0),
      m_axis_tlast => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tlast_UNCONNECTED\,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(1 downto 0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\(1 downto 0),
      m_axis_tuser(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED\(0),
      m_axis_tvalid => m_axis_tvalid,
      prog_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_41\,
      prog_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_26\,
      rd_data_count_axis(12) => \gen_fifo.xpm_fifo_axis_inst_n_42\,
      rd_data_count_axis(11) => \gen_fifo.xpm_fifo_axis_inst_n_43\,
      rd_data_count_axis(10) => \gen_fifo.xpm_fifo_axis_inst_n_44\,
      rd_data_count_axis(9) => \gen_fifo.xpm_fifo_axis_inst_n_45\,
      rd_data_count_axis(8) => \gen_fifo.xpm_fifo_axis_inst_n_46\,
      rd_data_count_axis(7) => \gen_fifo.xpm_fifo_axis_inst_n_47\,
      rd_data_count_axis(6) => \gen_fifo.xpm_fifo_axis_inst_n_48\,
      rd_data_count_axis(5) => \gen_fifo.xpm_fifo_axis_inst_n_49\,
      rd_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_50\,
      rd_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_51\,
      rd_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_52\,
      rd_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_53\,
      rd_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_54\,
      s_aclk => s_axis_aclk,
      s_aresetn => s_axis_aresetn,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(1 downto 0) => B"00",
      s_axis_tlast => '0',
      s_axis_tready => \gen_fifo.xpm_fifo_axis_inst_n_0\,
      s_axis_tstrb(1 downto 0) => B"00",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_56\,
      wr_data_count_axis(12) => \gen_fifo.xpm_fifo_axis_inst_n_27\,
      wr_data_count_axis(11) => \gen_fifo.xpm_fifo_axis_inst_n_28\,
      wr_data_count_axis(10) => \gen_fifo.xpm_fifo_axis_inst_n_29\,
      wr_data_count_axis(9) => \gen_fifo.xpm_fifo_axis_inst_n_30\,
      wr_data_count_axis(8) => \gen_fifo.xpm_fifo_axis_inst_n_31\,
      wr_data_count_axis(7) => \gen_fifo.xpm_fifo_axis_inst_n_32\,
      wr_data_count_axis(6) => \gen_fifo.xpm_fifo_axis_inst_n_33\,
      wr_data_count_axis(5) => \gen_fifo.xpm_fifo_axis_inst_n_34\,
      wr_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_35\,
      wr_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_36\,
      wr_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_37\,
      wr_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_38\,
      wr_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_39\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    almost_empty : out STD_LOGIC;
    almost_full : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter : entity is "axis_data_fifo_poly_filter,axis_data_fifo_v2_0_7_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter : entity is "axis_data_fifo_v2_0_7_top,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_CLKIF CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axis_aclk : signal is "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_RSTIF RST";
  attribute x_interface_parameter of s_axis_aresetn : signal is "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  s_axis_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top
     port map (
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter__xdcDup__1\ is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    almost_empty : out STD_LOGIC;
    almost_full : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter__xdcDup__1\ : entity is "axis_data_fifo_poly_filter,axis_data_fifo_v2_0_7_top,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter__xdcDup__1\ : entity is "axis_data_fifo_poly_filter";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter__xdcDup__1\ : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter__xdcDup__1\ : entity is "axis_data_fifo_v2_0_7_top,Vivado 2021.2";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter__xdcDup__1\ is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_CLKIF CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axis_aclk : signal is "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_RSTIF RST";
  attribute x_interface_parameter of s_axis_aresetn : signal is "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  s_axis_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top__xdcDup__1\
     port map (
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    FIFO_reset : in STD_LOGIC;
    input_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    data_out_I : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CONVERSION_FACTOR : integer;
  attribute CONVERSION_FACTOR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter : entity is 4;
  attribute DATA_WIDTH : integer;
  attribute DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter : entity is 16;
  attribute DECIMATION_FILTER : string;
  attribute DECIMATION_FILTER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter : entity is "FALSE";
  attribute FILTER_TAPS : integer;
  attribute FILTER_TAPS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter : entity is 16;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter is
  signal \ARG__0_n_100\ : STD_LOGIC;
  signal \ARG__0_n_101\ : STD_LOGIC;
  signal \ARG__0_n_102\ : STD_LOGIC;
  signal \ARG__0_n_103\ : STD_LOGIC;
  signal \ARG__0_n_104\ : STD_LOGIC;
  signal \ARG__0_n_105\ : STD_LOGIC;
  signal \ARG__0_n_74\ : STD_LOGIC;
  signal \ARG__0_n_75\ : STD_LOGIC;
  signal \ARG__0_n_76\ : STD_LOGIC;
  signal \ARG__0_n_77\ : STD_LOGIC;
  signal \ARG__0_n_78\ : STD_LOGIC;
  signal \ARG__0_n_79\ : STD_LOGIC;
  signal \ARG__0_n_80\ : STD_LOGIC;
  signal \ARG__0_n_81\ : STD_LOGIC;
  signal \ARG__0_n_82\ : STD_LOGIC;
  signal \ARG__0_n_83\ : STD_LOGIC;
  signal \ARG__0_n_84\ : STD_LOGIC;
  signal \ARG__0_n_85\ : STD_LOGIC;
  signal \ARG__0_n_86\ : STD_LOGIC;
  signal \ARG__0_n_87\ : STD_LOGIC;
  signal \ARG__0_n_88\ : STD_LOGIC;
  signal \ARG__0_n_89\ : STD_LOGIC;
  signal \ARG__0_n_90\ : STD_LOGIC;
  signal \ARG__0_n_91\ : STD_LOGIC;
  signal \ARG__0_n_92\ : STD_LOGIC;
  signal \ARG__0_n_93\ : STD_LOGIC;
  signal \ARG__0_n_94\ : STD_LOGIC;
  signal \ARG__0_n_95\ : STD_LOGIC;
  signal \ARG__0_n_96\ : STD_LOGIC;
  signal \ARG__0_n_97\ : STD_LOGIC;
  signal \ARG__0_n_98\ : STD_LOGIC;
  signal \ARG__0_n_99\ : STD_LOGIC;
  signal \ARG__1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_Q_n_1 : STD_LOGIC;
  signal axis_data_fifo_Q_n_10 : STD_LOGIC;
  signal axis_data_fifo_Q_n_11 : STD_LOGIC;
  signal axis_data_fifo_Q_n_12 : STD_LOGIC;
  signal axis_data_fifo_Q_n_13 : STD_LOGIC;
  signal axis_data_fifo_Q_n_14 : STD_LOGIC;
  signal axis_data_fifo_Q_n_15 : STD_LOGIC;
  signal axis_data_fifo_Q_n_16 : STD_LOGIC;
  signal axis_data_fifo_Q_n_17 : STD_LOGIC;
  signal axis_data_fifo_Q_n_2 : STD_LOGIC;
  signal axis_data_fifo_Q_n_3 : STD_LOGIC;
  signal axis_data_fifo_Q_n_4 : STD_LOGIC;
  signal axis_data_fifo_Q_n_5 : STD_LOGIC;
  signal axis_data_fifo_Q_n_6 : STD_LOGIC;
  signal axis_data_fifo_Q_n_7 : STD_LOGIC;
  signal axis_data_fifo_Q_n_8 : STD_LOGIC;
  signal axis_data_fifo_Q_n_9 : STD_LOGIC;
  signal \coeff[3]\ : STD_LOGIC_VECTOR ( 14 downto 10 );
  signal \coeff[7]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \coeff_reg[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[1][14]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[3][13]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg_reg[0]\ : STD_LOGIC_VECTOR ( 14 downto 9 );
  signal \coeff_reg_reg[1]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \coeff_reg_reg[2]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \coeff_reg_reg[3]\ : STD_LOGIC_VECTOR ( 13 to 13 );
  signal \data_out_I[0]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[0]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[0]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[0]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[0]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[0]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[0]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[0]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[10]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[10]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[10]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[10]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[10]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[10]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[10]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[10]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[11]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[11]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[11]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[11]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[11]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[11]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[11]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[11]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[12]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[12]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[12]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[12]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[12]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[12]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[12]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[12]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[13]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[13]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[13]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[13]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[13]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[13]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[13]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[13]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[14]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[14]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[14]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[14]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[14]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[14]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[14]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[14]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[15]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[15]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[15]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[15]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[15]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[15]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[15]_i_16_n_0\ : STD_LOGIC;
  signal \data_out_I[15]_i_17_n_0\ : STD_LOGIC;
  signal \data_out_I[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_I[1]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[1]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[1]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[2]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[2]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[2]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[2]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[2]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[2]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[2]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[2]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[3]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[3]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[3]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[3]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[3]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[3]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[3]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[3]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[4]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[4]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[4]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[4]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[4]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[4]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[4]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[4]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[5]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[5]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[5]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[5]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[5]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[5]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[5]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[5]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[6]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[6]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[6]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[6]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[6]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[6]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[6]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[6]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[7]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[7]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[7]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[7]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[7]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[7]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[7]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[7]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[8]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[8]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[8]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[8]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[8]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[8]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[8]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[8]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I[9]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_I[9]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_I[9]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_I[9]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_I[9]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_I[9]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_I[9]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I[9]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[10]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[12]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[13]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[13]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[13]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[14]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[14]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_I_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q[0]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[0]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[0]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[0]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[0]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[0]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[0]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[0]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[10]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[10]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[10]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[10]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[10]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[10]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[10]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[10]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[11]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[11]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[11]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[11]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[11]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[11]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[11]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[11]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[12]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[12]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[12]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[12]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[12]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[12]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[12]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[12]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[13]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[13]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[13]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[13]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[13]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[13]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[13]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[13]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[14]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[14]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[14]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[14]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[14]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[14]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[14]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[14]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[15]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[15]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[15]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[15]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[15]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[15]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[15]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[15]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[1]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[1]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[1]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[2]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[2]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[2]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[2]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[2]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[2]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[2]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[2]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[3]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[3]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[3]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[3]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[3]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[3]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[3]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[3]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[4]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[4]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[4]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[4]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[4]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[4]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[4]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[4]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[5]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[5]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[5]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[5]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[5]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[5]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[5]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[5]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[6]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[6]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[6]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[6]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[6]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[6]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[6]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[6]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[7]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[7]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[7]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[7]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[7]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[7]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[7]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[7]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[8]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[8]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[8]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[8]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[8]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[8]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[8]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[8]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q[9]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_Q[9]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_Q[9]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_Q[9]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_Q[9]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_Q[9]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_Q[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_Q[9]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_Q[9]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[10]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[12]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[13]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[13]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[13]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[14]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[14]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_Q_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal data_out_valid_i_10_n_0 : STD_LOGIC;
  signal data_out_valid_i_11_n_0 : STD_LOGIC;
  signal data_out_valid_i_12_n_0 : STD_LOGIC;
  signal data_out_valid_i_13_n_0 : STD_LOGIC;
  signal data_out_valid_i_14_n_0 : STD_LOGIC;
  signal data_out_valid_i_15_n_0 : STD_LOGIC;
  signal data_out_valid_i_16_n_0 : STD_LOGIC;
  signal data_out_valid_i_17_n_0 : STD_LOGIC;
  signal data_out_valid_i_18_n_0 : STD_LOGIC;
  signal data_out_valid_i_1_n_0 : STD_LOGIC;
  signal data_out_valid_i_4_n_0 : STD_LOGIC;
  signal data_out_valid_i_5_n_0 : STD_LOGIC;
  signal data_out_valid_i_6_n_0 : STD_LOGIC;
  signal data_out_valid_i_7_n_0 : STD_LOGIC;
  signal data_out_valid_i_8_n_0 : STD_LOGIC;
  signal data_out_valid_i_9_n_0 : STD_LOGIC;
  signal data_out_valid_reg_i_2_n_3 : STD_LOGIC;
  signal data_out_valid_reg_i_2_n_4 : STD_LOGIC;
  signal data_out_valid_reg_i_2_n_5 : STD_LOGIC;
  signal data_out_valid_reg_i_2_n_6 : STD_LOGIC;
  signal data_out_valid_reg_i_2_n_7 : STD_LOGIC;
  signal data_out_valid_reg_i_3_n_0 : STD_LOGIC;
  signal data_out_valid_reg_i_3_n_1 : STD_LOGIC;
  signal data_out_valid_reg_i_3_n_2 : STD_LOGIC;
  signal data_out_valid_reg_i_3_n_3 : STD_LOGIC;
  signal data_out_valid_reg_i_3_n_4 : STD_LOGIC;
  signal data_out_valid_reg_i_3_n_5 : STD_LOGIC;
  signal data_out_valid_reg_i_3_n_6 : STD_LOGIC;
  signal data_out_valid_reg_i_3_n_7 : STD_LOGIC;
  signal filter2fifo_ready1 : STD_LOGIC;
  signal filter2fifo_ready_i_1_n_0 : STD_LOGIC;
  signal filter2fifo_ready_reg_n_0 : STD_LOGIC;
  signal m_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m_axis_tvalid : STD_LOGIC;
  signal \mul_reg_I_reg[10]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[11]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[11]0_n_100\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_101\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_102\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_103\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_104\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_105\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_70\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_71\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_72\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_73\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_74\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_75\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_76\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_77\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_78\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_79\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_80\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_81\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_82\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_83\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_84\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_85\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_86\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_87\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_88\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_89\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_90\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_91\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_92\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_93\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_94\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_95\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_96\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_97\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_98\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_99\ : STD_LOGIC;
  signal \mul_reg_I_reg[12]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[13]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[14]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[14][35]_i_2_n_0\ : STD_LOGIC;
  signal \mul_reg_I_reg[15]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_I_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_I_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_I_reg[3]0_n_100\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_101\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_102\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_103\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_104\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_105\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_70\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_71\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_72\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_73\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_74\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_75\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_76\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_77\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_78\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_79\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_80\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_81\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_82\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_83\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_84\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_85\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_86\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_87\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_88\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_89\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_90\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_91\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_92\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_93\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_94\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_95\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_96\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_97\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_98\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_99\ : STD_LOGIC;
  signal \mul_reg_I_reg[4]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[5]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[6]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[7]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[7]0_n_100\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_101\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_102\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_103\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_104\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_105\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_70\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_71\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_72\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_73\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_74\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_75\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_76\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_77\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_78\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_79\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_80\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_81\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_82\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_83\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_84\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_85\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_86\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_87\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_88\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_89\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_90\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_91\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_92\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_93\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_94\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_95\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_96\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_97\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_98\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_99\ : STD_LOGIC;
  signal \mul_reg_I_reg[8]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[9]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \mul_reg_I_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \mul_reg_Q_reg[10]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[11]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[11]0_n_100\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_101\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_102\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_103\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_104\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_105\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_70\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_71\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_72\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_73\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_74\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_75\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_76\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_77\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_78\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_79\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_80\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_81\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_82\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_83\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_84\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_85\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_86\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_87\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_88\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_89\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_90\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_91\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_92\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_93\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_94\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_95\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_96\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_97\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_98\ : STD_LOGIC;
  signal \mul_reg_Q_reg[11]0_n_99\ : STD_LOGIC;
  signal \mul_reg_Q_reg[12]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[13]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[14]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[14][35]_i_2_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_Q_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_Q_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_Q_reg[3]0_n_100\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_101\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_102\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_103\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_104\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_105\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_70\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_71\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_72\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_73\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_74\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_75\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_76\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_77\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_78\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_79\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_80\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_81\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_82\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_83\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_84\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_85\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_86\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_87\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_88\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_89\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_90\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_91\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_92\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_93\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_94\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_95\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_96\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_97\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_98\ : STD_LOGIC;
  signal \mul_reg_Q_reg[3]0_n_99\ : STD_LOGIC;
  signal \mul_reg_Q_reg[4]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[5]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[6]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[7]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[7]0_n_100\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_101\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_102\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_103\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_104\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_105\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_70\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_71\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_72\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_73\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_74\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_75\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_76\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_77\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_78\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_79\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_80\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_81\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_82\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_83\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_84\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_85\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_86\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_87\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_88\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_89\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_90\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_91\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_92\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_93\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_94\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_95\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_96\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_97\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_98\ : STD_LOGIC;
  signal \mul_reg_Q_reg[7]0_n_99\ : STD_LOGIC;
  signal \mul_reg_Q_reg[8]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[9]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_0_[0][9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal phase_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \phase_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal tail_tmp2 : STD_LOGIC;
  signal \tail_tmp[0]_i_1_n_0\ : STD_LOGIC;
  signal \tail_tmp[0]_i_2_n_0\ : STD_LOGIC;
  signal \tail_tmp[0]_i_4_n_0\ : STD_LOGIC;
  signal tail_tmp_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \tail_tmp_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_10\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_11\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_12\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_13\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_14\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_15\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_8\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_i_3_n_9\ : STD_LOGIC;
  signal \tail_tmp_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \tail_tmp_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \tail_tmp_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \tail_tmp_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal NLW_ARG_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ARG_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_ARG_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_ARG_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ARG_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_ARG_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_ARG_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ARG__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ARG__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ARG__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ARG__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ARG__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ARG__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ARG__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_ARG__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_ARG__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal \NLW_ARG__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_ARG__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_axis_data_fifo_I_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_I_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_I_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_Q_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_Q_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_Q_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_data_out_valid_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_data_out_valid_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_valid_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_I_reg[11]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_I_reg[11]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_I_reg[11]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_I_reg[11]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal \NLW_mul_reg_I_reg[11]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_I_reg[11]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal \NLW_mul_reg_I_reg[3]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal \NLW_mul_reg_I_reg[7]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal \NLW_mul_reg_Q_reg[11]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal \NLW_mul_reg_Q_reg[3]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal \NLW_mul_reg_Q_reg[7]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_tail_tmp_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of ARG : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ARG : label is "{SYNTH-12 {cell *THIS*}}";
  attribute KEEP_HIERARCHY of \ARG__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \ARG__0\ : label is "{SYNTH-12 {cell *THIS*}}";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axis_data_fifo_I : label is "axis_data_fifo_poly_filter,axis_data_fifo_v2_0_7_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_data_fifo_I : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axis_data_fifo_I : label is "axis_data_fifo_v2_0_7_top,Vivado 2021.2";
  attribute CHECK_LICENSE_TYPE of axis_data_fifo_Q : label is "axis_data_fifo_poly_filter,axis_data_fifo_v2_0_7_top,{}";
  attribute DowngradeIPIdentifiedWarnings of axis_data_fifo_Q : label is "yes";
  attribute X_CORE_INFO of axis_data_fifo_Q : label is "axis_data_fifo_v2_0_7_top,Vivado 2021.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \coeff_reg[0][10]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \coeff_reg[0][11]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \coeff_reg[0][12]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \coeff_reg[0][13]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \coeff_reg[0][9]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \coeff_reg[1][0]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \coeff_reg[1][10]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \coeff_reg[1][14]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \coeff_reg[2][0]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \coeff_reg[3][13]_i_1\ : label is "soft_lutpair159";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of data_out_valid_reg_i_2 : label is 11;
  attribute COMPARATOR_THRESHOLD of data_out_valid_reg_i_3 : label is 11;
  attribute SOFT_HLUTNM of \mul_reg_I[10][0]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \mul_reg_I[10][10]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \mul_reg_I[10][11]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \mul_reg_I[10][12]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \mul_reg_I[10][13]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \mul_reg_I[10][14]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \mul_reg_I[10][15]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \mul_reg_I[10][16]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \mul_reg_I[10][17]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \mul_reg_I[10][18]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mul_reg_I[10][19]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \mul_reg_I[10][1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \mul_reg_I[10][20]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mul_reg_I[10][21]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mul_reg_I[10][22]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \mul_reg_I[10][23]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \mul_reg_I[10][24]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \mul_reg_I[10][25]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \mul_reg_I[10][26]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mul_reg_I[10][27]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mul_reg_I[10][28]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \mul_reg_I[10][29]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mul_reg_I[10][2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \mul_reg_I[10][30]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mul_reg_I[10][31]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \mul_reg_I[10][32]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mul_reg_I[10][33]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mul_reg_I[10][34]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \mul_reg_I[10][35]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \mul_reg_I[10][3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mul_reg_I[10][4]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \mul_reg_I[10][5]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \mul_reg_I[10][6]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \mul_reg_I[10][7]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \mul_reg_I[10][8]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \mul_reg_I[10][9]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \mul_reg_I[14][0]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \mul_reg_I[14][10]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \mul_reg_I[14][11]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \mul_reg_I[14][12]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \mul_reg_I[14][13]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \mul_reg_I[14][14]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \mul_reg_I[14][15]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \mul_reg_I[14][16]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mul_reg_I[14][17]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mul_reg_I[14][18]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mul_reg_I[14][19]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \mul_reg_I[14][1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \mul_reg_I[14][20]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mul_reg_I[14][21]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mul_reg_I[14][22]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \mul_reg_I[14][23]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \mul_reg_I[14][24]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \mul_reg_I[14][25]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \mul_reg_I[14][26]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mul_reg_I[14][27]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mul_reg_I[14][28]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \mul_reg_I[14][29]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mul_reg_I[14][2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mul_reg_I[14][30]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mul_reg_I[14][35]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \mul_reg_I[14][3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mul_reg_I[14][4]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \mul_reg_I[14][5]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \mul_reg_I[14][6]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \mul_reg_I[14][7]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \mul_reg_I[14][8]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \mul_reg_I[14][9]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mul_reg_I[2][0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \mul_reg_I[2][10]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \mul_reg_I[2][11]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \mul_reg_I[2][12]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \mul_reg_I[2][13]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \mul_reg_I[2][14]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \mul_reg_I[2][15]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \mul_reg_I[2][1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \mul_reg_I[2][2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \mul_reg_I[2][3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mul_reg_I[2][4]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \mul_reg_I[2][5]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \mul_reg_I[2][6]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \mul_reg_I[2][7]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \mul_reg_I[2][8]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \mul_reg_I[2][9]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \mul_reg_I[6][0]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \mul_reg_I[6][10]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \mul_reg_I[6][11]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \mul_reg_I[6][12]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \mul_reg_I[6][13]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \mul_reg_I[6][14]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \mul_reg_I[6][15]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \mul_reg_I[6][16]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \mul_reg_I[6][17]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \mul_reg_I[6][18]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \mul_reg_I[6][19]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \mul_reg_I[6][1]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \mul_reg_I[6][20]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \mul_reg_I[6][21]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mul_reg_I[6][22]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \mul_reg_I[6][23]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \mul_reg_I[6][24]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mul_reg_I[6][25]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \mul_reg_I[6][26]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mul_reg_I[6][27]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mul_reg_I[6][28]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \mul_reg_I[6][29]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mul_reg_I[6][2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \mul_reg_I[6][30]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mul_reg_I[6][31]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \mul_reg_I[6][32]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mul_reg_I[6][33]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mul_reg_I[6][34]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \mul_reg_I[6][35]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \mul_reg_I[6][3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mul_reg_I[6][4]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \mul_reg_I[6][5]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \mul_reg_I[6][6]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \mul_reg_I[6][7]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \mul_reg_I[6][8]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \mul_reg_I[6][9]_i_1\ : label is "soft_lutpair112";
  attribute KEEP_HIERARCHY of \mul_reg_I_reg[11]0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \mul_reg_I_reg[11]0\ : label is "{SYNTH-12 {cell *THIS*}}";
  attribute KEEP_HIERARCHY of \mul_reg_I_reg[3]0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \mul_reg_I_reg[3]0\ : label is "{SYNTH-12 {cell *THIS*}}";
  attribute KEEP_HIERARCHY of \mul_reg_I_reg[7]0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \mul_reg_I_reg[7]0\ : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][0]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][10]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][11]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][12]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][13]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][14]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][15]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][16]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][17]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][18]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][19]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][1]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][20]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][21]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][22]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][23]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][24]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][25]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][26]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][27]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][28]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][29]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][2]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][30]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][31]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][32]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][33]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][34]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][35]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][4]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][5]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][6]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][7]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][8]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \mul_reg_Q[10][9]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][0]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][10]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][11]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][12]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][13]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][14]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][15]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][16]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][17]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][18]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][19]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][20]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][21]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][22]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][23]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][24]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][25]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][26]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][27]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][28]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][29]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][30]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][35]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][4]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][5]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][6]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][7]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][8]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \mul_reg_Q[14][9]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][0]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][10]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][11]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][12]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][13]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][14]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][15]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][1]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][2]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][4]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][5]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][6]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][7]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][8]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \mul_reg_Q[2][9]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][0]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][10]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][11]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][12]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][13]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][14]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][15]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][16]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][17]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][18]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][19]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][20]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][21]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][22]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][23]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][24]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][25]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][26]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][27]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][28]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][29]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][2]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][30]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][31]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][32]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][33]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][34]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][35]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][4]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][5]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][6]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][7]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][8]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \mul_reg_Q[6][9]_i_1\ : label is "soft_lutpair117";
  attribute KEEP_HIERARCHY of \mul_reg_Q_reg[11]0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \mul_reg_Q_reg[11]0\ : label is "{SYNTH-12 {cell *THIS*}}";
  attribute KEEP_HIERARCHY of \mul_reg_Q_reg[3]0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \mul_reg_Q_reg[3]0\ : label is "{SYNTH-12 {cell *THIS*}}";
  attribute KEEP_HIERARCHY of \mul_reg_Q_reg[7]0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \mul_reg_Q_reg[7]0\ : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \phase_counter[0]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \phase_counter[1]_i_2\ : label is "soft_lutpair160";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \tail_tmp_reg[0]\ : label is "tail_tmp_reg[0]";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \tail_tmp_reg[0]_i_3\ : label is 16;
  attribute ORIG_CELL_NAME of \tail_tmp_reg[0]_rep\ : label is "tail_tmp_reg[0]";
  attribute ADDER_THRESHOLD of \tail_tmp_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tail_tmp_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tail_tmp_reg[8]_i_1\ : label is 16;
begin
ARG: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => m_axis_tdata(15),
      A(28) => m_axis_tdata(15),
      A(27) => m_axis_tdata(15),
      A(26) => m_axis_tdata(15),
      A(25) => m_axis_tdata(15),
      A(24) => m_axis_tdata(15),
      A(23) => m_axis_tdata(15),
      A(22) => m_axis_tdata(15),
      A(21) => m_axis_tdata(15),
      A(20) => m_axis_tdata(15),
      A(19) => m_axis_tdata(15),
      A(18) => m_axis_tdata(15),
      A(17) => m_axis_tdata(15),
      A(16) => m_axis_tdata(15),
      A(15 downto 0) => m_axis_tdata(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_ARG_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[2]\(12),
      B(13) => \coeff_reg_reg[3]\(13),
      B(12) => \coeff_reg_reg[1]\(10),
      B(11) => \coeff_reg_reg[1]\(14),
      B(10) => \coeff_reg_reg[0]\(10),
      B(9) => \coeff_reg_reg[2]\(11),
      B(8) => \coeff_reg_reg[1]\(10),
      B(7) => \coeff_reg_reg[1]\(14),
      B(6) => \coeff_reg_reg[0]\(10),
      B(5) => \coeff_reg_reg[2]\(11),
      B(4) => \coeff_reg_reg[1]\(10),
      B(3) => \coeff_reg_reg[1]\(14),
      B(2) => \coeff_reg_reg[0]\(10),
      B(1) => \coeff_reg_reg[2]\(11),
      B(0) => \coeff_reg_reg[1]\(10),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_ARG_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_ARG_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_ARG_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => filter2fifo_ready1,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_ARG_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_ARG_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_ARG_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => \ARG__1\(31 downto 0),
      PATTERNBDETECT => NLW_ARG_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_ARG_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_ARG_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_ARG_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_ARG_XOROUT_UNCONNECTED(7 downto 0)
    );
\ARG__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => axis_data_fifo_Q_n_2,
      A(28) => axis_data_fifo_Q_n_2,
      A(27) => axis_data_fifo_Q_n_2,
      A(26) => axis_data_fifo_Q_n_2,
      A(25) => axis_data_fifo_Q_n_2,
      A(24) => axis_data_fifo_Q_n_2,
      A(23) => axis_data_fifo_Q_n_2,
      A(22) => axis_data_fifo_Q_n_2,
      A(21) => axis_data_fifo_Q_n_2,
      A(20) => axis_data_fifo_Q_n_2,
      A(19) => axis_data_fifo_Q_n_2,
      A(18) => axis_data_fifo_Q_n_2,
      A(17) => axis_data_fifo_Q_n_2,
      A(16) => axis_data_fifo_Q_n_2,
      A(15) => axis_data_fifo_Q_n_2,
      A(14) => axis_data_fifo_Q_n_3,
      A(13) => axis_data_fifo_Q_n_4,
      A(12) => axis_data_fifo_Q_n_5,
      A(11) => axis_data_fifo_Q_n_6,
      A(10) => axis_data_fifo_Q_n_7,
      A(9) => axis_data_fifo_Q_n_8,
      A(8) => axis_data_fifo_Q_n_9,
      A(7) => axis_data_fifo_Q_n_10,
      A(6) => axis_data_fifo_Q_n_11,
      A(5) => axis_data_fifo_Q_n_12,
      A(4) => axis_data_fifo_Q_n_13,
      A(3) => axis_data_fifo_Q_n_14,
      A(2) => axis_data_fifo_Q_n_15,
      A(1) => axis_data_fifo_Q_n_16,
      A(0) => axis_data_fifo_Q_n_17,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_ARG__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[2]\(12),
      B(13) => \coeff_reg_reg[3]\(13),
      B(12) => \coeff_reg_reg[1]\(10),
      B(11) => \coeff_reg_reg[1]\(14),
      B(10) => \coeff_reg_reg[0]\(10),
      B(9) => \coeff_reg_reg[2]\(11),
      B(8) => \coeff_reg_reg[1]\(10),
      B(7) => \coeff_reg_reg[1]\(14),
      B(6) => \coeff_reg_reg[0]\(10),
      B(5) => \coeff_reg_reg[2]\(11),
      B(4) => \coeff_reg_reg[1]\(10),
      B(3) => \coeff_reg_reg[1]\(14),
      B(2) => \coeff_reg_reg[0]\(10),
      B(1) => \coeff_reg_reg[2]\(11),
      B(0) => \coeff_reg_reg[1]\(10),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_ARG__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_ARG__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_ARG__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => filter2fifo_ready1,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_ARG__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_ARG__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 32) => \NLW_ARG__0_P_UNCONNECTED\(47 downto 32),
      P(31) => \ARG__0_n_74\,
      P(30) => \ARG__0_n_75\,
      P(29) => \ARG__0_n_76\,
      P(28) => \ARG__0_n_77\,
      P(27) => \ARG__0_n_78\,
      P(26) => \ARG__0_n_79\,
      P(25) => \ARG__0_n_80\,
      P(24) => \ARG__0_n_81\,
      P(23) => \ARG__0_n_82\,
      P(22) => \ARG__0_n_83\,
      P(21) => \ARG__0_n_84\,
      P(20) => \ARG__0_n_85\,
      P(19) => \ARG__0_n_86\,
      P(18) => \ARG__0_n_87\,
      P(17) => \ARG__0_n_88\,
      P(16) => \ARG__0_n_89\,
      P(15) => \ARG__0_n_90\,
      P(14) => \ARG__0_n_91\,
      P(13) => \ARG__0_n_92\,
      P(12) => \ARG__0_n_93\,
      P(11) => \ARG__0_n_94\,
      P(10) => \ARG__0_n_95\,
      P(9) => \ARG__0_n_96\,
      P(8) => \ARG__0_n_97\,
      P(7) => \ARG__0_n_98\,
      P(6) => \ARG__0_n_99\,
      P(5) => \ARG__0_n_100\,
      P(4) => \ARG__0_n_101\,
      P(3) => \ARG__0_n_102\,
      P(2) => \ARG__0_n_103\,
      P(1) => \ARG__0_n_104\,
      P(0) => \ARG__0_n_105\,
      PATTERNBDETECT => \NLW_ARG__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_ARG__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_ARG__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_ARG__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_ARG__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
axis_data_fifo_I: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter__xdcDup__1\
     port map (
      almost_empty => NLW_axis_data_fifo_I_almost_empty_UNCONNECTED,
      almost_full => NLW_axis_data_fifo_I_almost_full_UNCONNECTED,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tready => filter2fifo_ready_reg_n_0,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => clk,
      s_axis_aresetn => FIFO_reset,
      s_axis_tdata(15 downto 0) => input_I(15 downto 0),
      s_axis_tready => NLW_axis_data_fifo_I_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => data_in_valid
    );
axis_data_fifo_Q: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_poly_filter
     port map (
      almost_empty => NLW_axis_data_fifo_Q_almost_empty_UNCONNECTED,
      almost_full => NLW_axis_data_fifo_Q_almost_full_UNCONNECTED,
      m_axis_tdata(15) => axis_data_fifo_Q_n_2,
      m_axis_tdata(14) => axis_data_fifo_Q_n_3,
      m_axis_tdata(13) => axis_data_fifo_Q_n_4,
      m_axis_tdata(12) => axis_data_fifo_Q_n_5,
      m_axis_tdata(11) => axis_data_fifo_Q_n_6,
      m_axis_tdata(10) => axis_data_fifo_Q_n_7,
      m_axis_tdata(9) => axis_data_fifo_Q_n_8,
      m_axis_tdata(8) => axis_data_fifo_Q_n_9,
      m_axis_tdata(7) => axis_data_fifo_Q_n_10,
      m_axis_tdata(6) => axis_data_fifo_Q_n_11,
      m_axis_tdata(5) => axis_data_fifo_Q_n_12,
      m_axis_tdata(4) => axis_data_fifo_Q_n_13,
      m_axis_tdata(3) => axis_data_fifo_Q_n_14,
      m_axis_tdata(2) => axis_data_fifo_Q_n_15,
      m_axis_tdata(1) => axis_data_fifo_Q_n_16,
      m_axis_tdata(0) => axis_data_fifo_Q_n_17,
      m_axis_tready => filter2fifo_ready_reg_n_0,
      m_axis_tvalid => axis_data_fifo_Q_n_1,
      s_axis_aclk => clk,
      s_axis_aresetn => FIFO_reset,
      s_axis_tdata(15 downto 0) => input_Q(15 downto 0),
      s_axis_tready => NLW_axis_data_fifo_Q_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => data_in_valid
    );
\coeff_reg[0][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_counter(0),
      I1 => phase_counter(1),
      O => \coeff[3]\(10)
    );
\coeff_reg[0][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_counter(0),
      I1 => phase_counter(1),
      O => \coeff[3]\(11)
    );
\coeff_reg[0][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phase_counter(0),
      I1 => phase_counter(1),
      O => \coeff[3]\(12)
    );
\coeff_reg[0][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => phase_counter(1),
      I1 => phase_counter(0),
      O => \coeff[3]\(13)
    );
\coeff_reg[0][14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_counter(1),
      O => \coeff[3]\(14)
    );
\coeff_reg[0][9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_counter(0),
      O => \coeff_reg[0][9]_i_1_n_0\
    );
\coeff_reg[1][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => phase_counter(1),
      I1 => phase_counter(0),
      O => \coeff[7]\(0)
    );
\coeff_reg[1][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phase_counter(1),
      I1 => phase_counter(0),
      O => \coeff[7]\(10)
    );
\coeff_reg[1][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phase_counter(1),
      I1 => phase_counter(0),
      O => \coeff_reg[1][14]_i_1_n_0\
    );
\coeff_reg[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phase_counter(1),
      I1 => phase_counter(0),
      O => \coeff_reg[2][0]_i_1_n_0\
    );
\coeff_reg[3][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => phase_counter(0),
      I1 => phase_counter(1),
      O => \coeff_reg[3][13]_i_1_n_0\
    );
\coeff_reg_reg[0][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff[3]\(10),
      Q => \coeff_reg_reg[0]\(10)
    );
\coeff_reg_reg[0][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff[3]\(11),
      Q => \coeff_reg_reg[0]\(11)
    );
\coeff_reg_reg[0][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff[3]\(12),
      Q => \coeff_reg_reg[0]\(12)
    );
\coeff_reg_reg[0][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff[3]\(13),
      Q => \coeff_reg_reg[0]\(13)
    );
\coeff_reg_reg[0][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff[3]\(14),
      Q => \coeff_reg_reg[0]\(14)
    );
\coeff_reg_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff_reg[0][9]_i_1_n_0\,
      Q => \coeff_reg_reg[0]\(9)
    );
\coeff_reg_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff[7]\(0),
      Q => \coeff_reg_reg[1]\(0)
    );
\coeff_reg_reg[1][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff[7]\(10),
      Q => \coeff_reg_reg[1]\(10)
    );
\coeff_reg_reg[1][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff_reg[1][14]_i_1_n_0\,
      Q => \coeff_reg_reg[1]\(14)
    );
\coeff_reg_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff_reg[2][0]_i_1_n_0\,
      Q => \coeff_reg_reg[2]\(0)
    );
\coeff_reg_reg[2][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => phase_counter(0),
      Q => \coeff_reg_reg[2]\(11)
    );
\coeff_reg_reg[2][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => phase_counter(1),
      Q => \coeff_reg_reg[2]\(12)
    );
\coeff_reg_reg[3][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \coeff_reg[3][13]_i_1_n_0\,
      Q => \coeff_reg_reg[3]\(13)
    );
\data_out_I[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][0]\,
      I3 => \data_out_I_reg[0]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[0]_i_3_n_0\,
      O => p_0_in(0)
    );
\data_out_I[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(0),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(0),
      O => \data_out_I[0]_i_10_n_0\
    );
\data_out_I[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(0),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(0),
      O => \data_out_I[0]_i_11_n_0\
    );
\data_out_I[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(0),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][0]\,
      O => \data_out_I[0]_i_12_n_0\
    );
\data_out_I[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_105\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(0),
      O => \data_out_I[0]_i_13_n_0\
    );
\data_out_I[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(0),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(0),
      O => \data_out_I[0]_i_14_n_0\
    );
\data_out_I[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_105\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(0),
      O => \data_out_I[0]_i_15_n_0\
    );
\data_out_I[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(0),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(0),
      O => \data_out_I[0]_i_8_n_0\
    );
\data_out_I[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_105\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(0),
      O => \data_out_I[0]_i_9_n_0\
    );
\data_out_I[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][10]\,
      I3 => \data_out_I_reg[10]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[10]_i_3_n_0\,
      O => p_0_in(10)
    );
\data_out_I[10]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(10),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(10),
      O => \data_out_I[10]_i_10_n_0\
    );
\data_out_I[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(10),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(10),
      O => \data_out_I[10]_i_11_n_0\
    );
\data_out_I[10]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(10),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][10]\,
      O => \data_out_I[10]_i_12_n_0\
    );
\data_out_I[10]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_95\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(10),
      O => \data_out_I[10]_i_13_n_0\
    );
\data_out_I[10]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(10),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(10),
      O => \data_out_I[10]_i_14_n_0\
    );
\data_out_I[10]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_95\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(10),
      O => \data_out_I[10]_i_15_n_0\
    );
\data_out_I[10]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(10),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(10),
      O => \data_out_I[10]_i_8_n_0\
    );
\data_out_I[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_95\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(10),
      O => \data_out_I[10]_i_9_n_0\
    );
\data_out_I[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][11]\,
      I3 => \data_out_I_reg[11]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[11]_i_3_n_0\,
      O => p_0_in(11)
    );
\data_out_I[11]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(11),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(11),
      O => \data_out_I[11]_i_10_n_0\
    );
\data_out_I[11]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(11),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(11),
      O => \data_out_I[11]_i_11_n_0\
    );
\data_out_I[11]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(11),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][11]\,
      O => \data_out_I[11]_i_12_n_0\
    );
\data_out_I[11]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_94\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(11),
      O => \data_out_I[11]_i_13_n_0\
    );
\data_out_I[11]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(11),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(11),
      O => \data_out_I[11]_i_14_n_0\
    );
\data_out_I[11]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_94\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(11),
      O => \data_out_I[11]_i_15_n_0\
    );
\data_out_I[11]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(11),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(11),
      O => \data_out_I[11]_i_8_n_0\
    );
\data_out_I[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_94\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(11),
      O => \data_out_I[11]_i_9_n_0\
    );
\data_out_I[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][12]\,
      I3 => \data_out_I_reg[12]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[12]_i_3_n_0\,
      O => p_0_in(12)
    );
\data_out_I[12]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(12),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(12),
      O => \data_out_I[12]_i_10_n_0\
    );
\data_out_I[12]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(12),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(12),
      O => \data_out_I[12]_i_11_n_0\
    );
\data_out_I[12]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(12),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][12]\,
      O => \data_out_I[12]_i_12_n_0\
    );
\data_out_I[12]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_93\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(12),
      O => \data_out_I[12]_i_13_n_0\
    );
\data_out_I[12]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(12),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(12),
      O => \data_out_I[12]_i_14_n_0\
    );
\data_out_I[12]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_93\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(12),
      O => \data_out_I[12]_i_15_n_0\
    );
\data_out_I[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(12),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(12),
      O => \data_out_I[12]_i_8_n_0\
    );
\data_out_I[12]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_93\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(12),
      O => \data_out_I[12]_i_9_n_0\
    );
\data_out_I[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][13]\,
      I3 => \data_out_I_reg[13]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[13]_i_3_n_0\,
      O => p_0_in(13)
    );
\data_out_I[13]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(13),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(13),
      O => \data_out_I[13]_i_10_n_0\
    );
\data_out_I[13]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(13),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(13),
      O => \data_out_I[13]_i_11_n_0\
    );
\data_out_I[13]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(13),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][13]\,
      O => \data_out_I[13]_i_12_n_0\
    );
\data_out_I[13]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_92\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(13),
      O => \data_out_I[13]_i_13_n_0\
    );
\data_out_I[13]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(13),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(13),
      O => \data_out_I[13]_i_14_n_0\
    );
\data_out_I[13]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_92\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(13),
      O => \data_out_I[13]_i_15_n_0\
    );
\data_out_I[13]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(13),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(13),
      O => \data_out_I[13]_i_8_n_0\
    );
\data_out_I[13]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_92\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(13),
      O => \data_out_I[13]_i_9_n_0\
    );
\data_out_I[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][14]\,
      I3 => \data_out_I_reg[14]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[14]_i_3_n_0\,
      O => p_0_in(14)
    );
\data_out_I[14]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(14),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(14),
      O => \data_out_I[14]_i_10_n_0\
    );
\data_out_I[14]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(14),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(14),
      O => \data_out_I[14]_i_11_n_0\
    );
\data_out_I[14]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(14),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][14]\,
      O => \data_out_I[14]_i_12_n_0\
    );
\data_out_I[14]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_91\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(14),
      O => \data_out_I[14]_i_13_n_0\
    );
\data_out_I[14]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(14),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(14),
      O => \data_out_I[14]_i_14_n_0\
    );
\data_out_I[14]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_91\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(14),
      O => \data_out_I[14]_i_15_n_0\
    );
\data_out_I[14]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(14),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(14),
      O => \data_out_I[14]_i_8_n_0\
    );
\data_out_I[14]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_91\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(14),
      O => \data_out_I[14]_i_9_n_0\
    );
\data_out_I[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000007070777"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => tail_tmp2,
      I3 => phase_counter(1),
      I4 => phase_counter(0),
      I5 => reset,
      O => \data_out_I[15]_i_1_n_0\
    );
\data_out_I[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(15),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(15),
      O => \data_out_I[15]_i_10_n_0\
    );
\data_out_I[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_90\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(15),
      O => \data_out_I[15]_i_11_n_0\
    );
\data_out_I[15]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(15),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(15),
      O => \data_out_I[15]_i_12_n_0\
    );
\data_out_I[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(15),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(15),
      O => \data_out_I[15]_i_13_n_0\
    );
\data_out_I[15]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(15),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][15]\,
      O => \data_out_I[15]_i_14_n_0\
    );
\data_out_I[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_90\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(15),
      O => \data_out_I[15]_i_15_n_0\
    );
\data_out_I[15]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(15),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(15),
      O => \data_out_I[15]_i_16_n_0\
    );
\data_out_I[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_90\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(15),
      O => \data_out_I[15]_i_17_n_0\
    );
\data_out_I[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => p_1_in
    );
\data_out_I[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][15]\,
      I3 => \data_out_I_reg[15]_i_4_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[15]_i_5_n_0\,
      O => p_0_in(15)
    );
\data_out_I[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][1]\,
      I3 => \data_out_I_reg[1]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[1]_i_3_n_0\,
      O => p_0_in(1)
    );
\data_out_I[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(1),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(1),
      O => \data_out_I[1]_i_10_n_0\
    );
\data_out_I[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(1),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(1),
      O => \data_out_I[1]_i_11_n_0\
    );
\data_out_I[1]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(1),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][1]\,
      O => \data_out_I[1]_i_12_n_0\
    );
\data_out_I[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_104\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(1),
      O => \data_out_I[1]_i_13_n_0\
    );
\data_out_I[1]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(1),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(1),
      O => \data_out_I[1]_i_14_n_0\
    );
\data_out_I[1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_104\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(1),
      O => \data_out_I[1]_i_15_n_0\
    );
\data_out_I[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(1),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(1),
      O => \data_out_I[1]_i_8_n_0\
    );
\data_out_I[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_104\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(1),
      O => \data_out_I[1]_i_9_n_0\
    );
\data_out_I[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][2]\,
      I3 => \data_out_I_reg[2]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[2]_i_3_n_0\,
      O => p_0_in(2)
    );
\data_out_I[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(2),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(2),
      O => \data_out_I[2]_i_10_n_0\
    );
\data_out_I[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(2),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(2),
      O => \data_out_I[2]_i_11_n_0\
    );
\data_out_I[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(2),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][2]\,
      O => \data_out_I[2]_i_12_n_0\
    );
\data_out_I[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_103\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(2),
      O => \data_out_I[2]_i_13_n_0\
    );
\data_out_I[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(2),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(2),
      O => \data_out_I[2]_i_14_n_0\
    );
\data_out_I[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_103\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(2),
      O => \data_out_I[2]_i_15_n_0\
    );
\data_out_I[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(2),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(2),
      O => \data_out_I[2]_i_8_n_0\
    );
\data_out_I[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_103\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(2),
      O => \data_out_I[2]_i_9_n_0\
    );
\data_out_I[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][3]\,
      I3 => \data_out_I_reg[3]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[3]_i_3_n_0\,
      O => p_0_in(3)
    );
\data_out_I[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(3),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(3),
      O => \data_out_I[3]_i_10_n_0\
    );
\data_out_I[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(3),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(3),
      O => \data_out_I[3]_i_11_n_0\
    );
\data_out_I[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(3),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][3]\,
      O => \data_out_I[3]_i_12_n_0\
    );
\data_out_I[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_102\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(3),
      O => \data_out_I[3]_i_13_n_0\
    );
\data_out_I[3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(3),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(3),
      O => \data_out_I[3]_i_14_n_0\
    );
\data_out_I[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_102\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(3),
      O => \data_out_I[3]_i_15_n_0\
    );
\data_out_I[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(3),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(3),
      O => \data_out_I[3]_i_8_n_0\
    );
\data_out_I[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_102\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(3),
      O => \data_out_I[3]_i_9_n_0\
    );
\data_out_I[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][4]\,
      I3 => \data_out_I_reg[4]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[4]_i_3_n_0\,
      O => p_0_in(4)
    );
\data_out_I[4]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(4),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(4),
      O => \data_out_I[4]_i_10_n_0\
    );
\data_out_I[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(4),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(4),
      O => \data_out_I[4]_i_11_n_0\
    );
\data_out_I[4]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(4),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][4]\,
      O => \data_out_I[4]_i_12_n_0\
    );
\data_out_I[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_101\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(4),
      O => \data_out_I[4]_i_13_n_0\
    );
\data_out_I[4]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(4),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(4),
      O => \data_out_I[4]_i_14_n_0\
    );
\data_out_I[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_101\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(4),
      O => \data_out_I[4]_i_15_n_0\
    );
\data_out_I[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(4),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(4),
      O => \data_out_I[4]_i_8_n_0\
    );
\data_out_I[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_101\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(4),
      O => \data_out_I[4]_i_9_n_0\
    );
\data_out_I[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][5]\,
      I3 => \data_out_I_reg[5]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[5]_i_3_n_0\,
      O => p_0_in(5)
    );
\data_out_I[5]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(5),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(5),
      O => \data_out_I[5]_i_10_n_0\
    );
\data_out_I[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(5),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(5),
      O => \data_out_I[5]_i_11_n_0\
    );
\data_out_I[5]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(5),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][5]\,
      O => \data_out_I[5]_i_12_n_0\
    );
\data_out_I[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_100\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(5),
      O => \data_out_I[5]_i_13_n_0\
    );
\data_out_I[5]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(5),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(5),
      O => \data_out_I[5]_i_14_n_0\
    );
\data_out_I[5]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_100\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(5),
      O => \data_out_I[5]_i_15_n_0\
    );
\data_out_I[5]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(5),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(5),
      O => \data_out_I[5]_i_8_n_0\
    );
\data_out_I[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_100\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(5),
      O => \data_out_I[5]_i_9_n_0\
    );
\data_out_I[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][6]\,
      I3 => \data_out_I_reg[6]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[6]_i_3_n_0\,
      O => p_0_in(6)
    );
\data_out_I[6]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(6),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(6),
      O => \data_out_I[6]_i_10_n_0\
    );
\data_out_I[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(6),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(6),
      O => \data_out_I[6]_i_11_n_0\
    );
\data_out_I[6]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(6),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][6]\,
      O => \data_out_I[6]_i_12_n_0\
    );
\data_out_I[6]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_99\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(6),
      O => \data_out_I[6]_i_13_n_0\
    );
\data_out_I[6]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(6),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(6),
      O => \data_out_I[6]_i_14_n_0\
    );
\data_out_I[6]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_99\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(6),
      O => \data_out_I[6]_i_15_n_0\
    );
\data_out_I[6]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(6),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(6),
      O => \data_out_I[6]_i_8_n_0\
    );
\data_out_I[6]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_99\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(6),
      O => \data_out_I[6]_i_9_n_0\
    );
\data_out_I[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][7]\,
      I3 => \data_out_I_reg[7]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[7]_i_3_n_0\,
      O => p_0_in(7)
    );
\data_out_I[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(7),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(7),
      O => \data_out_I[7]_i_10_n_0\
    );
\data_out_I[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(7),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(7),
      O => \data_out_I[7]_i_11_n_0\
    );
\data_out_I[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(7),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][7]\,
      O => \data_out_I[7]_i_12_n_0\
    );
\data_out_I[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_98\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(7),
      O => \data_out_I[7]_i_13_n_0\
    );
\data_out_I[7]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(7),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(7),
      O => \data_out_I[7]_i_14_n_0\
    );
\data_out_I[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_98\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(7),
      O => \data_out_I[7]_i_15_n_0\
    );
\data_out_I[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(7),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(7),
      O => \data_out_I[7]_i_8_n_0\
    );
\data_out_I[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_98\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(7),
      O => \data_out_I[7]_i_9_n_0\
    );
\data_out_I[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][8]\,
      I3 => \data_out_I_reg[8]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[8]_i_3_n_0\,
      O => p_0_in(8)
    );
\data_out_I[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(8),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(8),
      O => \data_out_I[8]_i_10_n_0\
    );
\data_out_I[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(8),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(8),
      O => \data_out_I[8]_i_11_n_0\
    );
\data_out_I[8]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(8),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][8]\,
      O => \data_out_I[8]_i_12_n_0\
    );
\data_out_I[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_97\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(8),
      O => \data_out_I[8]_i_13_n_0\
    );
\data_out_I[8]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(8),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(8),
      O => \data_out_I[8]_i_14_n_0\
    );
\data_out_I[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_97\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(8),
      O => \data_out_I[8]_i_15_n_0\
    );
\data_out_I[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(8),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(8),
      O => \data_out_I[8]_i_8_n_0\
    );
\data_out_I[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_97\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(8),
      O => \data_out_I[8]_i_9_n_0\
    );
\data_out_I[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_I_reg_n_0_[0][9]\,
      I3 => \data_out_I_reg[9]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_I_reg[9]_i_3_n_0\,
      O => p_0_in(9)
    );
\data_out_I[9]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[13]\(9),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[12]\(9),
      O => \data_out_I[9]_i_10_n_0\
    );
\data_out_I[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__1\(9),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[14]\(9),
      O => \data_out_I[9]_i_11_n_0\
    );
\data_out_I[9]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[1]\(9),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg_n_0_[0][9]\,
      O => \data_out_I[9]_i_12_n_0\
    );
\data_out_I[9]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_96\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[2]\(9),
      O => \data_out_I[9]_i_13_n_0\
    );
\data_out_I[9]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[5]\(9),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[4]\(9),
      O => \data_out_I[9]_i_14_n_0\
    );
\data_out_I[9]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_96\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[6]\(9),
      O => \data_out_I[9]_i_15_n_0\
    );
\data_out_I[9]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_I_reg[9]\(9),
      I1 => \tail_tmp_reg[0]_rep_n_0\,
      I2 => \mul_reg_I_reg[8]\(9),
      O => \data_out_I[9]_i_8_n_0\
    );
\data_out_I[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_96\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      I2 => \tail_tmp_reg[0]_rep_n_0\,
      I3 => \mul_reg_I_reg[10]\(9),
      O => \data_out_I[9]_i_9_n_0\
    );
\data_out_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(0),
      Q => data_out_I(0),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[0]_i_4_n_0\,
      I1 => \data_out_I_reg[0]_i_5_n_0\,
      O => \data_out_I_reg[0]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[0]_i_6_n_0\,
      I1 => \data_out_I_reg[0]_i_7_n_0\,
      O => \data_out_I_reg[0]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[0]_i_8_n_0\,
      I1 => \data_out_I[0]_i_9_n_0\,
      O => \data_out_I_reg[0]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[0]_i_10_n_0\,
      I1 => \data_out_I[0]_i_11_n_0\,
      O => \data_out_I_reg[0]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[0]_i_12_n_0\,
      I1 => \data_out_I[0]_i_13_n_0\,
      O => \data_out_I_reg[0]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[0]_i_14_n_0\,
      I1 => \data_out_I[0]_i_15_n_0\,
      O => \data_out_I_reg[0]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(10),
      Q => data_out_I(10),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[10]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[10]_i_4_n_0\,
      I1 => \data_out_I_reg[10]_i_5_n_0\,
      O => \data_out_I_reg[10]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[10]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[10]_i_6_n_0\,
      I1 => \data_out_I_reg[10]_i_7_n_0\,
      O => \data_out_I_reg[10]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[10]_i_8_n_0\,
      I1 => \data_out_I[10]_i_9_n_0\,
      O => \data_out_I_reg[10]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[10]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[10]_i_10_n_0\,
      I1 => \data_out_I[10]_i_11_n_0\,
      O => \data_out_I_reg[10]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[10]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[10]_i_12_n_0\,
      I1 => \data_out_I[10]_i_13_n_0\,
      O => \data_out_I_reg[10]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[10]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[10]_i_14_n_0\,
      I1 => \data_out_I[10]_i_15_n_0\,
      O => \data_out_I_reg[10]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(11),
      Q => data_out_I(11),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[11]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[11]_i_4_n_0\,
      I1 => \data_out_I_reg[11]_i_5_n_0\,
      O => \data_out_I_reg[11]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[11]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[11]_i_6_n_0\,
      I1 => \data_out_I_reg[11]_i_7_n_0\,
      O => \data_out_I_reg[11]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[11]_i_8_n_0\,
      I1 => \data_out_I[11]_i_9_n_0\,
      O => \data_out_I_reg[11]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[11]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[11]_i_10_n_0\,
      I1 => \data_out_I[11]_i_11_n_0\,
      O => \data_out_I_reg[11]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[11]_i_12_n_0\,
      I1 => \data_out_I[11]_i_13_n_0\,
      O => \data_out_I_reg[11]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[11]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[11]_i_14_n_0\,
      I1 => \data_out_I[11]_i_15_n_0\,
      O => \data_out_I_reg[11]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(12),
      Q => data_out_I(12),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[12]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[12]_i_4_n_0\,
      I1 => \data_out_I_reg[12]_i_5_n_0\,
      O => \data_out_I_reg[12]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[12]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[12]_i_6_n_0\,
      I1 => \data_out_I_reg[12]_i_7_n_0\,
      O => \data_out_I_reg[12]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[12]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[12]_i_8_n_0\,
      I1 => \data_out_I[12]_i_9_n_0\,
      O => \data_out_I_reg[12]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[12]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[12]_i_10_n_0\,
      I1 => \data_out_I[12]_i_11_n_0\,
      O => \data_out_I_reg[12]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[12]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[12]_i_12_n_0\,
      I1 => \data_out_I[12]_i_13_n_0\,
      O => \data_out_I_reg[12]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[12]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[12]_i_14_n_0\,
      I1 => \data_out_I[12]_i_15_n_0\,
      O => \data_out_I_reg[12]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(13),
      Q => data_out_I(13),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[13]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[13]_i_4_n_0\,
      I1 => \data_out_I_reg[13]_i_5_n_0\,
      O => \data_out_I_reg[13]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[13]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[13]_i_6_n_0\,
      I1 => \data_out_I_reg[13]_i_7_n_0\,
      O => \data_out_I_reg[13]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[13]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[13]_i_8_n_0\,
      I1 => \data_out_I[13]_i_9_n_0\,
      O => \data_out_I_reg[13]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[13]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[13]_i_10_n_0\,
      I1 => \data_out_I[13]_i_11_n_0\,
      O => \data_out_I_reg[13]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[13]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[13]_i_12_n_0\,
      I1 => \data_out_I[13]_i_13_n_0\,
      O => \data_out_I_reg[13]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[13]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[13]_i_14_n_0\,
      I1 => \data_out_I[13]_i_15_n_0\,
      O => \data_out_I_reg[13]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(14),
      Q => data_out_I(14),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[14]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[14]_i_4_n_0\,
      I1 => \data_out_I_reg[14]_i_5_n_0\,
      O => \data_out_I_reg[14]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[14]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[14]_i_6_n_0\,
      I1 => \data_out_I_reg[14]_i_7_n_0\,
      O => \data_out_I_reg[14]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[14]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[14]_i_8_n_0\,
      I1 => \data_out_I[14]_i_9_n_0\,
      O => \data_out_I_reg[14]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[14]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[14]_i_10_n_0\,
      I1 => \data_out_I[14]_i_11_n_0\,
      O => \data_out_I_reg[14]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[14]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[14]_i_12_n_0\,
      I1 => \data_out_I[14]_i_13_n_0\,
      O => \data_out_I_reg[14]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[14]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[14]_i_14_n_0\,
      I1 => \data_out_I[14]_i_15_n_0\,
      O => \data_out_I_reg[14]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(15),
      Q => data_out_I(15),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[15]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[15]_i_6_n_0\,
      I1 => \data_out_I_reg[15]_i_7_n_0\,
      O => \data_out_I_reg[15]_i_4_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[15]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[15]_i_8_n_0\,
      I1 => \data_out_I_reg[15]_i_9_n_0\,
      O => \data_out_I_reg[15]_i_5_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[15]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[15]_i_10_n_0\,
      I1 => \data_out_I[15]_i_11_n_0\,
      O => \data_out_I_reg[15]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[15]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[15]_i_12_n_0\,
      I1 => \data_out_I[15]_i_13_n_0\,
      O => \data_out_I_reg[15]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[15]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[15]_i_14_n_0\,
      I1 => \data_out_I[15]_i_15_n_0\,
      O => \data_out_I_reg[15]_i_8_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[15]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[15]_i_16_n_0\,
      I1 => \data_out_I[15]_i_17_n_0\,
      O => \data_out_I_reg[15]_i_9_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(1),
      Q => data_out_I(1),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[1]_i_4_n_0\,
      I1 => \data_out_I_reg[1]_i_5_n_0\,
      O => \data_out_I_reg[1]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[1]_i_6_n_0\,
      I1 => \data_out_I_reg[1]_i_7_n_0\,
      O => \data_out_I_reg[1]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[1]_i_8_n_0\,
      I1 => \data_out_I[1]_i_9_n_0\,
      O => \data_out_I_reg[1]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[1]_i_10_n_0\,
      I1 => \data_out_I[1]_i_11_n_0\,
      O => \data_out_I_reg[1]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[1]_i_12_n_0\,
      I1 => \data_out_I[1]_i_13_n_0\,
      O => \data_out_I_reg[1]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[1]_i_14_n_0\,
      I1 => \data_out_I[1]_i_15_n_0\,
      O => \data_out_I_reg[1]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(2),
      Q => data_out_I(2),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[2]_i_4_n_0\,
      I1 => \data_out_I_reg[2]_i_5_n_0\,
      O => \data_out_I_reg[2]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[2]_i_6_n_0\,
      I1 => \data_out_I_reg[2]_i_7_n_0\,
      O => \data_out_I_reg[2]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[2]_i_8_n_0\,
      I1 => \data_out_I[2]_i_9_n_0\,
      O => \data_out_I_reg[2]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[2]_i_10_n_0\,
      I1 => \data_out_I[2]_i_11_n_0\,
      O => \data_out_I_reg[2]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[2]_i_12_n_0\,
      I1 => \data_out_I[2]_i_13_n_0\,
      O => \data_out_I_reg[2]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[2]_i_14_n_0\,
      I1 => \data_out_I[2]_i_15_n_0\,
      O => \data_out_I_reg[2]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(3),
      Q => data_out_I(3),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[3]_i_4_n_0\,
      I1 => \data_out_I_reg[3]_i_5_n_0\,
      O => \data_out_I_reg[3]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[3]_i_6_n_0\,
      I1 => \data_out_I_reg[3]_i_7_n_0\,
      O => \data_out_I_reg[3]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[3]_i_8_n_0\,
      I1 => \data_out_I[3]_i_9_n_0\,
      O => \data_out_I_reg[3]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[3]_i_10_n_0\,
      I1 => \data_out_I[3]_i_11_n_0\,
      O => \data_out_I_reg[3]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[3]_i_12_n_0\,
      I1 => \data_out_I[3]_i_13_n_0\,
      O => \data_out_I_reg[3]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[3]_i_14_n_0\,
      I1 => \data_out_I[3]_i_15_n_0\,
      O => \data_out_I_reg[3]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(4),
      Q => data_out_I(4),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[4]_i_4_n_0\,
      I1 => \data_out_I_reg[4]_i_5_n_0\,
      O => \data_out_I_reg[4]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[4]_i_6_n_0\,
      I1 => \data_out_I_reg[4]_i_7_n_0\,
      O => \data_out_I_reg[4]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[4]_i_8_n_0\,
      I1 => \data_out_I[4]_i_9_n_0\,
      O => \data_out_I_reg[4]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[4]_i_10_n_0\,
      I1 => \data_out_I[4]_i_11_n_0\,
      O => \data_out_I_reg[4]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[4]_i_12_n_0\,
      I1 => \data_out_I[4]_i_13_n_0\,
      O => \data_out_I_reg[4]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[4]_i_14_n_0\,
      I1 => \data_out_I[4]_i_15_n_0\,
      O => \data_out_I_reg[4]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(5),
      Q => data_out_I(5),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[5]_i_4_n_0\,
      I1 => \data_out_I_reg[5]_i_5_n_0\,
      O => \data_out_I_reg[5]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[5]_i_6_n_0\,
      I1 => \data_out_I_reg[5]_i_7_n_0\,
      O => \data_out_I_reg[5]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[5]_i_8_n_0\,
      I1 => \data_out_I[5]_i_9_n_0\,
      O => \data_out_I_reg[5]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[5]_i_10_n_0\,
      I1 => \data_out_I[5]_i_11_n_0\,
      O => \data_out_I_reg[5]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[5]_i_12_n_0\,
      I1 => \data_out_I[5]_i_13_n_0\,
      O => \data_out_I_reg[5]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[5]_i_14_n_0\,
      I1 => \data_out_I[5]_i_15_n_0\,
      O => \data_out_I_reg[5]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(6),
      Q => data_out_I(6),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[6]_i_4_n_0\,
      I1 => \data_out_I_reg[6]_i_5_n_0\,
      O => \data_out_I_reg[6]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[6]_i_6_n_0\,
      I1 => \data_out_I_reg[6]_i_7_n_0\,
      O => \data_out_I_reg[6]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[6]_i_8_n_0\,
      I1 => \data_out_I[6]_i_9_n_0\,
      O => \data_out_I_reg[6]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[6]_i_10_n_0\,
      I1 => \data_out_I[6]_i_11_n_0\,
      O => \data_out_I_reg[6]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[6]_i_12_n_0\,
      I1 => \data_out_I[6]_i_13_n_0\,
      O => \data_out_I_reg[6]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[6]_i_14_n_0\,
      I1 => \data_out_I[6]_i_15_n_0\,
      O => \data_out_I_reg[6]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(7),
      Q => data_out_I(7),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[7]_i_4_n_0\,
      I1 => \data_out_I_reg[7]_i_5_n_0\,
      O => \data_out_I_reg[7]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[7]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[7]_i_6_n_0\,
      I1 => \data_out_I_reg[7]_i_7_n_0\,
      O => \data_out_I_reg[7]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[7]_i_8_n_0\,
      I1 => \data_out_I[7]_i_9_n_0\,
      O => \data_out_I_reg[7]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[7]_i_10_n_0\,
      I1 => \data_out_I[7]_i_11_n_0\,
      O => \data_out_I_reg[7]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[7]_i_12_n_0\,
      I1 => \data_out_I[7]_i_13_n_0\,
      O => \data_out_I_reg[7]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[7]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[7]_i_14_n_0\,
      I1 => \data_out_I[7]_i_15_n_0\,
      O => \data_out_I_reg[7]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(8),
      Q => data_out_I(8),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[8]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[8]_i_4_n_0\,
      I1 => \data_out_I_reg[8]_i_5_n_0\,
      O => \data_out_I_reg[8]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[8]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[8]_i_6_n_0\,
      I1 => \data_out_I_reg[8]_i_7_n_0\,
      O => \data_out_I_reg[8]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[8]_i_8_n_0\,
      I1 => \data_out_I[8]_i_9_n_0\,
      O => \data_out_I_reg[8]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[8]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[8]_i_10_n_0\,
      I1 => \data_out_I[8]_i_11_n_0\,
      O => \data_out_I_reg[8]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[8]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[8]_i_12_n_0\,
      I1 => \data_out_I[8]_i_13_n_0\,
      O => \data_out_I_reg[8]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[8]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[8]_i_14_n_0\,
      I1 => \data_out_I[8]_i_15_n_0\,
      O => \data_out_I_reg[8]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => p_0_in(9),
      Q => data_out_I(9),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[9]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[9]_i_4_n_0\,
      I1 => \data_out_I_reg[9]_i_5_n_0\,
      O => \data_out_I_reg[9]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[9]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_I_reg[9]_i_6_n_0\,
      I1 => \data_out_I_reg[9]_i_7_n_0\,
      O => \data_out_I_reg[9]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_I_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[9]_i_8_n_0\,
      I1 => \data_out_I[9]_i_9_n_0\,
      O => \data_out_I_reg[9]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[9]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[9]_i_10_n_0\,
      I1 => \data_out_I[9]_i_11_n_0\,
      O => \data_out_I_reg[9]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[9]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[9]_i_12_n_0\,
      I1 => \data_out_I[9]_i_13_n_0\,
      O => \data_out_I_reg[9]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_I_reg[9]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_I[9]_i_14_n_0\,
      I1 => \data_out_I[9]_i_15_n_0\,
      O => \data_out_I_reg[9]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][0]\,
      I3 => \data_out_Q_reg[0]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[0]_i_3_n_0\,
      O => \data_out_Q[0]_i_1_n_0\
    );
\data_out_Q[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(0),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(0),
      O => \data_out_Q[0]_i_10_n_0\
    );
\data_out_Q[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_105\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(0),
      O => \data_out_Q[0]_i_11_n_0\
    );
\data_out_Q[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(0),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][0]\,
      O => \data_out_Q[0]_i_12_n_0\
    );
\data_out_Q[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_105\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(0),
      O => \data_out_Q[0]_i_13_n_0\
    );
\data_out_Q[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(0),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(0),
      O => \data_out_Q[0]_i_14_n_0\
    );
\data_out_Q[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_105\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(0),
      O => \data_out_Q[0]_i_15_n_0\
    );
\data_out_Q[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(0),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(0),
      O => \data_out_Q[0]_i_8_n_0\
    );
\data_out_Q[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_105\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(0),
      O => \data_out_Q[0]_i_9_n_0\
    );
\data_out_Q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][10]\,
      I3 => \data_out_Q_reg[10]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[10]_i_3_n_0\,
      O => \data_out_Q[10]_i_1_n_0\
    );
\data_out_Q[10]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(10),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(10),
      O => \data_out_Q[10]_i_10_n_0\
    );
\data_out_Q[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_95\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(10),
      O => \data_out_Q[10]_i_11_n_0\
    );
\data_out_Q[10]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(10),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][10]\,
      O => \data_out_Q[10]_i_12_n_0\
    );
\data_out_Q[10]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_95\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(10),
      O => \data_out_Q[10]_i_13_n_0\
    );
\data_out_Q[10]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(10),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(10),
      O => \data_out_Q[10]_i_14_n_0\
    );
\data_out_Q[10]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_95\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(10),
      O => \data_out_Q[10]_i_15_n_0\
    );
\data_out_Q[10]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(10),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(10),
      O => \data_out_Q[10]_i_8_n_0\
    );
\data_out_Q[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_95\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(10),
      O => \data_out_Q[10]_i_9_n_0\
    );
\data_out_Q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][11]\,
      I3 => \data_out_Q_reg[11]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[11]_i_3_n_0\,
      O => \data_out_Q[11]_i_1_n_0\
    );
\data_out_Q[11]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(11),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(11),
      O => \data_out_Q[11]_i_10_n_0\
    );
\data_out_Q[11]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_94\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(11),
      O => \data_out_Q[11]_i_11_n_0\
    );
\data_out_Q[11]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(11),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][11]\,
      O => \data_out_Q[11]_i_12_n_0\
    );
\data_out_Q[11]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_94\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(11),
      O => \data_out_Q[11]_i_13_n_0\
    );
\data_out_Q[11]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(11),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(11),
      O => \data_out_Q[11]_i_14_n_0\
    );
\data_out_Q[11]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_94\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(11),
      O => \data_out_Q[11]_i_15_n_0\
    );
\data_out_Q[11]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(11),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(11),
      O => \data_out_Q[11]_i_8_n_0\
    );
\data_out_Q[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_94\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(11),
      O => \data_out_Q[11]_i_9_n_0\
    );
\data_out_Q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][12]\,
      I3 => \data_out_Q_reg[12]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[12]_i_3_n_0\,
      O => \data_out_Q[12]_i_1_n_0\
    );
\data_out_Q[12]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(12),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(12),
      O => \data_out_Q[12]_i_10_n_0\
    );
\data_out_Q[12]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_93\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(12),
      O => \data_out_Q[12]_i_11_n_0\
    );
\data_out_Q[12]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(12),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][12]\,
      O => \data_out_Q[12]_i_12_n_0\
    );
\data_out_Q[12]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_93\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(12),
      O => \data_out_Q[12]_i_13_n_0\
    );
\data_out_Q[12]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(12),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(12),
      O => \data_out_Q[12]_i_14_n_0\
    );
\data_out_Q[12]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_93\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(12),
      O => \data_out_Q[12]_i_15_n_0\
    );
\data_out_Q[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(12),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(12),
      O => \data_out_Q[12]_i_8_n_0\
    );
\data_out_Q[12]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_93\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(12),
      O => \data_out_Q[12]_i_9_n_0\
    );
\data_out_Q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][13]\,
      I3 => \data_out_Q_reg[13]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[13]_i_3_n_0\,
      O => \data_out_Q[13]_i_1_n_0\
    );
\data_out_Q[13]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(13),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(13),
      O => \data_out_Q[13]_i_10_n_0\
    );
\data_out_Q[13]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_92\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(13),
      O => \data_out_Q[13]_i_11_n_0\
    );
\data_out_Q[13]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(13),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][13]\,
      O => \data_out_Q[13]_i_12_n_0\
    );
\data_out_Q[13]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_92\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(13),
      O => \data_out_Q[13]_i_13_n_0\
    );
\data_out_Q[13]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(13),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(13),
      O => \data_out_Q[13]_i_14_n_0\
    );
\data_out_Q[13]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_92\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(13),
      O => \data_out_Q[13]_i_15_n_0\
    );
\data_out_Q[13]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(13),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(13),
      O => \data_out_Q[13]_i_8_n_0\
    );
\data_out_Q[13]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_92\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(13),
      O => \data_out_Q[13]_i_9_n_0\
    );
\data_out_Q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][14]\,
      I3 => \data_out_Q_reg[14]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[14]_i_3_n_0\,
      O => \data_out_Q[14]_i_1_n_0\
    );
\data_out_Q[14]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(14),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(14),
      O => \data_out_Q[14]_i_10_n_0\
    );
\data_out_Q[14]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_91\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(14),
      O => \data_out_Q[14]_i_11_n_0\
    );
\data_out_Q[14]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(14),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][14]\,
      O => \data_out_Q[14]_i_12_n_0\
    );
\data_out_Q[14]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_91\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(14),
      O => \data_out_Q[14]_i_13_n_0\
    );
\data_out_Q[14]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(14),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(14),
      O => \data_out_Q[14]_i_14_n_0\
    );
\data_out_Q[14]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_91\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(14),
      O => \data_out_Q[14]_i_15_n_0\
    );
\data_out_Q[14]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(14),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(14),
      O => \data_out_Q[14]_i_8_n_0\
    );
\data_out_Q[14]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_91\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(14),
      O => \data_out_Q[14]_i_9_n_0\
    );
\data_out_Q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][15]\,
      I3 => \data_out_Q_reg[15]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[15]_i_3_n_0\,
      O => \data_out_Q[15]_i_1_n_0\
    );
\data_out_Q[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(15),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(15),
      O => \data_out_Q[15]_i_10_n_0\
    );
\data_out_Q[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_90\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(15),
      O => \data_out_Q[15]_i_11_n_0\
    );
\data_out_Q[15]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(15),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][15]\,
      O => \data_out_Q[15]_i_12_n_0\
    );
\data_out_Q[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_90\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(15),
      O => \data_out_Q[15]_i_13_n_0\
    );
\data_out_Q[15]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(15),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(15),
      O => \data_out_Q[15]_i_14_n_0\
    );
\data_out_Q[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_90\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(15),
      O => \data_out_Q[15]_i_15_n_0\
    );
\data_out_Q[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(15),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(15),
      O => \data_out_Q[15]_i_8_n_0\
    );
\data_out_Q[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_90\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(15),
      O => \data_out_Q[15]_i_9_n_0\
    );
\data_out_Q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][1]\,
      I3 => \data_out_Q_reg[1]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[1]_i_3_n_0\,
      O => \data_out_Q[1]_i_1_n_0\
    );
\data_out_Q[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(1),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(1),
      O => \data_out_Q[1]_i_10_n_0\
    );
\data_out_Q[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_104\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(1),
      O => \data_out_Q[1]_i_11_n_0\
    );
\data_out_Q[1]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(1),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][1]\,
      O => \data_out_Q[1]_i_12_n_0\
    );
\data_out_Q[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_104\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(1),
      O => \data_out_Q[1]_i_13_n_0\
    );
\data_out_Q[1]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(1),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(1),
      O => \data_out_Q[1]_i_14_n_0\
    );
\data_out_Q[1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_104\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(1),
      O => \data_out_Q[1]_i_15_n_0\
    );
\data_out_Q[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(1),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(1),
      O => \data_out_Q[1]_i_8_n_0\
    );
\data_out_Q[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_104\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(1),
      O => \data_out_Q[1]_i_9_n_0\
    );
\data_out_Q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][2]\,
      I3 => \data_out_Q_reg[2]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[2]_i_3_n_0\,
      O => \data_out_Q[2]_i_1_n_0\
    );
\data_out_Q[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(2),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(2),
      O => \data_out_Q[2]_i_10_n_0\
    );
\data_out_Q[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_103\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(2),
      O => \data_out_Q[2]_i_11_n_0\
    );
\data_out_Q[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(2),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][2]\,
      O => \data_out_Q[2]_i_12_n_0\
    );
\data_out_Q[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_103\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(2),
      O => \data_out_Q[2]_i_13_n_0\
    );
\data_out_Q[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(2),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(2),
      O => \data_out_Q[2]_i_14_n_0\
    );
\data_out_Q[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_103\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(2),
      O => \data_out_Q[2]_i_15_n_0\
    );
\data_out_Q[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(2),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(2),
      O => \data_out_Q[2]_i_8_n_0\
    );
\data_out_Q[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_103\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(2),
      O => \data_out_Q[2]_i_9_n_0\
    );
\data_out_Q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][3]\,
      I3 => \data_out_Q_reg[3]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[3]_i_3_n_0\,
      O => \data_out_Q[3]_i_1_n_0\
    );
\data_out_Q[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(3),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(3),
      O => \data_out_Q[3]_i_10_n_0\
    );
\data_out_Q[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_102\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(3),
      O => \data_out_Q[3]_i_11_n_0\
    );
\data_out_Q[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(3),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][3]\,
      O => \data_out_Q[3]_i_12_n_0\
    );
\data_out_Q[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_102\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(3),
      O => \data_out_Q[3]_i_13_n_0\
    );
\data_out_Q[3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(3),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(3),
      O => \data_out_Q[3]_i_14_n_0\
    );
\data_out_Q[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_102\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(3),
      O => \data_out_Q[3]_i_15_n_0\
    );
\data_out_Q[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(3),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(3),
      O => \data_out_Q[3]_i_8_n_0\
    );
\data_out_Q[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_102\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(3),
      O => \data_out_Q[3]_i_9_n_0\
    );
\data_out_Q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][4]\,
      I3 => \data_out_Q_reg[4]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[4]_i_3_n_0\,
      O => \data_out_Q[4]_i_1_n_0\
    );
\data_out_Q[4]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(4),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(4),
      O => \data_out_Q[4]_i_10_n_0\
    );
\data_out_Q[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_101\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(4),
      O => \data_out_Q[4]_i_11_n_0\
    );
\data_out_Q[4]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(4),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][4]\,
      O => \data_out_Q[4]_i_12_n_0\
    );
\data_out_Q[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_101\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(4),
      O => \data_out_Q[4]_i_13_n_0\
    );
\data_out_Q[4]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(4),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(4),
      O => \data_out_Q[4]_i_14_n_0\
    );
\data_out_Q[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_101\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(4),
      O => \data_out_Q[4]_i_15_n_0\
    );
\data_out_Q[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(4),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(4),
      O => \data_out_Q[4]_i_8_n_0\
    );
\data_out_Q[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_101\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(4),
      O => \data_out_Q[4]_i_9_n_0\
    );
\data_out_Q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][5]\,
      I3 => \data_out_Q_reg[5]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[5]_i_3_n_0\,
      O => \data_out_Q[5]_i_1_n_0\
    );
\data_out_Q[5]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(5),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(5),
      O => \data_out_Q[5]_i_10_n_0\
    );
\data_out_Q[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_100\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(5),
      O => \data_out_Q[5]_i_11_n_0\
    );
\data_out_Q[5]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(5),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][5]\,
      O => \data_out_Q[5]_i_12_n_0\
    );
\data_out_Q[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_100\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(5),
      O => \data_out_Q[5]_i_13_n_0\
    );
\data_out_Q[5]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(5),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(5),
      O => \data_out_Q[5]_i_14_n_0\
    );
\data_out_Q[5]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_100\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(5),
      O => \data_out_Q[5]_i_15_n_0\
    );
\data_out_Q[5]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(5),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(5),
      O => \data_out_Q[5]_i_8_n_0\
    );
\data_out_Q[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_100\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(5),
      O => \data_out_Q[5]_i_9_n_0\
    );
\data_out_Q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][6]\,
      I3 => \data_out_Q_reg[6]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[6]_i_3_n_0\,
      O => \data_out_Q[6]_i_1_n_0\
    );
\data_out_Q[6]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(6),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(6),
      O => \data_out_Q[6]_i_10_n_0\
    );
\data_out_Q[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_99\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(6),
      O => \data_out_Q[6]_i_11_n_0\
    );
\data_out_Q[6]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(6),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][6]\,
      O => \data_out_Q[6]_i_12_n_0\
    );
\data_out_Q[6]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_99\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(6),
      O => \data_out_Q[6]_i_13_n_0\
    );
\data_out_Q[6]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(6),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(6),
      O => \data_out_Q[6]_i_14_n_0\
    );
\data_out_Q[6]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_99\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(6),
      O => \data_out_Q[6]_i_15_n_0\
    );
\data_out_Q[6]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(6),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(6),
      O => \data_out_Q[6]_i_8_n_0\
    );
\data_out_Q[6]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_99\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(6),
      O => \data_out_Q[6]_i_9_n_0\
    );
\data_out_Q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][7]\,
      I3 => \data_out_Q_reg[7]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[7]_i_3_n_0\,
      O => \data_out_Q[7]_i_1_n_0\
    );
\data_out_Q[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(7),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(7),
      O => \data_out_Q[7]_i_10_n_0\
    );
\data_out_Q[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_98\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(7),
      O => \data_out_Q[7]_i_11_n_0\
    );
\data_out_Q[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(7),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][7]\,
      O => \data_out_Q[7]_i_12_n_0\
    );
\data_out_Q[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_98\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(7),
      O => \data_out_Q[7]_i_13_n_0\
    );
\data_out_Q[7]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(7),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(7),
      O => \data_out_Q[7]_i_14_n_0\
    );
\data_out_Q[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_98\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(7),
      O => \data_out_Q[7]_i_15_n_0\
    );
\data_out_Q[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(7),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(7),
      O => \data_out_Q[7]_i_8_n_0\
    );
\data_out_Q[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_98\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(7),
      O => \data_out_Q[7]_i_9_n_0\
    );
\data_out_Q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][8]\,
      I3 => \data_out_Q_reg[8]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[8]_i_3_n_0\,
      O => \data_out_Q[8]_i_1_n_0\
    );
\data_out_Q[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(8),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(8),
      O => \data_out_Q[8]_i_10_n_0\
    );
\data_out_Q[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_97\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(8),
      O => \data_out_Q[8]_i_11_n_0\
    );
\data_out_Q[8]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(8),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][8]\,
      O => \data_out_Q[8]_i_12_n_0\
    );
\data_out_Q[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_97\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(8),
      O => \data_out_Q[8]_i_13_n_0\
    );
\data_out_Q[8]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(8),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(8),
      O => \data_out_Q[8]_i_14_n_0\
    );
\data_out_Q[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_97\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(8),
      O => \data_out_Q[8]_i_15_n_0\
    );
\data_out_Q[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(8),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(8),
      O => \data_out_Q[8]_i_8_n_0\
    );
\data_out_Q[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_97\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(8),
      O => \data_out_Q[8]_i_9_n_0\
    );
\data_out_Q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F780F7F7F7808080"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => \mul_reg_Q_reg_n_0_[0][9]\,
      I3 => \data_out_Q_reg[9]_i_2_n_0\,
      I4 => tail_tmp_reg(3),
      I5 => \data_out_Q_reg[9]_i_3_n_0\,
      O => \data_out_Q[9]_i_1_n_0\
    );
\data_out_Q[9]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[13]\(9),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[12]\(9),
      O => \data_out_Q[9]_i_10_n_0\
    );
\data_out_Q[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \ARG__0_n_96\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[14]\(9),
      O => \data_out_Q[9]_i_11_n_0\
    );
\data_out_Q[9]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[1]\(9),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg_n_0_[0][9]\,
      O => \data_out_Q[9]_i_12_n_0\
    );
\data_out_Q[9]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_96\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[2]\(9),
      O => \data_out_Q[9]_i_13_n_0\
    );
\data_out_Q[9]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[5]\(9),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[4]\(9),
      O => \data_out_Q[9]_i_14_n_0\
    );
\data_out_Q[9]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_96\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[6]\(9),
      O => \data_out_Q[9]_i_15_n_0\
    );
\data_out_Q[9]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mul_reg_Q_reg[9]\(9),
      I1 => tail_tmp_reg(0),
      I2 => \mul_reg_Q_reg[8]\(9),
      O => \data_out_Q[9]_i_8_n_0\
    );
\data_out_Q[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_96\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      I2 => tail_tmp_reg(0),
      I3 => \mul_reg_Q_reg[10]\(9),
      O => \data_out_Q[9]_i_9_n_0\
    );
\data_out_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[0]_i_1_n_0\,
      Q => data_out_Q(0),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[0]_i_4_n_0\,
      I1 => \data_out_Q_reg[0]_i_5_n_0\,
      O => \data_out_Q_reg[0]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[0]_i_6_n_0\,
      I1 => \data_out_Q_reg[0]_i_7_n_0\,
      O => \data_out_Q_reg[0]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[0]_i_8_n_0\,
      I1 => \data_out_Q[0]_i_9_n_0\,
      O => \data_out_Q_reg[0]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[0]_i_10_n_0\,
      I1 => \data_out_Q[0]_i_11_n_0\,
      O => \data_out_Q_reg[0]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[0]_i_12_n_0\,
      I1 => \data_out_Q[0]_i_13_n_0\,
      O => \data_out_Q_reg[0]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[0]_i_14_n_0\,
      I1 => \data_out_Q[0]_i_15_n_0\,
      O => \data_out_Q_reg[0]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[10]_i_1_n_0\,
      Q => data_out_Q(10),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[10]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[10]_i_4_n_0\,
      I1 => \data_out_Q_reg[10]_i_5_n_0\,
      O => \data_out_Q_reg[10]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[10]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[10]_i_6_n_0\,
      I1 => \data_out_Q_reg[10]_i_7_n_0\,
      O => \data_out_Q_reg[10]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[10]_i_8_n_0\,
      I1 => \data_out_Q[10]_i_9_n_0\,
      O => \data_out_Q_reg[10]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[10]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[10]_i_10_n_0\,
      I1 => \data_out_Q[10]_i_11_n_0\,
      O => \data_out_Q_reg[10]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[10]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[10]_i_12_n_0\,
      I1 => \data_out_Q[10]_i_13_n_0\,
      O => \data_out_Q_reg[10]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[10]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[10]_i_14_n_0\,
      I1 => \data_out_Q[10]_i_15_n_0\,
      O => \data_out_Q_reg[10]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[11]_i_1_n_0\,
      Q => data_out_Q(11),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[11]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[11]_i_4_n_0\,
      I1 => \data_out_Q_reg[11]_i_5_n_0\,
      O => \data_out_Q_reg[11]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[11]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[11]_i_6_n_0\,
      I1 => \data_out_Q_reg[11]_i_7_n_0\,
      O => \data_out_Q_reg[11]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[11]_i_8_n_0\,
      I1 => \data_out_Q[11]_i_9_n_0\,
      O => \data_out_Q_reg[11]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[11]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[11]_i_10_n_0\,
      I1 => \data_out_Q[11]_i_11_n_0\,
      O => \data_out_Q_reg[11]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[11]_i_12_n_0\,
      I1 => \data_out_Q[11]_i_13_n_0\,
      O => \data_out_Q_reg[11]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[11]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[11]_i_14_n_0\,
      I1 => \data_out_Q[11]_i_15_n_0\,
      O => \data_out_Q_reg[11]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[12]_i_1_n_0\,
      Q => data_out_Q(12),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[12]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[12]_i_4_n_0\,
      I1 => \data_out_Q_reg[12]_i_5_n_0\,
      O => \data_out_Q_reg[12]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[12]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[12]_i_6_n_0\,
      I1 => \data_out_Q_reg[12]_i_7_n_0\,
      O => \data_out_Q_reg[12]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[12]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[12]_i_8_n_0\,
      I1 => \data_out_Q[12]_i_9_n_0\,
      O => \data_out_Q_reg[12]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[12]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[12]_i_10_n_0\,
      I1 => \data_out_Q[12]_i_11_n_0\,
      O => \data_out_Q_reg[12]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[12]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[12]_i_12_n_0\,
      I1 => \data_out_Q[12]_i_13_n_0\,
      O => \data_out_Q_reg[12]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[12]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[12]_i_14_n_0\,
      I1 => \data_out_Q[12]_i_15_n_0\,
      O => \data_out_Q_reg[12]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[13]_i_1_n_0\,
      Q => data_out_Q(13),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[13]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[13]_i_4_n_0\,
      I1 => \data_out_Q_reg[13]_i_5_n_0\,
      O => \data_out_Q_reg[13]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[13]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[13]_i_6_n_0\,
      I1 => \data_out_Q_reg[13]_i_7_n_0\,
      O => \data_out_Q_reg[13]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[13]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[13]_i_8_n_0\,
      I1 => \data_out_Q[13]_i_9_n_0\,
      O => \data_out_Q_reg[13]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[13]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[13]_i_10_n_0\,
      I1 => \data_out_Q[13]_i_11_n_0\,
      O => \data_out_Q_reg[13]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[13]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[13]_i_12_n_0\,
      I1 => \data_out_Q[13]_i_13_n_0\,
      O => \data_out_Q_reg[13]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[13]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[13]_i_14_n_0\,
      I1 => \data_out_Q[13]_i_15_n_0\,
      O => \data_out_Q_reg[13]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[14]_i_1_n_0\,
      Q => data_out_Q(14),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[14]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[14]_i_4_n_0\,
      I1 => \data_out_Q_reg[14]_i_5_n_0\,
      O => \data_out_Q_reg[14]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[14]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[14]_i_6_n_0\,
      I1 => \data_out_Q_reg[14]_i_7_n_0\,
      O => \data_out_Q_reg[14]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[14]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[14]_i_8_n_0\,
      I1 => \data_out_Q[14]_i_9_n_0\,
      O => \data_out_Q_reg[14]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[14]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[14]_i_10_n_0\,
      I1 => \data_out_Q[14]_i_11_n_0\,
      O => \data_out_Q_reg[14]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[14]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[14]_i_12_n_0\,
      I1 => \data_out_Q[14]_i_13_n_0\,
      O => \data_out_Q_reg[14]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[14]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[14]_i_14_n_0\,
      I1 => \data_out_Q[14]_i_15_n_0\,
      O => \data_out_Q_reg[14]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[15]_i_1_n_0\,
      Q => data_out_Q(15),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[15]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[15]_i_4_n_0\,
      I1 => \data_out_Q_reg[15]_i_5_n_0\,
      O => \data_out_Q_reg[15]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[15]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[15]_i_6_n_0\,
      I1 => \data_out_Q_reg[15]_i_7_n_0\,
      O => \data_out_Q_reg[15]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[15]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[15]_i_8_n_0\,
      I1 => \data_out_Q[15]_i_9_n_0\,
      O => \data_out_Q_reg[15]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[15]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[15]_i_10_n_0\,
      I1 => \data_out_Q[15]_i_11_n_0\,
      O => \data_out_Q_reg[15]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[15]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[15]_i_12_n_0\,
      I1 => \data_out_Q[15]_i_13_n_0\,
      O => \data_out_Q_reg[15]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[15]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[15]_i_14_n_0\,
      I1 => \data_out_Q[15]_i_15_n_0\,
      O => \data_out_Q_reg[15]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[1]_i_1_n_0\,
      Q => data_out_Q(1),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[1]_i_4_n_0\,
      I1 => \data_out_Q_reg[1]_i_5_n_0\,
      O => \data_out_Q_reg[1]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[1]_i_6_n_0\,
      I1 => \data_out_Q_reg[1]_i_7_n_0\,
      O => \data_out_Q_reg[1]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[1]_i_8_n_0\,
      I1 => \data_out_Q[1]_i_9_n_0\,
      O => \data_out_Q_reg[1]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[1]_i_10_n_0\,
      I1 => \data_out_Q[1]_i_11_n_0\,
      O => \data_out_Q_reg[1]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[1]_i_12_n_0\,
      I1 => \data_out_Q[1]_i_13_n_0\,
      O => \data_out_Q_reg[1]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[1]_i_14_n_0\,
      I1 => \data_out_Q[1]_i_15_n_0\,
      O => \data_out_Q_reg[1]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[2]_i_1_n_0\,
      Q => data_out_Q(2),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[2]_i_4_n_0\,
      I1 => \data_out_Q_reg[2]_i_5_n_0\,
      O => \data_out_Q_reg[2]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[2]_i_6_n_0\,
      I1 => \data_out_Q_reg[2]_i_7_n_0\,
      O => \data_out_Q_reg[2]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[2]_i_8_n_0\,
      I1 => \data_out_Q[2]_i_9_n_0\,
      O => \data_out_Q_reg[2]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[2]_i_10_n_0\,
      I1 => \data_out_Q[2]_i_11_n_0\,
      O => \data_out_Q_reg[2]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[2]_i_12_n_0\,
      I1 => \data_out_Q[2]_i_13_n_0\,
      O => \data_out_Q_reg[2]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[2]_i_14_n_0\,
      I1 => \data_out_Q[2]_i_15_n_0\,
      O => \data_out_Q_reg[2]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[3]_i_1_n_0\,
      Q => data_out_Q(3),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[3]_i_4_n_0\,
      I1 => \data_out_Q_reg[3]_i_5_n_0\,
      O => \data_out_Q_reg[3]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[3]_i_6_n_0\,
      I1 => \data_out_Q_reg[3]_i_7_n_0\,
      O => \data_out_Q_reg[3]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[3]_i_8_n_0\,
      I1 => \data_out_Q[3]_i_9_n_0\,
      O => \data_out_Q_reg[3]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[3]_i_10_n_0\,
      I1 => \data_out_Q[3]_i_11_n_0\,
      O => \data_out_Q_reg[3]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[3]_i_12_n_0\,
      I1 => \data_out_Q[3]_i_13_n_0\,
      O => \data_out_Q_reg[3]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[3]_i_14_n_0\,
      I1 => \data_out_Q[3]_i_15_n_0\,
      O => \data_out_Q_reg[3]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[4]_i_1_n_0\,
      Q => data_out_Q(4),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[4]_i_4_n_0\,
      I1 => \data_out_Q_reg[4]_i_5_n_0\,
      O => \data_out_Q_reg[4]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[4]_i_6_n_0\,
      I1 => \data_out_Q_reg[4]_i_7_n_0\,
      O => \data_out_Q_reg[4]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[4]_i_8_n_0\,
      I1 => \data_out_Q[4]_i_9_n_0\,
      O => \data_out_Q_reg[4]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[4]_i_10_n_0\,
      I1 => \data_out_Q[4]_i_11_n_0\,
      O => \data_out_Q_reg[4]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[4]_i_12_n_0\,
      I1 => \data_out_Q[4]_i_13_n_0\,
      O => \data_out_Q_reg[4]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[4]_i_14_n_0\,
      I1 => \data_out_Q[4]_i_15_n_0\,
      O => \data_out_Q_reg[4]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[5]_i_1_n_0\,
      Q => data_out_Q(5),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[5]_i_4_n_0\,
      I1 => \data_out_Q_reg[5]_i_5_n_0\,
      O => \data_out_Q_reg[5]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[5]_i_6_n_0\,
      I1 => \data_out_Q_reg[5]_i_7_n_0\,
      O => \data_out_Q_reg[5]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[5]_i_8_n_0\,
      I1 => \data_out_Q[5]_i_9_n_0\,
      O => \data_out_Q_reg[5]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[5]_i_10_n_0\,
      I1 => \data_out_Q[5]_i_11_n_0\,
      O => \data_out_Q_reg[5]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[5]_i_12_n_0\,
      I1 => \data_out_Q[5]_i_13_n_0\,
      O => \data_out_Q_reg[5]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[5]_i_14_n_0\,
      I1 => \data_out_Q[5]_i_15_n_0\,
      O => \data_out_Q_reg[5]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[6]_i_1_n_0\,
      Q => data_out_Q(6),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[6]_i_4_n_0\,
      I1 => \data_out_Q_reg[6]_i_5_n_0\,
      O => \data_out_Q_reg[6]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[6]_i_6_n_0\,
      I1 => \data_out_Q_reg[6]_i_7_n_0\,
      O => \data_out_Q_reg[6]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[6]_i_8_n_0\,
      I1 => \data_out_Q[6]_i_9_n_0\,
      O => \data_out_Q_reg[6]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[6]_i_10_n_0\,
      I1 => \data_out_Q[6]_i_11_n_0\,
      O => \data_out_Q_reg[6]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[6]_i_12_n_0\,
      I1 => \data_out_Q[6]_i_13_n_0\,
      O => \data_out_Q_reg[6]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[6]_i_14_n_0\,
      I1 => \data_out_Q[6]_i_15_n_0\,
      O => \data_out_Q_reg[6]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[7]_i_1_n_0\,
      Q => data_out_Q(7),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[7]_i_4_n_0\,
      I1 => \data_out_Q_reg[7]_i_5_n_0\,
      O => \data_out_Q_reg[7]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[7]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[7]_i_6_n_0\,
      I1 => \data_out_Q_reg[7]_i_7_n_0\,
      O => \data_out_Q_reg[7]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[7]_i_8_n_0\,
      I1 => \data_out_Q[7]_i_9_n_0\,
      O => \data_out_Q_reg[7]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[7]_i_10_n_0\,
      I1 => \data_out_Q[7]_i_11_n_0\,
      O => \data_out_Q_reg[7]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[7]_i_12_n_0\,
      I1 => \data_out_Q[7]_i_13_n_0\,
      O => \data_out_Q_reg[7]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[7]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[7]_i_14_n_0\,
      I1 => \data_out_Q[7]_i_15_n_0\,
      O => \data_out_Q_reg[7]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[8]_i_1_n_0\,
      Q => data_out_Q(8),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[8]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[8]_i_4_n_0\,
      I1 => \data_out_Q_reg[8]_i_5_n_0\,
      O => \data_out_Q_reg[8]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[8]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[8]_i_6_n_0\,
      I1 => \data_out_Q_reg[8]_i_7_n_0\,
      O => \data_out_Q_reg[8]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[8]_i_8_n_0\,
      I1 => \data_out_Q[8]_i_9_n_0\,
      O => \data_out_Q_reg[8]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[8]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[8]_i_10_n_0\,
      I1 => \data_out_Q[8]_i_11_n_0\,
      O => \data_out_Q_reg[8]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[8]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[8]_i_12_n_0\,
      I1 => \data_out_Q[8]_i_13_n_0\,
      O => \data_out_Q_reg[8]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[8]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[8]_i_14_n_0\,
      I1 => \data_out_Q[8]_i_15_n_0\,
      O => \data_out_Q_reg[8]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_1_in,
      D => \data_out_Q[9]_i_1_n_0\,
      Q => data_out_Q(9),
      R => \data_out_I[15]_i_1_n_0\
    );
\data_out_Q_reg[9]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[9]_i_4_n_0\,
      I1 => \data_out_Q_reg[9]_i_5_n_0\,
      O => \data_out_Q_reg[9]_i_2_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[9]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_Q_reg[9]_i_6_n_0\,
      I1 => \data_out_Q_reg[9]_i_7_n_0\,
      O => \data_out_Q_reg[9]_i_3_n_0\,
      S => tail_tmp_reg(2)
    );
\data_out_Q_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[9]_i_8_n_0\,
      I1 => \data_out_Q[9]_i_9_n_0\,
      O => \data_out_Q_reg[9]_i_4_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[9]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[9]_i_10_n_0\,
      I1 => \data_out_Q[9]_i_11_n_0\,
      O => \data_out_Q_reg[9]_i_5_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[9]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[9]_i_12_n_0\,
      I1 => \data_out_Q[9]_i_13_n_0\,
      O => \data_out_Q_reg[9]_i_6_n_0\,
      S => tail_tmp_reg(1)
    );
\data_out_Q_reg[9]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out_Q[9]_i_14_n_0\,
      I1 => \data_out_Q[9]_i_15_n_0\,
      O => \data_out_Q_reg[9]_i_7_n_0\,
      S => tail_tmp_reg(1)
    );
data_out_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F888"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => tail_tmp2,
      I3 => phase_counter(1),
      I4 => phase_counter(0),
      O => data_out_valid_i_1_n_0
    );
data_out_valid_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(4),
      I1 => tail_tmp_reg(5),
      O => data_out_valid_i_10_n_0
    );
data_out_valid_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(18),
      I1 => tail_tmp_reg(19),
      O => data_out_valid_i_11_n_0
    );
data_out_valid_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(16),
      I1 => tail_tmp_reg(17),
      O => data_out_valid_i_12_n_0
    );
data_out_valid_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(14),
      I1 => tail_tmp_reg(15),
      O => data_out_valid_i_13_n_0
    );
data_out_valid_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(12),
      I1 => tail_tmp_reg(13),
      O => data_out_valid_i_14_n_0
    );
data_out_valid_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(10),
      I1 => tail_tmp_reg(11),
      O => data_out_valid_i_15_n_0
    );
data_out_valid_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(8),
      I1 => tail_tmp_reg(9),
      O => data_out_valid_i_16_n_0
    );
data_out_valid_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(6),
      I1 => tail_tmp_reg(7),
      O => data_out_valid_i_17_n_0
    );
data_out_valid_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tail_tmp_reg(4),
      I1 => tail_tmp_reg(5),
      O => data_out_valid_i_18_n_0
    );
data_out_valid_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(30),
      I1 => tail_tmp_reg(31),
      O => data_out_valid_i_4_n_0
    );
data_out_valid_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(28),
      I1 => tail_tmp_reg(29),
      O => data_out_valid_i_5_n_0
    );
data_out_valid_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(26),
      I1 => tail_tmp_reg(27),
      O => data_out_valid_i_6_n_0
    );
data_out_valid_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(24),
      I1 => tail_tmp_reg(25),
      O => data_out_valid_i_7_n_0
    );
data_out_valid_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(22),
      I1 => tail_tmp_reg(23),
      O => data_out_valid_i_8_n_0
    );
data_out_valid_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(20),
      I1 => tail_tmp_reg(21),
      O => data_out_valid_i_9_n_0
    );
data_out_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => data_out_valid_i_1_n_0,
      Q => data_out_valid
    );
data_out_valid_reg_i_2: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_valid_reg_i_3_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => NLW_data_out_valid_reg_i_2_CO_UNCONNECTED(7 downto 6),
      CO(5) => tail_tmp2,
      CO(4) => data_out_valid_reg_i_2_n_3,
      CO(3) => data_out_valid_reg_i_2_n_4,
      CO(2) => data_out_valid_reg_i_2_n_5,
      CO(1) => data_out_valid_reg_i_2_n_6,
      CO(0) => data_out_valid_reg_i_2_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => tail_tmp_reg(31),
      DI(4 downto 0) => B"00000",
      O(7 downto 0) => NLW_data_out_valid_reg_i_2_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => data_out_valid_i_4_n_0,
      S(4) => data_out_valid_i_5_n_0,
      S(3) => data_out_valid_i_6_n_0,
      S(2) => data_out_valid_i_7_n_0,
      S(1) => data_out_valid_i_8_n_0,
      S(0) => data_out_valid_i_9_n_0
    );
data_out_valid_reg_i_3: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out_valid_reg_i_3_n_0,
      CO(6) => data_out_valid_reg_i_3_n_1,
      CO(5) => data_out_valid_reg_i_3_n_2,
      CO(4) => data_out_valid_reg_i_3_n_3,
      CO(3) => data_out_valid_reg_i_3_n_4,
      CO(2) => data_out_valid_reg_i_3_n_5,
      CO(1) => data_out_valid_reg_i_3_n_6,
      CO(0) => data_out_valid_reg_i_3_n_7,
      DI(7 downto 1) => B"0000000",
      DI(0) => data_out_valid_i_10_n_0,
      O(7 downto 0) => NLW_data_out_valid_reg_i_3_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_valid_i_11_n_0,
      S(6) => data_out_valid_i_12_n_0,
      S(5) => data_out_valid_i_13_n_0,
      S(4) => data_out_valid_i_14_n_0,
      S(3) => data_out_valid_i_15_n_0,
      S(2) => data_out_valid_i_16_n_0,
      S(1) => data_out_valid_i_17_n_0,
      S(0) => data_out_valid_i_18_n_0
    );
filter2fifo_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF077F077F077"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => filter2fifo_ready_reg_n_0,
      I3 => reset,
      I4 => phase_counter(0),
      I5 => phase_counter(1),
      O => filter2fifo_ready_i_1_n_0
    );
filter2fifo_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => filter2fifo_ready_i_1_n_0,
      Q => filter2fifo_ready_reg_n_0,
      R => '0'
    );
\mul_reg_I[10][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_105\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(0)
    );
\mul_reg_I[10][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_95\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(10)
    );
\mul_reg_I[10][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_94\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(11)
    );
\mul_reg_I[10][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_93\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(12)
    );
\mul_reg_I[10][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_92\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(13)
    );
\mul_reg_I[10][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_91\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(14)
    );
\mul_reg_I[10][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_90\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(15)
    );
\mul_reg_I[10][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_89\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(16)
    );
\mul_reg_I[10][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_88\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(17)
    );
\mul_reg_I[10][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_87\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(18)
    );
\mul_reg_I[10][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_86\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(19)
    );
\mul_reg_I[10][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_104\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(1)
    );
\mul_reg_I[10][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_85\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(20)
    );
\mul_reg_I[10][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_84\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(21)
    );
\mul_reg_I[10][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_83\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(22)
    );
\mul_reg_I[10][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_82\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(23)
    );
\mul_reg_I[10][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_81\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(24)
    );
\mul_reg_I[10][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_80\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(25)
    );
\mul_reg_I[10][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_79\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(26)
    );
\mul_reg_I[10][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_78\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(27)
    );
\mul_reg_I[10][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_77\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(28)
    );
\mul_reg_I[10][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_76\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(29)
    );
\mul_reg_I[10][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_103\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(2)
    );
\mul_reg_I[10][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_75\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(30)
    );
\mul_reg_I[10][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_74\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(31)
    );
\mul_reg_I[10][32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_73\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(32)
    );
\mul_reg_I[10][33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_72\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(33)
    );
\mul_reg_I[10][34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_71\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(34)
    );
\mul_reg_I[10][35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_70\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(35)
    );
\mul_reg_I[10][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_102\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(3)
    );
\mul_reg_I[10][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_101\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(4)
    );
\mul_reg_I[10][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_100\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(5)
    );
\mul_reg_I[10][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_99\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(6)
    );
\mul_reg_I[10][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_98\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(7)
    );
\mul_reg_I[10][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_97\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(8)
    );
\mul_reg_I[10][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_96\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[11]\(9)
    );
\mul_reg_I[14][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(0),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(0)
    );
\mul_reg_I[14][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(10),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(10)
    );
\mul_reg_I[14][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(11),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(11)
    );
\mul_reg_I[14][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(12),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(12)
    );
\mul_reg_I[14][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(13),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(13)
    );
\mul_reg_I[14][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(14),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(14)
    );
\mul_reg_I[14][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(15),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(15)
    );
\mul_reg_I[14][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(16),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(16)
    );
\mul_reg_I[14][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(17),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(17)
    );
\mul_reg_I[14][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(18),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(18)
    );
\mul_reg_I[14][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(19),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(19)
    );
\mul_reg_I[14][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(1),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(1)
    );
\mul_reg_I[14][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(20),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(20)
    );
\mul_reg_I[14][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(21),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(21)
    );
\mul_reg_I[14][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(22),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(22)
    );
\mul_reg_I[14][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(23),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(23)
    );
\mul_reg_I[14][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(24),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(24)
    );
\mul_reg_I[14][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(25),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(25)
    );
\mul_reg_I[14][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(26),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(26)
    );
\mul_reg_I[14][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(27),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(27)
    );
\mul_reg_I[14][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(28),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(28)
    );
\mul_reg_I[14][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(29),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(29)
    );
\mul_reg_I[14][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(2),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(2)
    );
\mul_reg_I[14][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(30),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(30)
    );
\mul_reg_I[14][35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(31),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(35)
    );
\mul_reg_I[14][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(3),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(3)
    );
\mul_reg_I[14][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(4),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(4)
    );
\mul_reg_I[14][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(5),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(5)
    );
\mul_reg_I[14][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(6),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(6)
    );
\mul_reg_I[14][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(7),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(7)
    );
\mul_reg_I[14][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(8),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(8)
    );
\mul_reg_I[14][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__1\(9),
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[15]\(9)
    );
\mul_reg_I[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_105\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(0)
    );
\mul_reg_I[2][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_95\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(10)
    );
\mul_reg_I[2][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_94\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(11)
    );
\mul_reg_I[2][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_93\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(12)
    );
\mul_reg_I[2][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_92\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(13)
    );
\mul_reg_I[2][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_91\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(14)
    );
\mul_reg_I[2][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_90\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(15)
    );
\mul_reg_I[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_104\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(1)
    );
\mul_reg_I[2][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_103\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(2)
    );
\mul_reg_I[2][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_102\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(3)
    );
\mul_reg_I[2][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_101\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(4)
    );
\mul_reg_I[2][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_100\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(5)
    );
\mul_reg_I[2][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_99\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(6)
    );
\mul_reg_I[2][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_98\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(7)
    );
\mul_reg_I[2][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_97\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(8)
    );
\mul_reg_I[2][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_96\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[3]\(9)
    );
\mul_reg_I[6][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_105\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(0)
    );
\mul_reg_I[6][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_95\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(10)
    );
\mul_reg_I[6][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_94\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(11)
    );
\mul_reg_I[6][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_93\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(12)
    );
\mul_reg_I[6][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_92\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(13)
    );
\mul_reg_I[6][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_91\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(14)
    );
\mul_reg_I[6][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_90\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(15)
    );
\mul_reg_I[6][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_89\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(16)
    );
\mul_reg_I[6][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_88\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(17)
    );
\mul_reg_I[6][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_87\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(18)
    );
\mul_reg_I[6][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_86\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(19)
    );
\mul_reg_I[6][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_104\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(1)
    );
\mul_reg_I[6][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_85\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(20)
    );
\mul_reg_I[6][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_84\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(21)
    );
\mul_reg_I[6][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_83\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(22)
    );
\mul_reg_I[6][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_82\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(23)
    );
\mul_reg_I[6][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_81\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(24)
    );
\mul_reg_I[6][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_80\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(25)
    );
\mul_reg_I[6][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_79\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(26)
    );
\mul_reg_I[6][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_78\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(27)
    );
\mul_reg_I[6][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_77\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(28)
    );
\mul_reg_I[6][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_76\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(29)
    );
\mul_reg_I[6][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_103\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(2)
    );
\mul_reg_I[6][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_75\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(30)
    );
\mul_reg_I[6][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_74\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(31)
    );
\mul_reg_I[6][32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_73\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(32)
    );
\mul_reg_I[6][33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_72\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(33)
    );
\mul_reg_I[6][34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_71\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(34)
    );
\mul_reg_I[6][35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_70\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(35)
    );
\mul_reg_I[6][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_102\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(3)
    );
\mul_reg_I[6][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_101\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(4)
    );
\mul_reg_I[6][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_100\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(5)
    );
\mul_reg_I[6][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_99\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(6)
    );
\mul_reg_I[6][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_98\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(7)
    );
\mul_reg_I[6][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_97\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(8)
    );
\mul_reg_I[6][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_96\,
      I1 => \mul_reg_I_reg[14][35]_i_2_n_0\,
      O => \mul_reg_I_reg[7]\(9)
    );
\mul_reg_I_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(0),
      Q => \mul_reg_I_reg_n_0_[0][0]\
    );
\mul_reg_I_reg[0][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(10),
      Q => \mul_reg_I_reg_n_0_[0][10]\
    );
\mul_reg_I_reg[0][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(11),
      Q => \mul_reg_I_reg_n_0_[0][11]\
    );
\mul_reg_I_reg[0][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(12),
      Q => \mul_reg_I_reg_n_0_[0][12]\
    );
\mul_reg_I_reg[0][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(13),
      Q => \mul_reg_I_reg_n_0_[0][13]\
    );
\mul_reg_I_reg[0][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(14),
      Q => \mul_reg_I_reg_n_0_[0][14]\
    );
\mul_reg_I_reg[0][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(15),
      Q => \mul_reg_I_reg_n_0_[0][15]\
    );
\mul_reg_I_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(1),
      Q => \mul_reg_I_reg_n_0_[0][1]\
    );
\mul_reg_I_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(2),
      Q => \mul_reg_I_reg_n_0_[0][2]\
    );
\mul_reg_I_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(3),
      Q => \mul_reg_I_reg_n_0_[0][3]\
    );
\mul_reg_I_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(4),
      Q => \mul_reg_I_reg_n_0_[0][4]\
    );
\mul_reg_I_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(5),
      Q => \mul_reg_I_reg_n_0_[0][5]\
    );
\mul_reg_I_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(6),
      Q => \mul_reg_I_reg_n_0_[0][6]\
    );
\mul_reg_I_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(7),
      Q => \mul_reg_I_reg_n_0_[0][7]\
    );
\mul_reg_I_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(8),
      Q => \mul_reg_I_reg_n_0_[0][8]\
    );
\mul_reg_I_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(9),
      Q => \mul_reg_I_reg_n_0_[0][9]\
    );
\mul_reg_I_reg[10][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(0),
      Q => \mul_reg_I_reg[10]\(0)
    );
\mul_reg_I_reg[10][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(10),
      Q => \mul_reg_I_reg[10]\(10)
    );
\mul_reg_I_reg[10][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(11),
      Q => \mul_reg_I_reg[10]\(11)
    );
\mul_reg_I_reg[10][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(12),
      Q => \mul_reg_I_reg[10]\(12)
    );
\mul_reg_I_reg[10][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(13),
      Q => \mul_reg_I_reg[10]\(13)
    );
\mul_reg_I_reg[10][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(14),
      Q => \mul_reg_I_reg[10]\(14)
    );
\mul_reg_I_reg[10][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(15),
      Q => \mul_reg_I_reg[10]\(15)
    );
\mul_reg_I_reg[10][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(16),
      Q => \mul_reg_I_reg[10]\(16)
    );
\mul_reg_I_reg[10][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(17),
      Q => \mul_reg_I_reg[10]\(17)
    );
\mul_reg_I_reg[10][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(18),
      Q => \mul_reg_I_reg[10]\(18)
    );
\mul_reg_I_reg[10][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(19),
      Q => \mul_reg_I_reg[10]\(19)
    );
\mul_reg_I_reg[10][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(1),
      Q => \mul_reg_I_reg[10]\(1)
    );
\mul_reg_I_reg[10][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(20),
      Q => \mul_reg_I_reg[10]\(20)
    );
\mul_reg_I_reg[10][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(21),
      Q => \mul_reg_I_reg[10]\(21)
    );
\mul_reg_I_reg[10][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(22),
      Q => \mul_reg_I_reg[10]\(22)
    );
\mul_reg_I_reg[10][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(23),
      Q => \mul_reg_I_reg[10]\(23)
    );
\mul_reg_I_reg[10][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(24),
      Q => \mul_reg_I_reg[10]\(24)
    );
\mul_reg_I_reg[10][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(25),
      Q => \mul_reg_I_reg[10]\(25)
    );
\mul_reg_I_reg[10][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(26),
      Q => \mul_reg_I_reg[10]\(26)
    );
\mul_reg_I_reg[10][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(27),
      Q => \mul_reg_I_reg[10]\(27)
    );
\mul_reg_I_reg[10][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(28),
      Q => \mul_reg_I_reg[10]\(28)
    );
\mul_reg_I_reg[10][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(29),
      Q => \mul_reg_I_reg[10]\(29)
    );
\mul_reg_I_reg[10][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(2),
      Q => \mul_reg_I_reg[10]\(2)
    );
\mul_reg_I_reg[10][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(30),
      Q => \mul_reg_I_reg[10]\(30)
    );
\mul_reg_I_reg[10][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(31),
      Q => \mul_reg_I_reg[10]\(31)
    );
\mul_reg_I_reg[10][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(32),
      Q => \mul_reg_I_reg[10]\(32)
    );
\mul_reg_I_reg[10][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(33),
      Q => \mul_reg_I_reg[10]\(33)
    );
\mul_reg_I_reg[10][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(34),
      Q => \mul_reg_I_reg[10]\(34)
    );
\mul_reg_I_reg[10][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(35),
      Q => \mul_reg_I_reg[10]\(35)
    );
\mul_reg_I_reg[10][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(3),
      Q => \mul_reg_I_reg[10]\(3)
    );
\mul_reg_I_reg[10][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(4),
      Q => \mul_reg_I_reg[10]\(4)
    );
\mul_reg_I_reg[10][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(5),
      Q => \mul_reg_I_reg[10]\(5)
    );
\mul_reg_I_reg[10][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(6),
      Q => \mul_reg_I_reg[10]\(6)
    );
\mul_reg_I_reg[10][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(7),
      Q => \mul_reg_I_reg[10]\(7)
    );
\mul_reg_I_reg[10][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(8),
      Q => \mul_reg_I_reg[10]\(8)
    );
\mul_reg_I_reg[10][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(9),
      Q => \mul_reg_I_reg[10]\(9)
    );
\mul_reg_I_reg[11]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => m_axis_tdata(15),
      A(28) => m_axis_tdata(15),
      A(27) => m_axis_tdata(15),
      A(26) => m_axis_tdata(15),
      A(25) => m_axis_tdata(15),
      A(24) => m_axis_tdata(15),
      A(23) => m_axis_tdata(15),
      A(22) => m_axis_tdata(15),
      A(21) => m_axis_tdata(15),
      A(20) => m_axis_tdata(15),
      A(19) => m_axis_tdata(15),
      A(18) => m_axis_tdata(15),
      A(17) => m_axis_tdata(15),
      A(16) => m_axis_tdata(15),
      A(15 downto 0) => m_axis_tdata(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_I_reg[11]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[0]\(11),
      B(13) => '0',
      B(12 downto 11) => \coeff_reg_reg[2]\(12 downto 11),
      B(10) => \coeff_reg_reg[0]\(12),
      B(9) => \coeff_reg_reg[1]\(10),
      B(8 downto 7) => \coeff_reg_reg[2]\(12 downto 11),
      B(6) => \coeff_reg_reg[0]\(12),
      B(5) => \coeff_reg_reg[1]\(10),
      B(4 downto 3) => \coeff_reg_reg[2]\(12 downto 11),
      B(2) => \coeff_reg_reg[0]\(12),
      B(1) => \coeff_reg_reg[1]\(10),
      B(0) => \coeff_reg_reg[2]\(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_I_reg[11]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_I_reg[12]\(35),
      C(46) => \mul_reg_I_reg[12]\(35),
      C(45) => \mul_reg_I_reg[12]\(35),
      C(44) => \mul_reg_I_reg[12]\(35),
      C(43) => \mul_reg_I_reg[12]\(35),
      C(42) => \mul_reg_I_reg[12]\(35),
      C(41) => \mul_reg_I_reg[12]\(35),
      C(40) => \mul_reg_I_reg[12]\(35),
      C(39) => \mul_reg_I_reg[12]\(35),
      C(38) => \mul_reg_I_reg[12]\(35),
      C(37) => \mul_reg_I_reg[12]\(35),
      C(36) => \mul_reg_I_reg[12]\(35),
      C(35) => \mul_reg_I_reg[12]\(35),
      C(34) => \mul_reg_I_reg[12]\(35),
      C(33) => \mul_reg_I_reg[12]\(35),
      C(32) => \mul_reg_I_reg[12]\(35),
      C(31) => \mul_reg_I_reg[12]\(35),
      C(30 downto 0) => \mul_reg_I_reg[12]\(30 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_I_reg[11]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_I_reg[11]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => filter2fifo_ready1,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_I_reg[11]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_I_reg[11]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 36) => \NLW_mul_reg_I_reg[11]0_P_UNCONNECTED\(47 downto 36),
      P(35) => \mul_reg_I_reg[11]0_n_70\,
      P(34) => \mul_reg_I_reg[11]0_n_71\,
      P(33) => \mul_reg_I_reg[11]0_n_72\,
      P(32) => \mul_reg_I_reg[11]0_n_73\,
      P(31) => \mul_reg_I_reg[11]0_n_74\,
      P(30) => \mul_reg_I_reg[11]0_n_75\,
      P(29) => \mul_reg_I_reg[11]0_n_76\,
      P(28) => \mul_reg_I_reg[11]0_n_77\,
      P(27) => \mul_reg_I_reg[11]0_n_78\,
      P(26) => \mul_reg_I_reg[11]0_n_79\,
      P(25) => \mul_reg_I_reg[11]0_n_80\,
      P(24) => \mul_reg_I_reg[11]0_n_81\,
      P(23) => \mul_reg_I_reg[11]0_n_82\,
      P(22) => \mul_reg_I_reg[11]0_n_83\,
      P(21) => \mul_reg_I_reg[11]0_n_84\,
      P(20) => \mul_reg_I_reg[11]0_n_85\,
      P(19) => \mul_reg_I_reg[11]0_n_86\,
      P(18) => \mul_reg_I_reg[11]0_n_87\,
      P(17) => \mul_reg_I_reg[11]0_n_88\,
      P(16) => \mul_reg_I_reg[11]0_n_89\,
      P(15) => \mul_reg_I_reg[11]0_n_90\,
      P(14) => \mul_reg_I_reg[11]0_n_91\,
      P(13) => \mul_reg_I_reg[11]0_n_92\,
      P(12) => \mul_reg_I_reg[11]0_n_93\,
      P(11) => \mul_reg_I_reg[11]0_n_94\,
      P(10) => \mul_reg_I_reg[11]0_n_95\,
      P(9) => \mul_reg_I_reg[11]0_n_96\,
      P(8) => \mul_reg_I_reg[11]0_n_97\,
      P(7) => \mul_reg_I_reg[11]0_n_98\,
      P(6) => \mul_reg_I_reg[11]0_n_99\,
      P(5) => \mul_reg_I_reg[11]0_n_100\,
      P(4) => \mul_reg_I_reg[11]0_n_101\,
      P(3) => \mul_reg_I_reg[11]0_n_102\,
      P(2) => \mul_reg_I_reg[11]0_n_103\,
      P(1) => \mul_reg_I_reg[11]0_n_104\,
      P(0) => \mul_reg_I_reg[11]0_n_105\,
      PATTERNBDETECT => \NLW_mul_reg_I_reg[11]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_I_reg[11]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_I_reg[11]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_I_reg[11]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_I_reg[11]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_I_reg[12][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(0),
      Q => \mul_reg_I_reg[12]\(0)
    );
\mul_reg_I_reg[12][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(10),
      Q => \mul_reg_I_reg[12]\(10)
    );
\mul_reg_I_reg[12][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(11),
      Q => \mul_reg_I_reg[12]\(11)
    );
\mul_reg_I_reg[12][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(12),
      Q => \mul_reg_I_reg[12]\(12)
    );
\mul_reg_I_reg[12][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(13),
      Q => \mul_reg_I_reg[12]\(13)
    );
\mul_reg_I_reg[12][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(14),
      Q => \mul_reg_I_reg[12]\(14)
    );
\mul_reg_I_reg[12][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(15),
      Q => \mul_reg_I_reg[12]\(15)
    );
\mul_reg_I_reg[12][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(16),
      Q => \mul_reg_I_reg[12]\(16)
    );
\mul_reg_I_reg[12][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(17),
      Q => \mul_reg_I_reg[12]\(17)
    );
\mul_reg_I_reg[12][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(18),
      Q => \mul_reg_I_reg[12]\(18)
    );
\mul_reg_I_reg[12][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(19),
      Q => \mul_reg_I_reg[12]\(19)
    );
\mul_reg_I_reg[12][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(1),
      Q => \mul_reg_I_reg[12]\(1)
    );
\mul_reg_I_reg[12][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(20),
      Q => \mul_reg_I_reg[12]\(20)
    );
\mul_reg_I_reg[12][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(21),
      Q => \mul_reg_I_reg[12]\(21)
    );
\mul_reg_I_reg[12][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(22),
      Q => \mul_reg_I_reg[12]\(22)
    );
\mul_reg_I_reg[12][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(23),
      Q => \mul_reg_I_reg[12]\(23)
    );
\mul_reg_I_reg[12][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(24),
      Q => \mul_reg_I_reg[12]\(24)
    );
\mul_reg_I_reg[12][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(25),
      Q => \mul_reg_I_reg[12]\(25)
    );
\mul_reg_I_reg[12][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(26),
      Q => \mul_reg_I_reg[12]\(26)
    );
\mul_reg_I_reg[12][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(27),
      Q => \mul_reg_I_reg[12]\(27)
    );
\mul_reg_I_reg[12][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(28),
      Q => \mul_reg_I_reg[12]\(28)
    );
\mul_reg_I_reg[12][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(29),
      Q => \mul_reg_I_reg[12]\(29)
    );
\mul_reg_I_reg[12][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(2),
      Q => \mul_reg_I_reg[12]\(2)
    );
\mul_reg_I_reg[12][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(30),
      Q => \mul_reg_I_reg[12]\(30)
    );
\mul_reg_I_reg[12][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(35),
      Q => \mul_reg_I_reg[12]\(35)
    );
\mul_reg_I_reg[12][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(3),
      Q => \mul_reg_I_reg[12]\(3)
    );
\mul_reg_I_reg[12][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(4),
      Q => \mul_reg_I_reg[12]\(4)
    );
\mul_reg_I_reg[12][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(5),
      Q => \mul_reg_I_reg[12]\(5)
    );
\mul_reg_I_reg[12][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(6),
      Q => \mul_reg_I_reg[12]\(6)
    );
\mul_reg_I_reg[12][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(7),
      Q => \mul_reg_I_reg[12]\(7)
    );
\mul_reg_I_reg[12][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(8),
      Q => \mul_reg_I_reg[12]\(8)
    );
\mul_reg_I_reg[12][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(9),
      Q => \mul_reg_I_reg[12]\(9)
    );
\mul_reg_I_reg[13][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(0),
      Q => \mul_reg_I_reg[13]\(0)
    );
\mul_reg_I_reg[13][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(10),
      Q => \mul_reg_I_reg[13]\(10)
    );
\mul_reg_I_reg[13][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(11),
      Q => \mul_reg_I_reg[13]\(11)
    );
\mul_reg_I_reg[13][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(12),
      Q => \mul_reg_I_reg[13]\(12)
    );
\mul_reg_I_reg[13][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(13),
      Q => \mul_reg_I_reg[13]\(13)
    );
\mul_reg_I_reg[13][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(14),
      Q => \mul_reg_I_reg[13]\(14)
    );
\mul_reg_I_reg[13][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(15),
      Q => \mul_reg_I_reg[13]\(15)
    );
\mul_reg_I_reg[13][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(16),
      Q => \mul_reg_I_reg[13]\(16)
    );
\mul_reg_I_reg[13][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(17),
      Q => \mul_reg_I_reg[13]\(17)
    );
\mul_reg_I_reg[13][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(18),
      Q => \mul_reg_I_reg[13]\(18)
    );
\mul_reg_I_reg[13][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(19),
      Q => \mul_reg_I_reg[13]\(19)
    );
\mul_reg_I_reg[13][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(1),
      Q => \mul_reg_I_reg[13]\(1)
    );
\mul_reg_I_reg[13][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(20),
      Q => \mul_reg_I_reg[13]\(20)
    );
\mul_reg_I_reg[13][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(21),
      Q => \mul_reg_I_reg[13]\(21)
    );
\mul_reg_I_reg[13][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(22),
      Q => \mul_reg_I_reg[13]\(22)
    );
\mul_reg_I_reg[13][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(23),
      Q => \mul_reg_I_reg[13]\(23)
    );
\mul_reg_I_reg[13][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(24),
      Q => \mul_reg_I_reg[13]\(24)
    );
\mul_reg_I_reg[13][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(25),
      Q => \mul_reg_I_reg[13]\(25)
    );
\mul_reg_I_reg[13][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(26),
      Q => \mul_reg_I_reg[13]\(26)
    );
\mul_reg_I_reg[13][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(27),
      Q => \mul_reg_I_reg[13]\(27)
    );
\mul_reg_I_reg[13][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(28),
      Q => \mul_reg_I_reg[13]\(28)
    );
\mul_reg_I_reg[13][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(29),
      Q => \mul_reg_I_reg[13]\(29)
    );
\mul_reg_I_reg[13][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(2),
      Q => \mul_reg_I_reg[13]\(2)
    );
\mul_reg_I_reg[13][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(30),
      Q => \mul_reg_I_reg[13]\(30)
    );
\mul_reg_I_reg[13][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(35),
      Q => \mul_reg_I_reg[13]\(35)
    );
\mul_reg_I_reg[13][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(3),
      Q => \mul_reg_I_reg[13]\(3)
    );
\mul_reg_I_reg[13][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(4),
      Q => \mul_reg_I_reg[13]\(4)
    );
\mul_reg_I_reg[13][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(5),
      Q => \mul_reg_I_reg[13]\(5)
    );
\mul_reg_I_reg[13][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(6),
      Q => \mul_reg_I_reg[13]\(6)
    );
\mul_reg_I_reg[13][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(7),
      Q => \mul_reg_I_reg[13]\(7)
    );
\mul_reg_I_reg[13][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(8),
      Q => \mul_reg_I_reg[13]\(8)
    );
\mul_reg_I_reg[13][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(9),
      Q => \mul_reg_I_reg[13]\(9)
    );
\mul_reg_I_reg[14][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(0),
      Q => \mul_reg_I_reg[14]\(0)
    );
\mul_reg_I_reg[14][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(10),
      Q => \mul_reg_I_reg[14]\(10)
    );
\mul_reg_I_reg[14][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(11),
      Q => \mul_reg_I_reg[14]\(11)
    );
\mul_reg_I_reg[14][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(12),
      Q => \mul_reg_I_reg[14]\(12)
    );
\mul_reg_I_reg[14][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(13),
      Q => \mul_reg_I_reg[14]\(13)
    );
\mul_reg_I_reg[14][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(14),
      Q => \mul_reg_I_reg[14]\(14)
    );
\mul_reg_I_reg[14][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(15),
      Q => \mul_reg_I_reg[14]\(15)
    );
\mul_reg_I_reg[14][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(16),
      Q => \mul_reg_I_reg[14]\(16)
    );
\mul_reg_I_reg[14][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(17),
      Q => \mul_reg_I_reg[14]\(17)
    );
\mul_reg_I_reg[14][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(18),
      Q => \mul_reg_I_reg[14]\(18)
    );
\mul_reg_I_reg[14][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(19),
      Q => \mul_reg_I_reg[14]\(19)
    );
\mul_reg_I_reg[14][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(1),
      Q => \mul_reg_I_reg[14]\(1)
    );
\mul_reg_I_reg[14][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(20),
      Q => \mul_reg_I_reg[14]\(20)
    );
\mul_reg_I_reg[14][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(21),
      Q => \mul_reg_I_reg[14]\(21)
    );
\mul_reg_I_reg[14][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(22),
      Q => \mul_reg_I_reg[14]\(22)
    );
\mul_reg_I_reg[14][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(23),
      Q => \mul_reg_I_reg[14]\(23)
    );
\mul_reg_I_reg[14][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(24),
      Q => \mul_reg_I_reg[14]\(24)
    );
\mul_reg_I_reg[14][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(25),
      Q => \mul_reg_I_reg[14]\(25)
    );
\mul_reg_I_reg[14][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(26),
      Q => \mul_reg_I_reg[14]\(26)
    );
\mul_reg_I_reg[14][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(27),
      Q => \mul_reg_I_reg[14]\(27)
    );
\mul_reg_I_reg[14][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(28),
      Q => \mul_reg_I_reg[14]\(28)
    );
\mul_reg_I_reg[14][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(29),
      Q => \mul_reg_I_reg[14]\(29)
    );
\mul_reg_I_reg[14][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(2),
      Q => \mul_reg_I_reg[14]\(2)
    );
\mul_reg_I_reg[14][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(30),
      Q => \mul_reg_I_reg[14]\(30)
    );
\mul_reg_I_reg[14][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(35),
      Q => \mul_reg_I_reg[14]\(35)
    );
\mul_reg_I_reg[14][35]_i_2\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => '1',
      Q => \mul_reg_I_reg[14][35]_i_2_n_0\
    );
\mul_reg_I_reg[14][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(3),
      Q => \mul_reg_I_reg[14]\(3)
    );
\mul_reg_I_reg[14][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(4),
      Q => \mul_reg_I_reg[14]\(4)
    );
\mul_reg_I_reg[14][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(5),
      Q => \mul_reg_I_reg[14]\(5)
    );
\mul_reg_I_reg[14][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(6),
      Q => \mul_reg_I_reg[14]\(6)
    );
\mul_reg_I_reg[14][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(7),
      Q => \mul_reg_I_reg[14]\(7)
    );
\mul_reg_I_reg[14][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(8),
      Q => \mul_reg_I_reg[14]\(8)
    );
\mul_reg_I_reg[14][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(9),
      Q => \mul_reg_I_reg[14]\(9)
    );
\mul_reg_I_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(0),
      Q => \mul_reg_I_reg[1]\(0)
    );
\mul_reg_I_reg[1][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(10),
      Q => \mul_reg_I_reg[1]\(10)
    );
\mul_reg_I_reg[1][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(11),
      Q => \mul_reg_I_reg[1]\(11)
    );
\mul_reg_I_reg[1][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(12),
      Q => \mul_reg_I_reg[1]\(12)
    );
\mul_reg_I_reg[1][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(13),
      Q => \mul_reg_I_reg[1]\(13)
    );
\mul_reg_I_reg[1][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(14),
      Q => \mul_reg_I_reg[1]\(14)
    );
\mul_reg_I_reg[1][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(15),
      Q => \mul_reg_I_reg[1]\(15)
    );
\mul_reg_I_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(1),
      Q => \mul_reg_I_reg[1]\(1)
    );
\mul_reg_I_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(2),
      Q => \mul_reg_I_reg[1]\(2)
    );
\mul_reg_I_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(3),
      Q => \mul_reg_I_reg[1]\(3)
    );
\mul_reg_I_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(4),
      Q => \mul_reg_I_reg[1]\(4)
    );
\mul_reg_I_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(5),
      Q => \mul_reg_I_reg[1]\(5)
    );
\mul_reg_I_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(6),
      Q => \mul_reg_I_reg[1]\(6)
    );
\mul_reg_I_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(7),
      Q => \mul_reg_I_reg[1]\(7)
    );
\mul_reg_I_reg[1][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(8),
      Q => \mul_reg_I_reg[1]\(8)
    );
\mul_reg_I_reg[1][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(9),
      Q => \mul_reg_I_reg[1]\(9)
    );
\mul_reg_I_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(0),
      Q => \mul_reg_I_reg[2]\(0)
    );
\mul_reg_I_reg[2][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(10),
      Q => \mul_reg_I_reg[2]\(10)
    );
\mul_reg_I_reg[2][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(11),
      Q => \mul_reg_I_reg[2]\(11)
    );
\mul_reg_I_reg[2][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(12),
      Q => \mul_reg_I_reg[2]\(12)
    );
\mul_reg_I_reg[2][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(13),
      Q => \mul_reg_I_reg[2]\(13)
    );
\mul_reg_I_reg[2][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(14),
      Q => \mul_reg_I_reg[2]\(14)
    );
\mul_reg_I_reg[2][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(15),
      Q => \mul_reg_I_reg[2]\(15)
    );
\mul_reg_I_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(1),
      Q => \mul_reg_I_reg[2]\(1)
    );
\mul_reg_I_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(2),
      Q => \mul_reg_I_reg[2]\(2)
    );
\mul_reg_I_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(3),
      Q => \mul_reg_I_reg[2]\(3)
    );
\mul_reg_I_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(4),
      Q => \mul_reg_I_reg[2]\(4)
    );
\mul_reg_I_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(5),
      Q => \mul_reg_I_reg[2]\(5)
    );
\mul_reg_I_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(6),
      Q => \mul_reg_I_reg[2]\(6)
    );
\mul_reg_I_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(7),
      Q => \mul_reg_I_reg[2]\(7)
    );
\mul_reg_I_reg[2][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(8),
      Q => \mul_reg_I_reg[2]\(8)
    );
\mul_reg_I_reg[2][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(9),
      Q => \mul_reg_I_reg[2]\(9)
    );
\mul_reg_I_reg[3]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => m_axis_tdata(15),
      A(28) => m_axis_tdata(15),
      A(27) => m_axis_tdata(15),
      A(26) => m_axis_tdata(15),
      A(25) => m_axis_tdata(15),
      A(24) => m_axis_tdata(15),
      A(23) => m_axis_tdata(15),
      A(22) => m_axis_tdata(15),
      A(21) => m_axis_tdata(15),
      A(20) => m_axis_tdata(15),
      A(19) => m_axis_tdata(15),
      A(18) => m_axis_tdata(15),
      A(17) => m_axis_tdata(15),
      A(16) => m_axis_tdata(15),
      A(15 downto 0) => m_axis_tdata(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_I_reg[3]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 9) => \coeff_reg_reg[0]\(14 downto 9),
      B(8 downto 5) => \coeff_reg_reg[0]\(12 downto 9),
      B(4 downto 1) => \coeff_reg_reg[0]\(12 downto 9),
      B(0) => \coeff_reg_reg[0]\(12),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_I_reg[3]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_I_reg[4]\(35),
      C(46) => \mul_reg_I_reg[4]\(35),
      C(45) => \mul_reg_I_reg[4]\(35),
      C(44) => \mul_reg_I_reg[4]\(35),
      C(43) => \mul_reg_I_reg[4]\(35),
      C(42) => \mul_reg_I_reg[4]\(35),
      C(41) => \mul_reg_I_reg[4]\(35),
      C(40) => \mul_reg_I_reg[4]\(35),
      C(39) => \mul_reg_I_reg[4]\(35),
      C(38) => \mul_reg_I_reg[4]\(35),
      C(37) => \mul_reg_I_reg[4]\(35),
      C(36) => \mul_reg_I_reg[4]\(35),
      C(35 downto 0) => \mul_reg_I_reg[4]\(35 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_I_reg[3]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_I_reg[3]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => filter2fifo_ready1,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_I_reg[3]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_I_reg[3]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 36) => \NLW_mul_reg_I_reg[3]0_P_UNCONNECTED\(47 downto 36),
      P(35) => \mul_reg_I_reg[3]0_n_70\,
      P(34) => \mul_reg_I_reg[3]0_n_71\,
      P(33) => \mul_reg_I_reg[3]0_n_72\,
      P(32) => \mul_reg_I_reg[3]0_n_73\,
      P(31) => \mul_reg_I_reg[3]0_n_74\,
      P(30) => \mul_reg_I_reg[3]0_n_75\,
      P(29) => \mul_reg_I_reg[3]0_n_76\,
      P(28) => \mul_reg_I_reg[3]0_n_77\,
      P(27) => \mul_reg_I_reg[3]0_n_78\,
      P(26) => \mul_reg_I_reg[3]0_n_79\,
      P(25) => \mul_reg_I_reg[3]0_n_80\,
      P(24) => \mul_reg_I_reg[3]0_n_81\,
      P(23) => \mul_reg_I_reg[3]0_n_82\,
      P(22) => \mul_reg_I_reg[3]0_n_83\,
      P(21) => \mul_reg_I_reg[3]0_n_84\,
      P(20) => \mul_reg_I_reg[3]0_n_85\,
      P(19) => \mul_reg_I_reg[3]0_n_86\,
      P(18) => \mul_reg_I_reg[3]0_n_87\,
      P(17) => \mul_reg_I_reg[3]0_n_88\,
      P(16) => \mul_reg_I_reg[3]0_n_89\,
      P(15) => \mul_reg_I_reg[3]0_n_90\,
      P(14) => \mul_reg_I_reg[3]0_n_91\,
      P(13) => \mul_reg_I_reg[3]0_n_92\,
      P(12) => \mul_reg_I_reg[3]0_n_93\,
      P(11) => \mul_reg_I_reg[3]0_n_94\,
      P(10) => \mul_reg_I_reg[3]0_n_95\,
      P(9) => \mul_reg_I_reg[3]0_n_96\,
      P(8) => \mul_reg_I_reg[3]0_n_97\,
      P(7) => \mul_reg_I_reg[3]0_n_98\,
      P(6) => \mul_reg_I_reg[3]0_n_99\,
      P(5) => \mul_reg_I_reg[3]0_n_100\,
      P(4) => \mul_reg_I_reg[3]0_n_101\,
      P(3) => \mul_reg_I_reg[3]0_n_102\,
      P(2) => \mul_reg_I_reg[3]0_n_103\,
      P(1) => \mul_reg_I_reg[3]0_n_104\,
      P(0) => \mul_reg_I_reg[3]0_n_105\,
      PATTERNBDETECT => \NLW_mul_reg_I_reg[3]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_I_reg[3]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_I_reg[3]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_I_reg[3]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_I_reg[3]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_I_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(0),
      Q => \mul_reg_I_reg[4]\(0)
    );
\mul_reg_I_reg[4][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(10),
      Q => \mul_reg_I_reg[4]\(10)
    );
\mul_reg_I_reg[4][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(11),
      Q => \mul_reg_I_reg[4]\(11)
    );
\mul_reg_I_reg[4][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(12),
      Q => \mul_reg_I_reg[4]\(12)
    );
\mul_reg_I_reg[4][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(13),
      Q => \mul_reg_I_reg[4]\(13)
    );
\mul_reg_I_reg[4][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(14),
      Q => \mul_reg_I_reg[4]\(14)
    );
\mul_reg_I_reg[4][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(15),
      Q => \mul_reg_I_reg[4]\(15)
    );
\mul_reg_I_reg[4][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(16),
      Q => \mul_reg_I_reg[4]\(16)
    );
\mul_reg_I_reg[4][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(17),
      Q => \mul_reg_I_reg[4]\(17)
    );
\mul_reg_I_reg[4][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(18),
      Q => \mul_reg_I_reg[4]\(18)
    );
\mul_reg_I_reg[4][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(19),
      Q => \mul_reg_I_reg[4]\(19)
    );
\mul_reg_I_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(1),
      Q => \mul_reg_I_reg[4]\(1)
    );
\mul_reg_I_reg[4][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(20),
      Q => \mul_reg_I_reg[4]\(20)
    );
\mul_reg_I_reg[4][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(21),
      Q => \mul_reg_I_reg[4]\(21)
    );
\mul_reg_I_reg[4][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(22),
      Q => \mul_reg_I_reg[4]\(22)
    );
\mul_reg_I_reg[4][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(23),
      Q => \mul_reg_I_reg[4]\(23)
    );
\mul_reg_I_reg[4][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(24),
      Q => \mul_reg_I_reg[4]\(24)
    );
\mul_reg_I_reg[4][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(25),
      Q => \mul_reg_I_reg[4]\(25)
    );
\mul_reg_I_reg[4][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(26),
      Q => \mul_reg_I_reg[4]\(26)
    );
\mul_reg_I_reg[4][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(27),
      Q => \mul_reg_I_reg[4]\(27)
    );
\mul_reg_I_reg[4][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(28),
      Q => \mul_reg_I_reg[4]\(28)
    );
\mul_reg_I_reg[4][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(29),
      Q => \mul_reg_I_reg[4]\(29)
    );
\mul_reg_I_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(2),
      Q => \mul_reg_I_reg[4]\(2)
    );
\mul_reg_I_reg[4][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(30),
      Q => \mul_reg_I_reg[4]\(30)
    );
\mul_reg_I_reg[4][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(31),
      Q => \mul_reg_I_reg[4]\(31)
    );
\mul_reg_I_reg[4][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(32),
      Q => \mul_reg_I_reg[4]\(32)
    );
\mul_reg_I_reg[4][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(33),
      Q => \mul_reg_I_reg[4]\(33)
    );
\mul_reg_I_reg[4][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(34),
      Q => \mul_reg_I_reg[4]\(34)
    );
\mul_reg_I_reg[4][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(35),
      Q => \mul_reg_I_reg[4]\(35)
    );
\mul_reg_I_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(3),
      Q => \mul_reg_I_reg[4]\(3)
    );
\mul_reg_I_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(4),
      Q => \mul_reg_I_reg[4]\(4)
    );
\mul_reg_I_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(5),
      Q => \mul_reg_I_reg[4]\(5)
    );
\mul_reg_I_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(6),
      Q => \mul_reg_I_reg[4]\(6)
    );
\mul_reg_I_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(7),
      Q => \mul_reg_I_reg[4]\(7)
    );
\mul_reg_I_reg[4][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(8),
      Q => \mul_reg_I_reg[4]\(8)
    );
\mul_reg_I_reg[4][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(9),
      Q => \mul_reg_I_reg[4]\(9)
    );
\mul_reg_I_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(0),
      Q => \mul_reg_I_reg[5]\(0)
    );
\mul_reg_I_reg[5][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(10),
      Q => \mul_reg_I_reg[5]\(10)
    );
\mul_reg_I_reg[5][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(11),
      Q => \mul_reg_I_reg[5]\(11)
    );
\mul_reg_I_reg[5][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(12),
      Q => \mul_reg_I_reg[5]\(12)
    );
\mul_reg_I_reg[5][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(13),
      Q => \mul_reg_I_reg[5]\(13)
    );
\mul_reg_I_reg[5][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(14),
      Q => \mul_reg_I_reg[5]\(14)
    );
\mul_reg_I_reg[5][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(15),
      Q => \mul_reg_I_reg[5]\(15)
    );
\mul_reg_I_reg[5][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(16),
      Q => \mul_reg_I_reg[5]\(16)
    );
\mul_reg_I_reg[5][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(17),
      Q => \mul_reg_I_reg[5]\(17)
    );
\mul_reg_I_reg[5][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(18),
      Q => \mul_reg_I_reg[5]\(18)
    );
\mul_reg_I_reg[5][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(19),
      Q => \mul_reg_I_reg[5]\(19)
    );
\mul_reg_I_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(1),
      Q => \mul_reg_I_reg[5]\(1)
    );
\mul_reg_I_reg[5][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(20),
      Q => \mul_reg_I_reg[5]\(20)
    );
\mul_reg_I_reg[5][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(21),
      Q => \mul_reg_I_reg[5]\(21)
    );
\mul_reg_I_reg[5][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(22),
      Q => \mul_reg_I_reg[5]\(22)
    );
\mul_reg_I_reg[5][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(23),
      Q => \mul_reg_I_reg[5]\(23)
    );
\mul_reg_I_reg[5][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(24),
      Q => \mul_reg_I_reg[5]\(24)
    );
\mul_reg_I_reg[5][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(25),
      Q => \mul_reg_I_reg[5]\(25)
    );
\mul_reg_I_reg[5][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(26),
      Q => \mul_reg_I_reg[5]\(26)
    );
\mul_reg_I_reg[5][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(27),
      Q => \mul_reg_I_reg[5]\(27)
    );
\mul_reg_I_reg[5][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(28),
      Q => \mul_reg_I_reg[5]\(28)
    );
\mul_reg_I_reg[5][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(29),
      Q => \mul_reg_I_reg[5]\(29)
    );
\mul_reg_I_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(2),
      Q => \mul_reg_I_reg[5]\(2)
    );
\mul_reg_I_reg[5][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(30),
      Q => \mul_reg_I_reg[5]\(30)
    );
\mul_reg_I_reg[5][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(31),
      Q => \mul_reg_I_reg[5]\(31)
    );
\mul_reg_I_reg[5][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(32),
      Q => \mul_reg_I_reg[5]\(32)
    );
\mul_reg_I_reg[5][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(33),
      Q => \mul_reg_I_reg[5]\(33)
    );
\mul_reg_I_reg[5][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(34),
      Q => \mul_reg_I_reg[5]\(34)
    );
\mul_reg_I_reg[5][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(35),
      Q => \mul_reg_I_reg[5]\(35)
    );
\mul_reg_I_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(3),
      Q => \mul_reg_I_reg[5]\(3)
    );
\mul_reg_I_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(4),
      Q => \mul_reg_I_reg[5]\(4)
    );
\mul_reg_I_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(5),
      Q => \mul_reg_I_reg[5]\(5)
    );
\mul_reg_I_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(6),
      Q => \mul_reg_I_reg[5]\(6)
    );
\mul_reg_I_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(7),
      Q => \mul_reg_I_reg[5]\(7)
    );
\mul_reg_I_reg[5][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(8),
      Q => \mul_reg_I_reg[5]\(8)
    );
\mul_reg_I_reg[5][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(9),
      Q => \mul_reg_I_reg[5]\(9)
    );
\mul_reg_I_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(0),
      Q => \mul_reg_I_reg[6]\(0)
    );
\mul_reg_I_reg[6][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(10),
      Q => \mul_reg_I_reg[6]\(10)
    );
\mul_reg_I_reg[6][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(11),
      Q => \mul_reg_I_reg[6]\(11)
    );
\mul_reg_I_reg[6][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(12),
      Q => \mul_reg_I_reg[6]\(12)
    );
\mul_reg_I_reg[6][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(13),
      Q => \mul_reg_I_reg[6]\(13)
    );
\mul_reg_I_reg[6][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(14),
      Q => \mul_reg_I_reg[6]\(14)
    );
\mul_reg_I_reg[6][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(15),
      Q => \mul_reg_I_reg[6]\(15)
    );
\mul_reg_I_reg[6][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(16),
      Q => \mul_reg_I_reg[6]\(16)
    );
\mul_reg_I_reg[6][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(17),
      Q => \mul_reg_I_reg[6]\(17)
    );
\mul_reg_I_reg[6][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(18),
      Q => \mul_reg_I_reg[6]\(18)
    );
\mul_reg_I_reg[6][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(19),
      Q => \mul_reg_I_reg[6]\(19)
    );
\mul_reg_I_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(1),
      Q => \mul_reg_I_reg[6]\(1)
    );
\mul_reg_I_reg[6][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(20),
      Q => \mul_reg_I_reg[6]\(20)
    );
\mul_reg_I_reg[6][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(21),
      Q => \mul_reg_I_reg[6]\(21)
    );
\mul_reg_I_reg[6][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(22),
      Q => \mul_reg_I_reg[6]\(22)
    );
\mul_reg_I_reg[6][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(23),
      Q => \mul_reg_I_reg[6]\(23)
    );
\mul_reg_I_reg[6][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(24),
      Q => \mul_reg_I_reg[6]\(24)
    );
\mul_reg_I_reg[6][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(25),
      Q => \mul_reg_I_reg[6]\(25)
    );
\mul_reg_I_reg[6][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(26),
      Q => \mul_reg_I_reg[6]\(26)
    );
\mul_reg_I_reg[6][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(27),
      Q => \mul_reg_I_reg[6]\(27)
    );
\mul_reg_I_reg[6][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(28),
      Q => \mul_reg_I_reg[6]\(28)
    );
\mul_reg_I_reg[6][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(29),
      Q => \mul_reg_I_reg[6]\(29)
    );
\mul_reg_I_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(2),
      Q => \mul_reg_I_reg[6]\(2)
    );
\mul_reg_I_reg[6][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(30),
      Q => \mul_reg_I_reg[6]\(30)
    );
\mul_reg_I_reg[6][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(31),
      Q => \mul_reg_I_reg[6]\(31)
    );
\mul_reg_I_reg[6][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(32),
      Q => \mul_reg_I_reg[6]\(32)
    );
\mul_reg_I_reg[6][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(33),
      Q => \mul_reg_I_reg[6]\(33)
    );
\mul_reg_I_reg[6][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(34),
      Q => \mul_reg_I_reg[6]\(34)
    );
\mul_reg_I_reg[6][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(35),
      Q => \mul_reg_I_reg[6]\(35)
    );
\mul_reg_I_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(3),
      Q => \mul_reg_I_reg[6]\(3)
    );
\mul_reg_I_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(4),
      Q => \mul_reg_I_reg[6]\(4)
    );
\mul_reg_I_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(5),
      Q => \mul_reg_I_reg[6]\(5)
    );
\mul_reg_I_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(6),
      Q => \mul_reg_I_reg[6]\(6)
    );
\mul_reg_I_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(7),
      Q => \mul_reg_I_reg[6]\(7)
    );
\mul_reg_I_reg[6][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(8),
      Q => \mul_reg_I_reg[6]\(8)
    );
\mul_reg_I_reg[6][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(9),
      Q => \mul_reg_I_reg[6]\(9)
    );
\mul_reg_I_reg[7]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => m_axis_tdata(15),
      A(28) => m_axis_tdata(15),
      A(27) => m_axis_tdata(15),
      A(26) => m_axis_tdata(15),
      A(25) => m_axis_tdata(15),
      A(24) => m_axis_tdata(15),
      A(23) => m_axis_tdata(15),
      A(22) => m_axis_tdata(15),
      A(21) => m_axis_tdata(15),
      A(20) => m_axis_tdata(15),
      A(19) => m_axis_tdata(15),
      A(18) => m_axis_tdata(15),
      A(17) => m_axis_tdata(15),
      A(16) => m_axis_tdata(15),
      A(15 downto 0) => m_axis_tdata(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_I_reg[7]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[1]\(14),
      B(13) => '0',
      B(12) => \coeff_reg_reg[0]\(14),
      B(11) => \coeff_reg_reg[0]\(9),
      B(10) => \coeff_reg_reg[1]\(10),
      B(9) => \coeff_reg_reg[0]\(12),
      B(8) => \coeff_reg_reg[0]\(14),
      B(7) => \coeff_reg_reg[0]\(9),
      B(6) => \coeff_reg_reg[1]\(10),
      B(5) => \coeff_reg_reg[0]\(12),
      B(4) => \coeff_reg_reg[0]\(14),
      B(3) => \coeff_reg_reg[0]\(9),
      B(2) => \coeff_reg_reg[1]\(10),
      B(1) => \coeff_reg_reg[0]\(12),
      B(0) => \coeff_reg_reg[1]\(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_I_reg[7]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_I_reg[8]\(35),
      C(46) => \mul_reg_I_reg[8]\(35),
      C(45) => \mul_reg_I_reg[8]\(35),
      C(44) => \mul_reg_I_reg[8]\(35),
      C(43) => \mul_reg_I_reg[8]\(35),
      C(42) => \mul_reg_I_reg[8]\(35),
      C(41) => \mul_reg_I_reg[8]\(35),
      C(40) => \mul_reg_I_reg[8]\(35),
      C(39) => \mul_reg_I_reg[8]\(35),
      C(38) => \mul_reg_I_reg[8]\(35),
      C(37) => \mul_reg_I_reg[8]\(35),
      C(36) => \mul_reg_I_reg[8]\(35),
      C(35 downto 0) => \mul_reg_I_reg[8]\(35 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_I_reg[7]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_I_reg[7]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => filter2fifo_ready1,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_I_reg[7]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_I_reg[7]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 36) => \NLW_mul_reg_I_reg[7]0_P_UNCONNECTED\(47 downto 36),
      P(35) => \mul_reg_I_reg[7]0_n_70\,
      P(34) => \mul_reg_I_reg[7]0_n_71\,
      P(33) => \mul_reg_I_reg[7]0_n_72\,
      P(32) => \mul_reg_I_reg[7]0_n_73\,
      P(31) => \mul_reg_I_reg[7]0_n_74\,
      P(30) => \mul_reg_I_reg[7]0_n_75\,
      P(29) => \mul_reg_I_reg[7]0_n_76\,
      P(28) => \mul_reg_I_reg[7]0_n_77\,
      P(27) => \mul_reg_I_reg[7]0_n_78\,
      P(26) => \mul_reg_I_reg[7]0_n_79\,
      P(25) => \mul_reg_I_reg[7]0_n_80\,
      P(24) => \mul_reg_I_reg[7]0_n_81\,
      P(23) => \mul_reg_I_reg[7]0_n_82\,
      P(22) => \mul_reg_I_reg[7]0_n_83\,
      P(21) => \mul_reg_I_reg[7]0_n_84\,
      P(20) => \mul_reg_I_reg[7]0_n_85\,
      P(19) => \mul_reg_I_reg[7]0_n_86\,
      P(18) => \mul_reg_I_reg[7]0_n_87\,
      P(17) => \mul_reg_I_reg[7]0_n_88\,
      P(16) => \mul_reg_I_reg[7]0_n_89\,
      P(15) => \mul_reg_I_reg[7]0_n_90\,
      P(14) => \mul_reg_I_reg[7]0_n_91\,
      P(13) => \mul_reg_I_reg[7]0_n_92\,
      P(12) => \mul_reg_I_reg[7]0_n_93\,
      P(11) => \mul_reg_I_reg[7]0_n_94\,
      P(10) => \mul_reg_I_reg[7]0_n_95\,
      P(9) => \mul_reg_I_reg[7]0_n_96\,
      P(8) => \mul_reg_I_reg[7]0_n_97\,
      P(7) => \mul_reg_I_reg[7]0_n_98\,
      P(6) => \mul_reg_I_reg[7]0_n_99\,
      P(5) => \mul_reg_I_reg[7]0_n_100\,
      P(4) => \mul_reg_I_reg[7]0_n_101\,
      P(3) => \mul_reg_I_reg[7]0_n_102\,
      P(2) => \mul_reg_I_reg[7]0_n_103\,
      P(1) => \mul_reg_I_reg[7]0_n_104\,
      P(0) => \mul_reg_I_reg[7]0_n_105\,
      PATTERNBDETECT => \NLW_mul_reg_I_reg[7]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_I_reg[7]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_I_reg[7]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_I_reg[7]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_I_reg[7]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_I_reg[8][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(0),
      Q => \mul_reg_I_reg[8]\(0)
    );
\mul_reg_I_reg[8][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(10),
      Q => \mul_reg_I_reg[8]\(10)
    );
\mul_reg_I_reg[8][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(11),
      Q => \mul_reg_I_reg[8]\(11)
    );
\mul_reg_I_reg[8][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(12),
      Q => \mul_reg_I_reg[8]\(12)
    );
\mul_reg_I_reg[8][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(13),
      Q => \mul_reg_I_reg[8]\(13)
    );
\mul_reg_I_reg[8][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(14),
      Q => \mul_reg_I_reg[8]\(14)
    );
\mul_reg_I_reg[8][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(15),
      Q => \mul_reg_I_reg[8]\(15)
    );
\mul_reg_I_reg[8][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(16),
      Q => \mul_reg_I_reg[8]\(16)
    );
\mul_reg_I_reg[8][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(17),
      Q => \mul_reg_I_reg[8]\(17)
    );
\mul_reg_I_reg[8][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(18),
      Q => \mul_reg_I_reg[8]\(18)
    );
\mul_reg_I_reg[8][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(19),
      Q => \mul_reg_I_reg[8]\(19)
    );
\mul_reg_I_reg[8][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(1),
      Q => \mul_reg_I_reg[8]\(1)
    );
\mul_reg_I_reg[8][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(20),
      Q => \mul_reg_I_reg[8]\(20)
    );
\mul_reg_I_reg[8][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(21),
      Q => \mul_reg_I_reg[8]\(21)
    );
\mul_reg_I_reg[8][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(22),
      Q => \mul_reg_I_reg[8]\(22)
    );
\mul_reg_I_reg[8][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(23),
      Q => \mul_reg_I_reg[8]\(23)
    );
\mul_reg_I_reg[8][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(24),
      Q => \mul_reg_I_reg[8]\(24)
    );
\mul_reg_I_reg[8][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(25),
      Q => \mul_reg_I_reg[8]\(25)
    );
\mul_reg_I_reg[8][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(26),
      Q => \mul_reg_I_reg[8]\(26)
    );
\mul_reg_I_reg[8][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(27),
      Q => \mul_reg_I_reg[8]\(27)
    );
\mul_reg_I_reg[8][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(28),
      Q => \mul_reg_I_reg[8]\(28)
    );
\mul_reg_I_reg[8][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(29),
      Q => \mul_reg_I_reg[8]\(29)
    );
\mul_reg_I_reg[8][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(2),
      Q => \mul_reg_I_reg[8]\(2)
    );
\mul_reg_I_reg[8][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(30),
      Q => \mul_reg_I_reg[8]\(30)
    );
\mul_reg_I_reg[8][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(31),
      Q => \mul_reg_I_reg[8]\(31)
    );
\mul_reg_I_reg[8][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(32),
      Q => \mul_reg_I_reg[8]\(32)
    );
\mul_reg_I_reg[8][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(33),
      Q => \mul_reg_I_reg[8]\(33)
    );
\mul_reg_I_reg[8][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(34),
      Q => \mul_reg_I_reg[8]\(34)
    );
\mul_reg_I_reg[8][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(35),
      Q => \mul_reg_I_reg[8]\(35)
    );
\mul_reg_I_reg[8][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(3),
      Q => \mul_reg_I_reg[8]\(3)
    );
\mul_reg_I_reg[8][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(4),
      Q => \mul_reg_I_reg[8]\(4)
    );
\mul_reg_I_reg[8][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(5),
      Q => \mul_reg_I_reg[8]\(5)
    );
\mul_reg_I_reg[8][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(6),
      Q => \mul_reg_I_reg[8]\(6)
    );
\mul_reg_I_reg[8][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(7),
      Q => \mul_reg_I_reg[8]\(7)
    );
\mul_reg_I_reg[8][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(8),
      Q => \mul_reg_I_reg[8]\(8)
    );
\mul_reg_I_reg[8][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(9),
      Q => \mul_reg_I_reg[8]\(9)
    );
\mul_reg_I_reg[9][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(0),
      Q => \mul_reg_I_reg[9]\(0)
    );
\mul_reg_I_reg[9][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(10),
      Q => \mul_reg_I_reg[9]\(10)
    );
\mul_reg_I_reg[9][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(11),
      Q => \mul_reg_I_reg[9]\(11)
    );
\mul_reg_I_reg[9][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(12),
      Q => \mul_reg_I_reg[9]\(12)
    );
\mul_reg_I_reg[9][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(13),
      Q => \mul_reg_I_reg[9]\(13)
    );
\mul_reg_I_reg[9][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(14),
      Q => \mul_reg_I_reg[9]\(14)
    );
\mul_reg_I_reg[9][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(15),
      Q => \mul_reg_I_reg[9]\(15)
    );
\mul_reg_I_reg[9][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(16),
      Q => \mul_reg_I_reg[9]\(16)
    );
\mul_reg_I_reg[9][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(17),
      Q => \mul_reg_I_reg[9]\(17)
    );
\mul_reg_I_reg[9][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(18),
      Q => \mul_reg_I_reg[9]\(18)
    );
\mul_reg_I_reg[9][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(19),
      Q => \mul_reg_I_reg[9]\(19)
    );
\mul_reg_I_reg[9][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(1),
      Q => \mul_reg_I_reg[9]\(1)
    );
\mul_reg_I_reg[9][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(20),
      Q => \mul_reg_I_reg[9]\(20)
    );
\mul_reg_I_reg[9][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(21),
      Q => \mul_reg_I_reg[9]\(21)
    );
\mul_reg_I_reg[9][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(22),
      Q => \mul_reg_I_reg[9]\(22)
    );
\mul_reg_I_reg[9][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(23),
      Q => \mul_reg_I_reg[9]\(23)
    );
\mul_reg_I_reg[9][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(24),
      Q => \mul_reg_I_reg[9]\(24)
    );
\mul_reg_I_reg[9][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(25),
      Q => \mul_reg_I_reg[9]\(25)
    );
\mul_reg_I_reg[9][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(26),
      Q => \mul_reg_I_reg[9]\(26)
    );
\mul_reg_I_reg[9][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(27),
      Q => \mul_reg_I_reg[9]\(27)
    );
\mul_reg_I_reg[9][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(28),
      Q => \mul_reg_I_reg[9]\(28)
    );
\mul_reg_I_reg[9][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(29),
      Q => \mul_reg_I_reg[9]\(29)
    );
\mul_reg_I_reg[9][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(2),
      Q => \mul_reg_I_reg[9]\(2)
    );
\mul_reg_I_reg[9][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(30),
      Q => \mul_reg_I_reg[9]\(30)
    );
\mul_reg_I_reg[9][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(31),
      Q => \mul_reg_I_reg[9]\(31)
    );
\mul_reg_I_reg[9][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(32),
      Q => \mul_reg_I_reg[9]\(32)
    );
\mul_reg_I_reg[9][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(33),
      Q => \mul_reg_I_reg[9]\(33)
    );
\mul_reg_I_reg[9][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(34),
      Q => \mul_reg_I_reg[9]\(34)
    );
\mul_reg_I_reg[9][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(35),
      Q => \mul_reg_I_reg[9]\(35)
    );
\mul_reg_I_reg[9][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(3),
      Q => \mul_reg_I_reg[9]\(3)
    );
\mul_reg_I_reg[9][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(4),
      Q => \mul_reg_I_reg[9]\(4)
    );
\mul_reg_I_reg[9][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(5),
      Q => \mul_reg_I_reg[9]\(5)
    );
\mul_reg_I_reg[9][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(6),
      Q => \mul_reg_I_reg[9]\(6)
    );
\mul_reg_I_reg[9][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(7),
      Q => \mul_reg_I_reg[9]\(7)
    );
\mul_reg_I_reg[9][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(8),
      Q => \mul_reg_I_reg[9]\(8)
    );
\mul_reg_I_reg[9][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(9),
      Q => \mul_reg_I_reg[9]\(9)
    );
\mul_reg_Q[10][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_105\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(0)
    );
\mul_reg_Q[10][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_95\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(10)
    );
\mul_reg_Q[10][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_94\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(11)
    );
\mul_reg_Q[10][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_93\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(12)
    );
\mul_reg_Q[10][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_92\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(13)
    );
\mul_reg_Q[10][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_91\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(14)
    );
\mul_reg_Q[10][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_90\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(15)
    );
\mul_reg_Q[10][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_89\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(16)
    );
\mul_reg_Q[10][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_88\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(17)
    );
\mul_reg_Q[10][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_87\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(18)
    );
\mul_reg_Q[10][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_86\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(19)
    );
\mul_reg_Q[10][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_104\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(1)
    );
\mul_reg_Q[10][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_85\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(20)
    );
\mul_reg_Q[10][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_84\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(21)
    );
\mul_reg_Q[10][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_83\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(22)
    );
\mul_reg_Q[10][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_82\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(23)
    );
\mul_reg_Q[10][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_81\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(24)
    );
\mul_reg_Q[10][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_80\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(25)
    );
\mul_reg_Q[10][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_79\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(26)
    );
\mul_reg_Q[10][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_78\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(27)
    );
\mul_reg_Q[10][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_77\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(28)
    );
\mul_reg_Q[10][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_76\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(29)
    );
\mul_reg_Q[10][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_103\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(2)
    );
\mul_reg_Q[10][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_75\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(30)
    );
\mul_reg_Q[10][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_74\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(31)
    );
\mul_reg_Q[10][32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_73\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(32)
    );
\mul_reg_Q[10][33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_72\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(33)
    );
\mul_reg_Q[10][34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_71\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(34)
    );
\mul_reg_Q[10][35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_70\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(35)
    );
\mul_reg_Q[10][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_102\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(3)
    );
\mul_reg_Q[10][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_101\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(4)
    );
\mul_reg_Q[10][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_100\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(5)
    );
\mul_reg_Q[10][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_99\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(6)
    );
\mul_reg_Q[10][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_98\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(7)
    );
\mul_reg_Q[10][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_97\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(8)
    );
\mul_reg_Q[10][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[11]0_n_96\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[11]\(9)
    );
\mul_reg_Q[14][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_105\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(0)
    );
\mul_reg_Q[14][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_95\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(10)
    );
\mul_reg_Q[14][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_94\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(11)
    );
\mul_reg_Q[14][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_93\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(12)
    );
\mul_reg_Q[14][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_92\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(13)
    );
\mul_reg_Q[14][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_91\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(14)
    );
\mul_reg_Q[14][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_90\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(15)
    );
\mul_reg_Q[14][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_89\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(16)
    );
\mul_reg_Q[14][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_88\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(17)
    );
\mul_reg_Q[14][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_87\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(18)
    );
\mul_reg_Q[14][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_86\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(19)
    );
\mul_reg_Q[14][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_104\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(1)
    );
\mul_reg_Q[14][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_85\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(20)
    );
\mul_reg_Q[14][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_84\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(21)
    );
\mul_reg_Q[14][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_83\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(22)
    );
\mul_reg_Q[14][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_82\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(23)
    );
\mul_reg_Q[14][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_81\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(24)
    );
\mul_reg_Q[14][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_80\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(25)
    );
\mul_reg_Q[14][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_79\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(26)
    );
\mul_reg_Q[14][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_78\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(27)
    );
\mul_reg_Q[14][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_77\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(28)
    );
\mul_reg_Q[14][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_76\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(29)
    );
\mul_reg_Q[14][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_103\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(2)
    );
\mul_reg_Q[14][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_75\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(30)
    );
\mul_reg_Q[14][35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_74\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(35)
    );
\mul_reg_Q[14][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_102\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(3)
    );
\mul_reg_Q[14][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_101\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(4)
    );
\mul_reg_Q[14][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_100\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(5)
    );
\mul_reg_Q[14][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_99\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(6)
    );
\mul_reg_Q[14][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_98\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(7)
    );
\mul_reg_Q[14][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_97\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(8)
    );
\mul_reg_Q[14][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ARG__0_n_96\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[15]\(9)
    );
\mul_reg_Q[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_105\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(0)
    );
\mul_reg_Q[2][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_95\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(10)
    );
\mul_reg_Q[2][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_94\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(11)
    );
\mul_reg_Q[2][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_93\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(12)
    );
\mul_reg_Q[2][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_92\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(13)
    );
\mul_reg_Q[2][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_91\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(14)
    );
\mul_reg_Q[2][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_90\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(15)
    );
\mul_reg_Q[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_104\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(1)
    );
\mul_reg_Q[2][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_103\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(2)
    );
\mul_reg_Q[2][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_102\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(3)
    );
\mul_reg_Q[2][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_101\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(4)
    );
\mul_reg_Q[2][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_100\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(5)
    );
\mul_reg_Q[2][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_99\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(6)
    );
\mul_reg_Q[2][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_98\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(7)
    );
\mul_reg_Q[2][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_97\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(8)
    );
\mul_reg_Q[2][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[3]0_n_96\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[3]\(9)
    );
\mul_reg_Q[6][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_105\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(0)
    );
\mul_reg_Q[6][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_95\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(10)
    );
\mul_reg_Q[6][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_94\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(11)
    );
\mul_reg_Q[6][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_93\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(12)
    );
\mul_reg_Q[6][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_92\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(13)
    );
\mul_reg_Q[6][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_91\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(14)
    );
\mul_reg_Q[6][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_90\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(15)
    );
\mul_reg_Q[6][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_89\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(16)
    );
\mul_reg_Q[6][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_88\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(17)
    );
\mul_reg_Q[6][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_87\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(18)
    );
\mul_reg_Q[6][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_86\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(19)
    );
\mul_reg_Q[6][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_104\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(1)
    );
\mul_reg_Q[6][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_85\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(20)
    );
\mul_reg_Q[6][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_84\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(21)
    );
\mul_reg_Q[6][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_83\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(22)
    );
\mul_reg_Q[6][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_82\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(23)
    );
\mul_reg_Q[6][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_81\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(24)
    );
\mul_reg_Q[6][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_80\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(25)
    );
\mul_reg_Q[6][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_79\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(26)
    );
\mul_reg_Q[6][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_78\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(27)
    );
\mul_reg_Q[6][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_77\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(28)
    );
\mul_reg_Q[6][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_76\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(29)
    );
\mul_reg_Q[6][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_103\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(2)
    );
\mul_reg_Q[6][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_75\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(30)
    );
\mul_reg_Q[6][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_74\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(31)
    );
\mul_reg_Q[6][32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_73\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(32)
    );
\mul_reg_Q[6][33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_72\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(33)
    );
\mul_reg_Q[6][34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_71\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(34)
    );
\mul_reg_Q[6][35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_70\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(35)
    );
\mul_reg_Q[6][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_102\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(3)
    );
\mul_reg_Q[6][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_101\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(4)
    );
\mul_reg_Q[6][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_100\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(5)
    );
\mul_reg_Q[6][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_99\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(6)
    );
\mul_reg_Q[6][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_98\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(7)
    );
\mul_reg_Q[6][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_97\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(8)
    );
\mul_reg_Q[6][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_Q_reg[7]0_n_96\,
      I1 => \mul_reg_Q_reg[14][35]_i_2_n_0\,
      O => \mul_reg_Q_reg[7]\(9)
    );
\mul_reg_Q_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(0),
      Q => \mul_reg_Q_reg_n_0_[0][0]\
    );
\mul_reg_Q_reg[0][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(10),
      Q => \mul_reg_Q_reg_n_0_[0][10]\
    );
\mul_reg_Q_reg[0][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(11),
      Q => \mul_reg_Q_reg_n_0_[0][11]\
    );
\mul_reg_Q_reg[0][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(12),
      Q => \mul_reg_Q_reg_n_0_[0][12]\
    );
\mul_reg_Q_reg[0][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(13),
      Q => \mul_reg_Q_reg_n_0_[0][13]\
    );
\mul_reg_Q_reg[0][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(14),
      Q => \mul_reg_Q_reg_n_0_[0][14]\
    );
\mul_reg_Q_reg[0][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(15),
      Q => \mul_reg_Q_reg_n_0_[0][15]\
    );
\mul_reg_Q_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(1),
      Q => \mul_reg_Q_reg_n_0_[0][1]\
    );
\mul_reg_Q_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(2),
      Q => \mul_reg_Q_reg_n_0_[0][2]\
    );
\mul_reg_Q_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(3),
      Q => \mul_reg_Q_reg_n_0_[0][3]\
    );
\mul_reg_Q_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(4),
      Q => \mul_reg_Q_reg_n_0_[0][4]\
    );
\mul_reg_Q_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(5),
      Q => \mul_reg_Q_reg_n_0_[0][5]\
    );
\mul_reg_Q_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(6),
      Q => \mul_reg_Q_reg_n_0_[0][6]\
    );
\mul_reg_Q_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(7),
      Q => \mul_reg_Q_reg_n_0_[0][7]\
    );
\mul_reg_Q_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(8),
      Q => \mul_reg_Q_reg_n_0_[0][8]\
    );
\mul_reg_Q_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[1]\(9),
      Q => \mul_reg_Q_reg_n_0_[0][9]\
    );
\mul_reg_Q_reg[10][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(0),
      Q => \mul_reg_Q_reg[10]\(0)
    );
\mul_reg_Q_reg[10][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(10),
      Q => \mul_reg_Q_reg[10]\(10)
    );
\mul_reg_Q_reg[10][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(11),
      Q => \mul_reg_Q_reg[10]\(11)
    );
\mul_reg_Q_reg[10][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(12),
      Q => \mul_reg_Q_reg[10]\(12)
    );
\mul_reg_Q_reg[10][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(13),
      Q => \mul_reg_Q_reg[10]\(13)
    );
\mul_reg_Q_reg[10][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(14),
      Q => \mul_reg_Q_reg[10]\(14)
    );
\mul_reg_Q_reg[10][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(15),
      Q => \mul_reg_Q_reg[10]\(15)
    );
\mul_reg_Q_reg[10][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(16),
      Q => \mul_reg_Q_reg[10]\(16)
    );
\mul_reg_Q_reg[10][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(17),
      Q => \mul_reg_Q_reg[10]\(17)
    );
\mul_reg_Q_reg[10][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(18),
      Q => \mul_reg_Q_reg[10]\(18)
    );
\mul_reg_Q_reg[10][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(19),
      Q => \mul_reg_Q_reg[10]\(19)
    );
\mul_reg_Q_reg[10][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(1),
      Q => \mul_reg_Q_reg[10]\(1)
    );
\mul_reg_Q_reg[10][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(20),
      Q => \mul_reg_Q_reg[10]\(20)
    );
\mul_reg_Q_reg[10][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(21),
      Q => \mul_reg_Q_reg[10]\(21)
    );
\mul_reg_Q_reg[10][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(22),
      Q => \mul_reg_Q_reg[10]\(22)
    );
\mul_reg_Q_reg[10][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(23),
      Q => \mul_reg_Q_reg[10]\(23)
    );
\mul_reg_Q_reg[10][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(24),
      Q => \mul_reg_Q_reg[10]\(24)
    );
\mul_reg_Q_reg[10][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(25),
      Q => \mul_reg_Q_reg[10]\(25)
    );
\mul_reg_Q_reg[10][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(26),
      Q => \mul_reg_Q_reg[10]\(26)
    );
\mul_reg_Q_reg[10][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(27),
      Q => \mul_reg_Q_reg[10]\(27)
    );
\mul_reg_Q_reg[10][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(28),
      Q => \mul_reg_Q_reg[10]\(28)
    );
\mul_reg_Q_reg[10][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(29),
      Q => \mul_reg_Q_reg[10]\(29)
    );
\mul_reg_Q_reg[10][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(2),
      Q => \mul_reg_Q_reg[10]\(2)
    );
\mul_reg_Q_reg[10][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(30),
      Q => \mul_reg_Q_reg[10]\(30)
    );
\mul_reg_Q_reg[10][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(31),
      Q => \mul_reg_Q_reg[10]\(31)
    );
\mul_reg_Q_reg[10][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(32),
      Q => \mul_reg_Q_reg[10]\(32)
    );
\mul_reg_Q_reg[10][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(33),
      Q => \mul_reg_Q_reg[10]\(33)
    );
\mul_reg_Q_reg[10][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(34),
      Q => \mul_reg_Q_reg[10]\(34)
    );
\mul_reg_Q_reg[10][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(35),
      Q => \mul_reg_Q_reg[10]\(35)
    );
\mul_reg_Q_reg[10][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(3),
      Q => \mul_reg_Q_reg[10]\(3)
    );
\mul_reg_Q_reg[10][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(4),
      Q => \mul_reg_Q_reg[10]\(4)
    );
\mul_reg_Q_reg[10][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(5),
      Q => \mul_reg_Q_reg[10]\(5)
    );
\mul_reg_Q_reg[10][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(6),
      Q => \mul_reg_Q_reg[10]\(6)
    );
\mul_reg_Q_reg[10][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(7),
      Q => \mul_reg_Q_reg[10]\(7)
    );
\mul_reg_Q_reg[10][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(8),
      Q => \mul_reg_Q_reg[10]\(8)
    );
\mul_reg_Q_reg[10][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[11]\(9),
      Q => \mul_reg_Q_reg[10]\(9)
    );
\mul_reg_Q_reg[11]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => axis_data_fifo_Q_n_2,
      A(28) => axis_data_fifo_Q_n_2,
      A(27) => axis_data_fifo_Q_n_2,
      A(26) => axis_data_fifo_Q_n_2,
      A(25) => axis_data_fifo_Q_n_2,
      A(24) => axis_data_fifo_Q_n_2,
      A(23) => axis_data_fifo_Q_n_2,
      A(22) => axis_data_fifo_Q_n_2,
      A(21) => axis_data_fifo_Q_n_2,
      A(20) => axis_data_fifo_Q_n_2,
      A(19) => axis_data_fifo_Q_n_2,
      A(18) => axis_data_fifo_Q_n_2,
      A(17) => axis_data_fifo_Q_n_2,
      A(16) => axis_data_fifo_Q_n_2,
      A(15) => axis_data_fifo_Q_n_2,
      A(14) => axis_data_fifo_Q_n_3,
      A(13) => axis_data_fifo_Q_n_4,
      A(12) => axis_data_fifo_Q_n_5,
      A(11) => axis_data_fifo_Q_n_6,
      A(10) => axis_data_fifo_Q_n_7,
      A(9) => axis_data_fifo_Q_n_8,
      A(8) => axis_data_fifo_Q_n_9,
      A(7) => axis_data_fifo_Q_n_10,
      A(6) => axis_data_fifo_Q_n_11,
      A(5) => axis_data_fifo_Q_n_12,
      A(4) => axis_data_fifo_Q_n_13,
      A(3) => axis_data_fifo_Q_n_14,
      A(2) => axis_data_fifo_Q_n_15,
      A(1) => axis_data_fifo_Q_n_16,
      A(0) => axis_data_fifo_Q_n_17,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_Q_reg[11]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[0]\(11),
      B(13) => '0',
      B(12 downto 11) => \coeff_reg_reg[2]\(12 downto 11),
      B(10) => \coeff_reg_reg[0]\(12),
      B(9) => \coeff_reg_reg[1]\(10),
      B(8 downto 7) => \coeff_reg_reg[2]\(12 downto 11),
      B(6) => \coeff_reg_reg[0]\(12),
      B(5) => \coeff_reg_reg[1]\(10),
      B(4 downto 3) => \coeff_reg_reg[2]\(12 downto 11),
      B(2) => \coeff_reg_reg[0]\(12),
      B(1) => \coeff_reg_reg[1]\(10),
      B(0) => \coeff_reg_reg[2]\(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_Q_reg[11]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_Q_reg[12]\(35),
      C(46) => \mul_reg_Q_reg[12]\(35),
      C(45) => \mul_reg_Q_reg[12]\(35),
      C(44) => \mul_reg_Q_reg[12]\(35),
      C(43) => \mul_reg_Q_reg[12]\(35),
      C(42) => \mul_reg_Q_reg[12]\(35),
      C(41) => \mul_reg_Q_reg[12]\(35),
      C(40) => \mul_reg_Q_reg[12]\(35),
      C(39) => \mul_reg_Q_reg[12]\(35),
      C(38) => \mul_reg_Q_reg[12]\(35),
      C(37) => \mul_reg_Q_reg[12]\(35),
      C(36) => \mul_reg_Q_reg[12]\(35),
      C(35) => \mul_reg_Q_reg[12]\(35),
      C(34) => \mul_reg_Q_reg[12]\(35),
      C(33) => \mul_reg_Q_reg[12]\(35),
      C(32) => \mul_reg_Q_reg[12]\(35),
      C(31) => \mul_reg_Q_reg[12]\(35),
      C(30 downto 0) => \mul_reg_Q_reg[12]\(30 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_Q_reg[11]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_Q_reg[11]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => filter2fifo_ready1,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_Q_reg[11]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_Q_reg[11]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 36) => \NLW_mul_reg_Q_reg[11]0_P_UNCONNECTED\(47 downto 36),
      P(35) => \mul_reg_Q_reg[11]0_n_70\,
      P(34) => \mul_reg_Q_reg[11]0_n_71\,
      P(33) => \mul_reg_Q_reg[11]0_n_72\,
      P(32) => \mul_reg_Q_reg[11]0_n_73\,
      P(31) => \mul_reg_Q_reg[11]0_n_74\,
      P(30) => \mul_reg_Q_reg[11]0_n_75\,
      P(29) => \mul_reg_Q_reg[11]0_n_76\,
      P(28) => \mul_reg_Q_reg[11]0_n_77\,
      P(27) => \mul_reg_Q_reg[11]0_n_78\,
      P(26) => \mul_reg_Q_reg[11]0_n_79\,
      P(25) => \mul_reg_Q_reg[11]0_n_80\,
      P(24) => \mul_reg_Q_reg[11]0_n_81\,
      P(23) => \mul_reg_Q_reg[11]0_n_82\,
      P(22) => \mul_reg_Q_reg[11]0_n_83\,
      P(21) => \mul_reg_Q_reg[11]0_n_84\,
      P(20) => \mul_reg_Q_reg[11]0_n_85\,
      P(19) => \mul_reg_Q_reg[11]0_n_86\,
      P(18) => \mul_reg_Q_reg[11]0_n_87\,
      P(17) => \mul_reg_Q_reg[11]0_n_88\,
      P(16) => \mul_reg_Q_reg[11]0_n_89\,
      P(15) => \mul_reg_Q_reg[11]0_n_90\,
      P(14) => \mul_reg_Q_reg[11]0_n_91\,
      P(13) => \mul_reg_Q_reg[11]0_n_92\,
      P(12) => \mul_reg_Q_reg[11]0_n_93\,
      P(11) => \mul_reg_Q_reg[11]0_n_94\,
      P(10) => \mul_reg_Q_reg[11]0_n_95\,
      P(9) => \mul_reg_Q_reg[11]0_n_96\,
      P(8) => \mul_reg_Q_reg[11]0_n_97\,
      P(7) => \mul_reg_Q_reg[11]0_n_98\,
      P(6) => \mul_reg_Q_reg[11]0_n_99\,
      P(5) => \mul_reg_Q_reg[11]0_n_100\,
      P(4) => \mul_reg_Q_reg[11]0_n_101\,
      P(3) => \mul_reg_Q_reg[11]0_n_102\,
      P(2) => \mul_reg_Q_reg[11]0_n_103\,
      P(1) => \mul_reg_Q_reg[11]0_n_104\,
      P(0) => \mul_reg_Q_reg[11]0_n_105\,
      PATTERNBDETECT => \NLW_mul_reg_Q_reg[11]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_Q_reg[11]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_Q_reg[11]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_Q_reg[11]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_Q_reg[11]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_Q_reg[12][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(0),
      Q => \mul_reg_Q_reg[12]\(0)
    );
\mul_reg_Q_reg[12][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(10),
      Q => \mul_reg_Q_reg[12]\(10)
    );
\mul_reg_Q_reg[12][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(11),
      Q => \mul_reg_Q_reg[12]\(11)
    );
\mul_reg_Q_reg[12][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(12),
      Q => \mul_reg_Q_reg[12]\(12)
    );
\mul_reg_Q_reg[12][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(13),
      Q => \mul_reg_Q_reg[12]\(13)
    );
\mul_reg_Q_reg[12][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(14),
      Q => \mul_reg_Q_reg[12]\(14)
    );
\mul_reg_Q_reg[12][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(15),
      Q => \mul_reg_Q_reg[12]\(15)
    );
\mul_reg_Q_reg[12][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(16),
      Q => \mul_reg_Q_reg[12]\(16)
    );
\mul_reg_Q_reg[12][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(17),
      Q => \mul_reg_Q_reg[12]\(17)
    );
\mul_reg_Q_reg[12][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(18),
      Q => \mul_reg_Q_reg[12]\(18)
    );
\mul_reg_Q_reg[12][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(19),
      Q => \mul_reg_Q_reg[12]\(19)
    );
\mul_reg_Q_reg[12][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(1),
      Q => \mul_reg_Q_reg[12]\(1)
    );
\mul_reg_Q_reg[12][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(20),
      Q => \mul_reg_Q_reg[12]\(20)
    );
\mul_reg_Q_reg[12][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(21),
      Q => \mul_reg_Q_reg[12]\(21)
    );
\mul_reg_Q_reg[12][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(22),
      Q => \mul_reg_Q_reg[12]\(22)
    );
\mul_reg_Q_reg[12][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(23),
      Q => \mul_reg_Q_reg[12]\(23)
    );
\mul_reg_Q_reg[12][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(24),
      Q => \mul_reg_Q_reg[12]\(24)
    );
\mul_reg_Q_reg[12][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(25),
      Q => \mul_reg_Q_reg[12]\(25)
    );
\mul_reg_Q_reg[12][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(26),
      Q => \mul_reg_Q_reg[12]\(26)
    );
\mul_reg_Q_reg[12][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(27),
      Q => \mul_reg_Q_reg[12]\(27)
    );
\mul_reg_Q_reg[12][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(28),
      Q => \mul_reg_Q_reg[12]\(28)
    );
\mul_reg_Q_reg[12][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(29),
      Q => \mul_reg_Q_reg[12]\(29)
    );
\mul_reg_Q_reg[12][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(2),
      Q => \mul_reg_Q_reg[12]\(2)
    );
\mul_reg_Q_reg[12][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(30),
      Q => \mul_reg_Q_reg[12]\(30)
    );
\mul_reg_Q_reg[12][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(35),
      Q => \mul_reg_Q_reg[12]\(35)
    );
\mul_reg_Q_reg[12][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(3),
      Q => \mul_reg_Q_reg[12]\(3)
    );
\mul_reg_Q_reg[12][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(4),
      Q => \mul_reg_Q_reg[12]\(4)
    );
\mul_reg_Q_reg[12][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(5),
      Q => \mul_reg_Q_reg[12]\(5)
    );
\mul_reg_Q_reg[12][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(6),
      Q => \mul_reg_Q_reg[12]\(6)
    );
\mul_reg_Q_reg[12][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(7),
      Q => \mul_reg_Q_reg[12]\(7)
    );
\mul_reg_Q_reg[12][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(8),
      Q => \mul_reg_Q_reg[12]\(8)
    );
\mul_reg_Q_reg[12][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[13]\(9),
      Q => \mul_reg_Q_reg[12]\(9)
    );
\mul_reg_Q_reg[13][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(0),
      Q => \mul_reg_Q_reg[13]\(0)
    );
\mul_reg_Q_reg[13][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(10),
      Q => \mul_reg_Q_reg[13]\(10)
    );
\mul_reg_Q_reg[13][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(11),
      Q => \mul_reg_Q_reg[13]\(11)
    );
\mul_reg_Q_reg[13][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(12),
      Q => \mul_reg_Q_reg[13]\(12)
    );
\mul_reg_Q_reg[13][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(13),
      Q => \mul_reg_Q_reg[13]\(13)
    );
\mul_reg_Q_reg[13][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(14),
      Q => \mul_reg_Q_reg[13]\(14)
    );
\mul_reg_Q_reg[13][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(15),
      Q => \mul_reg_Q_reg[13]\(15)
    );
\mul_reg_Q_reg[13][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(16),
      Q => \mul_reg_Q_reg[13]\(16)
    );
\mul_reg_Q_reg[13][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(17),
      Q => \mul_reg_Q_reg[13]\(17)
    );
\mul_reg_Q_reg[13][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(18),
      Q => \mul_reg_Q_reg[13]\(18)
    );
\mul_reg_Q_reg[13][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(19),
      Q => \mul_reg_Q_reg[13]\(19)
    );
\mul_reg_Q_reg[13][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(1),
      Q => \mul_reg_Q_reg[13]\(1)
    );
\mul_reg_Q_reg[13][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(20),
      Q => \mul_reg_Q_reg[13]\(20)
    );
\mul_reg_Q_reg[13][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(21),
      Q => \mul_reg_Q_reg[13]\(21)
    );
\mul_reg_Q_reg[13][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(22),
      Q => \mul_reg_Q_reg[13]\(22)
    );
\mul_reg_Q_reg[13][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(23),
      Q => \mul_reg_Q_reg[13]\(23)
    );
\mul_reg_Q_reg[13][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(24),
      Q => \mul_reg_Q_reg[13]\(24)
    );
\mul_reg_Q_reg[13][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(25),
      Q => \mul_reg_Q_reg[13]\(25)
    );
\mul_reg_Q_reg[13][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(26),
      Q => \mul_reg_Q_reg[13]\(26)
    );
\mul_reg_Q_reg[13][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(27),
      Q => \mul_reg_Q_reg[13]\(27)
    );
\mul_reg_Q_reg[13][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(28),
      Q => \mul_reg_Q_reg[13]\(28)
    );
\mul_reg_Q_reg[13][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(29),
      Q => \mul_reg_Q_reg[13]\(29)
    );
\mul_reg_Q_reg[13][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(2),
      Q => \mul_reg_Q_reg[13]\(2)
    );
\mul_reg_Q_reg[13][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(30),
      Q => \mul_reg_Q_reg[13]\(30)
    );
\mul_reg_Q_reg[13][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(35),
      Q => \mul_reg_Q_reg[13]\(35)
    );
\mul_reg_Q_reg[13][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(3),
      Q => \mul_reg_Q_reg[13]\(3)
    );
\mul_reg_Q_reg[13][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(4),
      Q => \mul_reg_Q_reg[13]\(4)
    );
\mul_reg_Q_reg[13][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(5),
      Q => \mul_reg_Q_reg[13]\(5)
    );
\mul_reg_Q_reg[13][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(6),
      Q => \mul_reg_Q_reg[13]\(6)
    );
\mul_reg_Q_reg[13][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(7),
      Q => \mul_reg_Q_reg[13]\(7)
    );
\mul_reg_Q_reg[13][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(8),
      Q => \mul_reg_Q_reg[13]\(8)
    );
\mul_reg_Q_reg[13][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[14]\(9),
      Q => \mul_reg_Q_reg[13]\(9)
    );
\mul_reg_Q_reg[14][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(0),
      Q => \mul_reg_Q_reg[14]\(0)
    );
\mul_reg_Q_reg[14][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(10),
      Q => \mul_reg_Q_reg[14]\(10)
    );
\mul_reg_Q_reg[14][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(11),
      Q => \mul_reg_Q_reg[14]\(11)
    );
\mul_reg_Q_reg[14][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(12),
      Q => \mul_reg_Q_reg[14]\(12)
    );
\mul_reg_Q_reg[14][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(13),
      Q => \mul_reg_Q_reg[14]\(13)
    );
\mul_reg_Q_reg[14][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(14),
      Q => \mul_reg_Q_reg[14]\(14)
    );
\mul_reg_Q_reg[14][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(15),
      Q => \mul_reg_Q_reg[14]\(15)
    );
\mul_reg_Q_reg[14][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(16),
      Q => \mul_reg_Q_reg[14]\(16)
    );
\mul_reg_Q_reg[14][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(17),
      Q => \mul_reg_Q_reg[14]\(17)
    );
\mul_reg_Q_reg[14][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(18),
      Q => \mul_reg_Q_reg[14]\(18)
    );
\mul_reg_Q_reg[14][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(19),
      Q => \mul_reg_Q_reg[14]\(19)
    );
\mul_reg_Q_reg[14][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(1),
      Q => \mul_reg_Q_reg[14]\(1)
    );
\mul_reg_Q_reg[14][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(20),
      Q => \mul_reg_Q_reg[14]\(20)
    );
\mul_reg_Q_reg[14][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(21),
      Q => \mul_reg_Q_reg[14]\(21)
    );
\mul_reg_Q_reg[14][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(22),
      Q => \mul_reg_Q_reg[14]\(22)
    );
\mul_reg_Q_reg[14][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(23),
      Q => \mul_reg_Q_reg[14]\(23)
    );
\mul_reg_Q_reg[14][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(24),
      Q => \mul_reg_Q_reg[14]\(24)
    );
\mul_reg_Q_reg[14][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(25),
      Q => \mul_reg_Q_reg[14]\(25)
    );
\mul_reg_Q_reg[14][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(26),
      Q => \mul_reg_Q_reg[14]\(26)
    );
\mul_reg_Q_reg[14][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(27),
      Q => \mul_reg_Q_reg[14]\(27)
    );
\mul_reg_Q_reg[14][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(28),
      Q => \mul_reg_Q_reg[14]\(28)
    );
\mul_reg_Q_reg[14][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(29),
      Q => \mul_reg_Q_reg[14]\(29)
    );
\mul_reg_Q_reg[14][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(2),
      Q => \mul_reg_Q_reg[14]\(2)
    );
\mul_reg_Q_reg[14][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(30),
      Q => \mul_reg_Q_reg[14]\(30)
    );
\mul_reg_Q_reg[14][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(35),
      Q => \mul_reg_Q_reg[14]\(35)
    );
\mul_reg_Q_reg[14][35]_i_2\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => '1',
      Q => \mul_reg_Q_reg[14][35]_i_2_n_0\
    );
\mul_reg_Q_reg[14][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(3),
      Q => \mul_reg_Q_reg[14]\(3)
    );
\mul_reg_Q_reg[14][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(4),
      Q => \mul_reg_Q_reg[14]\(4)
    );
\mul_reg_Q_reg[14][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(5),
      Q => \mul_reg_Q_reg[14]\(5)
    );
\mul_reg_Q_reg[14][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(6),
      Q => \mul_reg_Q_reg[14]\(6)
    );
\mul_reg_Q_reg[14][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(7),
      Q => \mul_reg_Q_reg[14]\(7)
    );
\mul_reg_Q_reg[14][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(8),
      Q => \mul_reg_Q_reg[14]\(8)
    );
\mul_reg_Q_reg[14][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[15]\(9),
      Q => \mul_reg_Q_reg[14]\(9)
    );
\mul_reg_Q_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(0),
      Q => \mul_reg_Q_reg[1]\(0)
    );
\mul_reg_Q_reg[1][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(10),
      Q => \mul_reg_Q_reg[1]\(10)
    );
\mul_reg_Q_reg[1][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(11),
      Q => \mul_reg_Q_reg[1]\(11)
    );
\mul_reg_Q_reg[1][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(12),
      Q => \mul_reg_Q_reg[1]\(12)
    );
\mul_reg_Q_reg[1][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(13),
      Q => \mul_reg_Q_reg[1]\(13)
    );
\mul_reg_Q_reg[1][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(14),
      Q => \mul_reg_Q_reg[1]\(14)
    );
\mul_reg_Q_reg[1][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(15),
      Q => \mul_reg_Q_reg[1]\(15)
    );
\mul_reg_Q_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(1),
      Q => \mul_reg_Q_reg[1]\(1)
    );
\mul_reg_Q_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(2),
      Q => \mul_reg_Q_reg[1]\(2)
    );
\mul_reg_Q_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(3),
      Q => \mul_reg_Q_reg[1]\(3)
    );
\mul_reg_Q_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(4),
      Q => \mul_reg_Q_reg[1]\(4)
    );
\mul_reg_Q_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(5),
      Q => \mul_reg_Q_reg[1]\(5)
    );
\mul_reg_Q_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(6),
      Q => \mul_reg_Q_reg[1]\(6)
    );
\mul_reg_Q_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(7),
      Q => \mul_reg_Q_reg[1]\(7)
    );
\mul_reg_Q_reg[1][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(8),
      Q => \mul_reg_Q_reg[1]\(8)
    );
\mul_reg_Q_reg[1][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[2]\(9),
      Q => \mul_reg_Q_reg[1]\(9)
    );
\mul_reg_Q_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(0),
      Q => \mul_reg_Q_reg[2]\(0)
    );
\mul_reg_Q_reg[2][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(10),
      Q => \mul_reg_Q_reg[2]\(10)
    );
\mul_reg_Q_reg[2][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(11),
      Q => \mul_reg_Q_reg[2]\(11)
    );
\mul_reg_Q_reg[2][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(12),
      Q => \mul_reg_Q_reg[2]\(12)
    );
\mul_reg_Q_reg[2][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(13),
      Q => \mul_reg_Q_reg[2]\(13)
    );
\mul_reg_Q_reg[2][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(14),
      Q => \mul_reg_Q_reg[2]\(14)
    );
\mul_reg_Q_reg[2][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(15),
      Q => \mul_reg_Q_reg[2]\(15)
    );
\mul_reg_Q_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(1),
      Q => \mul_reg_Q_reg[2]\(1)
    );
\mul_reg_Q_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(2),
      Q => \mul_reg_Q_reg[2]\(2)
    );
\mul_reg_Q_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(3),
      Q => \mul_reg_Q_reg[2]\(3)
    );
\mul_reg_Q_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(4),
      Q => \mul_reg_Q_reg[2]\(4)
    );
\mul_reg_Q_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(5),
      Q => \mul_reg_Q_reg[2]\(5)
    );
\mul_reg_Q_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(6),
      Q => \mul_reg_Q_reg[2]\(6)
    );
\mul_reg_Q_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(7),
      Q => \mul_reg_Q_reg[2]\(7)
    );
\mul_reg_Q_reg[2][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(8),
      Q => \mul_reg_Q_reg[2]\(8)
    );
\mul_reg_Q_reg[2][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[3]\(9),
      Q => \mul_reg_Q_reg[2]\(9)
    );
\mul_reg_Q_reg[3]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => axis_data_fifo_Q_n_2,
      A(28) => axis_data_fifo_Q_n_2,
      A(27) => axis_data_fifo_Q_n_2,
      A(26) => axis_data_fifo_Q_n_2,
      A(25) => axis_data_fifo_Q_n_2,
      A(24) => axis_data_fifo_Q_n_2,
      A(23) => axis_data_fifo_Q_n_2,
      A(22) => axis_data_fifo_Q_n_2,
      A(21) => axis_data_fifo_Q_n_2,
      A(20) => axis_data_fifo_Q_n_2,
      A(19) => axis_data_fifo_Q_n_2,
      A(18) => axis_data_fifo_Q_n_2,
      A(17) => axis_data_fifo_Q_n_2,
      A(16) => axis_data_fifo_Q_n_2,
      A(15) => axis_data_fifo_Q_n_2,
      A(14) => axis_data_fifo_Q_n_3,
      A(13) => axis_data_fifo_Q_n_4,
      A(12) => axis_data_fifo_Q_n_5,
      A(11) => axis_data_fifo_Q_n_6,
      A(10) => axis_data_fifo_Q_n_7,
      A(9) => axis_data_fifo_Q_n_8,
      A(8) => axis_data_fifo_Q_n_9,
      A(7) => axis_data_fifo_Q_n_10,
      A(6) => axis_data_fifo_Q_n_11,
      A(5) => axis_data_fifo_Q_n_12,
      A(4) => axis_data_fifo_Q_n_13,
      A(3) => axis_data_fifo_Q_n_14,
      A(2) => axis_data_fifo_Q_n_15,
      A(1) => axis_data_fifo_Q_n_16,
      A(0) => axis_data_fifo_Q_n_17,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_Q_reg[3]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 9) => \coeff_reg_reg[0]\(14 downto 9),
      B(8 downto 5) => \coeff_reg_reg[0]\(12 downto 9),
      B(4 downto 1) => \coeff_reg_reg[0]\(12 downto 9),
      B(0) => \coeff_reg_reg[0]\(12),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_Q_reg[3]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_Q_reg[4]\(35),
      C(46) => \mul_reg_Q_reg[4]\(35),
      C(45) => \mul_reg_Q_reg[4]\(35),
      C(44) => \mul_reg_Q_reg[4]\(35),
      C(43) => \mul_reg_Q_reg[4]\(35),
      C(42) => \mul_reg_Q_reg[4]\(35),
      C(41) => \mul_reg_Q_reg[4]\(35),
      C(40) => \mul_reg_Q_reg[4]\(35),
      C(39) => \mul_reg_Q_reg[4]\(35),
      C(38) => \mul_reg_Q_reg[4]\(35),
      C(37) => \mul_reg_Q_reg[4]\(35),
      C(36) => \mul_reg_Q_reg[4]\(35),
      C(35 downto 0) => \mul_reg_Q_reg[4]\(35 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_Q_reg[3]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_Q_reg[3]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => filter2fifo_ready1,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_Q_reg[3]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_Q_reg[3]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 36) => \NLW_mul_reg_Q_reg[3]0_P_UNCONNECTED\(47 downto 36),
      P(35) => \mul_reg_Q_reg[3]0_n_70\,
      P(34) => \mul_reg_Q_reg[3]0_n_71\,
      P(33) => \mul_reg_Q_reg[3]0_n_72\,
      P(32) => \mul_reg_Q_reg[3]0_n_73\,
      P(31) => \mul_reg_Q_reg[3]0_n_74\,
      P(30) => \mul_reg_Q_reg[3]0_n_75\,
      P(29) => \mul_reg_Q_reg[3]0_n_76\,
      P(28) => \mul_reg_Q_reg[3]0_n_77\,
      P(27) => \mul_reg_Q_reg[3]0_n_78\,
      P(26) => \mul_reg_Q_reg[3]0_n_79\,
      P(25) => \mul_reg_Q_reg[3]0_n_80\,
      P(24) => \mul_reg_Q_reg[3]0_n_81\,
      P(23) => \mul_reg_Q_reg[3]0_n_82\,
      P(22) => \mul_reg_Q_reg[3]0_n_83\,
      P(21) => \mul_reg_Q_reg[3]0_n_84\,
      P(20) => \mul_reg_Q_reg[3]0_n_85\,
      P(19) => \mul_reg_Q_reg[3]0_n_86\,
      P(18) => \mul_reg_Q_reg[3]0_n_87\,
      P(17) => \mul_reg_Q_reg[3]0_n_88\,
      P(16) => \mul_reg_Q_reg[3]0_n_89\,
      P(15) => \mul_reg_Q_reg[3]0_n_90\,
      P(14) => \mul_reg_Q_reg[3]0_n_91\,
      P(13) => \mul_reg_Q_reg[3]0_n_92\,
      P(12) => \mul_reg_Q_reg[3]0_n_93\,
      P(11) => \mul_reg_Q_reg[3]0_n_94\,
      P(10) => \mul_reg_Q_reg[3]0_n_95\,
      P(9) => \mul_reg_Q_reg[3]0_n_96\,
      P(8) => \mul_reg_Q_reg[3]0_n_97\,
      P(7) => \mul_reg_Q_reg[3]0_n_98\,
      P(6) => \mul_reg_Q_reg[3]0_n_99\,
      P(5) => \mul_reg_Q_reg[3]0_n_100\,
      P(4) => \mul_reg_Q_reg[3]0_n_101\,
      P(3) => \mul_reg_Q_reg[3]0_n_102\,
      P(2) => \mul_reg_Q_reg[3]0_n_103\,
      P(1) => \mul_reg_Q_reg[3]0_n_104\,
      P(0) => \mul_reg_Q_reg[3]0_n_105\,
      PATTERNBDETECT => \NLW_mul_reg_Q_reg[3]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_Q_reg[3]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_Q_reg[3]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_Q_reg[3]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_Q_reg[3]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_Q_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(0),
      Q => \mul_reg_Q_reg[4]\(0)
    );
\mul_reg_Q_reg[4][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(10),
      Q => \mul_reg_Q_reg[4]\(10)
    );
\mul_reg_Q_reg[4][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(11),
      Q => \mul_reg_Q_reg[4]\(11)
    );
\mul_reg_Q_reg[4][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(12),
      Q => \mul_reg_Q_reg[4]\(12)
    );
\mul_reg_Q_reg[4][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(13),
      Q => \mul_reg_Q_reg[4]\(13)
    );
\mul_reg_Q_reg[4][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(14),
      Q => \mul_reg_Q_reg[4]\(14)
    );
\mul_reg_Q_reg[4][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(15),
      Q => \mul_reg_Q_reg[4]\(15)
    );
\mul_reg_Q_reg[4][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(16),
      Q => \mul_reg_Q_reg[4]\(16)
    );
\mul_reg_Q_reg[4][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(17),
      Q => \mul_reg_Q_reg[4]\(17)
    );
\mul_reg_Q_reg[4][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(18),
      Q => \mul_reg_Q_reg[4]\(18)
    );
\mul_reg_Q_reg[4][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(19),
      Q => \mul_reg_Q_reg[4]\(19)
    );
\mul_reg_Q_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(1),
      Q => \mul_reg_Q_reg[4]\(1)
    );
\mul_reg_Q_reg[4][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(20),
      Q => \mul_reg_Q_reg[4]\(20)
    );
\mul_reg_Q_reg[4][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(21),
      Q => \mul_reg_Q_reg[4]\(21)
    );
\mul_reg_Q_reg[4][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(22),
      Q => \mul_reg_Q_reg[4]\(22)
    );
\mul_reg_Q_reg[4][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(23),
      Q => \mul_reg_Q_reg[4]\(23)
    );
\mul_reg_Q_reg[4][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(24),
      Q => \mul_reg_Q_reg[4]\(24)
    );
\mul_reg_Q_reg[4][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(25),
      Q => \mul_reg_Q_reg[4]\(25)
    );
\mul_reg_Q_reg[4][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(26),
      Q => \mul_reg_Q_reg[4]\(26)
    );
\mul_reg_Q_reg[4][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(27),
      Q => \mul_reg_Q_reg[4]\(27)
    );
\mul_reg_Q_reg[4][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(28),
      Q => \mul_reg_Q_reg[4]\(28)
    );
\mul_reg_Q_reg[4][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(29),
      Q => \mul_reg_Q_reg[4]\(29)
    );
\mul_reg_Q_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(2),
      Q => \mul_reg_Q_reg[4]\(2)
    );
\mul_reg_Q_reg[4][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(30),
      Q => \mul_reg_Q_reg[4]\(30)
    );
\mul_reg_Q_reg[4][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(31),
      Q => \mul_reg_Q_reg[4]\(31)
    );
\mul_reg_Q_reg[4][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(32),
      Q => \mul_reg_Q_reg[4]\(32)
    );
\mul_reg_Q_reg[4][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(33),
      Q => \mul_reg_Q_reg[4]\(33)
    );
\mul_reg_Q_reg[4][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(34),
      Q => \mul_reg_Q_reg[4]\(34)
    );
\mul_reg_Q_reg[4][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(35),
      Q => \mul_reg_Q_reg[4]\(35)
    );
\mul_reg_Q_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(3),
      Q => \mul_reg_Q_reg[4]\(3)
    );
\mul_reg_Q_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(4),
      Q => \mul_reg_Q_reg[4]\(4)
    );
\mul_reg_Q_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(5),
      Q => \mul_reg_Q_reg[4]\(5)
    );
\mul_reg_Q_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(6),
      Q => \mul_reg_Q_reg[4]\(6)
    );
\mul_reg_Q_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(7),
      Q => \mul_reg_Q_reg[4]\(7)
    );
\mul_reg_Q_reg[4][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(8),
      Q => \mul_reg_Q_reg[4]\(8)
    );
\mul_reg_Q_reg[4][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[5]\(9),
      Q => \mul_reg_Q_reg[4]\(9)
    );
\mul_reg_Q_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(0),
      Q => \mul_reg_Q_reg[5]\(0)
    );
\mul_reg_Q_reg[5][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(10),
      Q => \mul_reg_Q_reg[5]\(10)
    );
\mul_reg_Q_reg[5][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(11),
      Q => \mul_reg_Q_reg[5]\(11)
    );
\mul_reg_Q_reg[5][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(12),
      Q => \mul_reg_Q_reg[5]\(12)
    );
\mul_reg_Q_reg[5][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(13),
      Q => \mul_reg_Q_reg[5]\(13)
    );
\mul_reg_Q_reg[5][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(14),
      Q => \mul_reg_Q_reg[5]\(14)
    );
\mul_reg_Q_reg[5][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(15),
      Q => \mul_reg_Q_reg[5]\(15)
    );
\mul_reg_Q_reg[5][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(16),
      Q => \mul_reg_Q_reg[5]\(16)
    );
\mul_reg_Q_reg[5][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(17),
      Q => \mul_reg_Q_reg[5]\(17)
    );
\mul_reg_Q_reg[5][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(18),
      Q => \mul_reg_Q_reg[5]\(18)
    );
\mul_reg_Q_reg[5][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(19),
      Q => \mul_reg_Q_reg[5]\(19)
    );
\mul_reg_Q_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(1),
      Q => \mul_reg_Q_reg[5]\(1)
    );
\mul_reg_Q_reg[5][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(20),
      Q => \mul_reg_Q_reg[5]\(20)
    );
\mul_reg_Q_reg[5][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(21),
      Q => \mul_reg_Q_reg[5]\(21)
    );
\mul_reg_Q_reg[5][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(22),
      Q => \mul_reg_Q_reg[5]\(22)
    );
\mul_reg_Q_reg[5][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(23),
      Q => \mul_reg_Q_reg[5]\(23)
    );
\mul_reg_Q_reg[5][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(24),
      Q => \mul_reg_Q_reg[5]\(24)
    );
\mul_reg_Q_reg[5][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(25),
      Q => \mul_reg_Q_reg[5]\(25)
    );
\mul_reg_Q_reg[5][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(26),
      Q => \mul_reg_Q_reg[5]\(26)
    );
\mul_reg_Q_reg[5][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(27),
      Q => \mul_reg_Q_reg[5]\(27)
    );
\mul_reg_Q_reg[5][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(28),
      Q => \mul_reg_Q_reg[5]\(28)
    );
\mul_reg_Q_reg[5][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(29),
      Q => \mul_reg_Q_reg[5]\(29)
    );
\mul_reg_Q_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(2),
      Q => \mul_reg_Q_reg[5]\(2)
    );
\mul_reg_Q_reg[5][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(30),
      Q => \mul_reg_Q_reg[5]\(30)
    );
\mul_reg_Q_reg[5][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(31),
      Q => \mul_reg_Q_reg[5]\(31)
    );
\mul_reg_Q_reg[5][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(32),
      Q => \mul_reg_Q_reg[5]\(32)
    );
\mul_reg_Q_reg[5][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(33),
      Q => \mul_reg_Q_reg[5]\(33)
    );
\mul_reg_Q_reg[5][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(34),
      Q => \mul_reg_Q_reg[5]\(34)
    );
\mul_reg_Q_reg[5][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(35),
      Q => \mul_reg_Q_reg[5]\(35)
    );
\mul_reg_Q_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(3),
      Q => \mul_reg_Q_reg[5]\(3)
    );
\mul_reg_Q_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(4),
      Q => \mul_reg_Q_reg[5]\(4)
    );
\mul_reg_Q_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(5),
      Q => \mul_reg_Q_reg[5]\(5)
    );
\mul_reg_Q_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(6),
      Q => \mul_reg_Q_reg[5]\(6)
    );
\mul_reg_Q_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(7),
      Q => \mul_reg_Q_reg[5]\(7)
    );
\mul_reg_Q_reg[5][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(8),
      Q => \mul_reg_Q_reg[5]\(8)
    );
\mul_reg_Q_reg[5][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[6]\(9),
      Q => \mul_reg_Q_reg[5]\(9)
    );
\mul_reg_Q_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(0),
      Q => \mul_reg_Q_reg[6]\(0)
    );
\mul_reg_Q_reg[6][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(10),
      Q => \mul_reg_Q_reg[6]\(10)
    );
\mul_reg_Q_reg[6][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(11),
      Q => \mul_reg_Q_reg[6]\(11)
    );
\mul_reg_Q_reg[6][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(12),
      Q => \mul_reg_Q_reg[6]\(12)
    );
\mul_reg_Q_reg[6][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(13),
      Q => \mul_reg_Q_reg[6]\(13)
    );
\mul_reg_Q_reg[6][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(14),
      Q => \mul_reg_Q_reg[6]\(14)
    );
\mul_reg_Q_reg[6][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(15),
      Q => \mul_reg_Q_reg[6]\(15)
    );
\mul_reg_Q_reg[6][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(16),
      Q => \mul_reg_Q_reg[6]\(16)
    );
\mul_reg_Q_reg[6][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(17),
      Q => \mul_reg_Q_reg[6]\(17)
    );
\mul_reg_Q_reg[6][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(18),
      Q => \mul_reg_Q_reg[6]\(18)
    );
\mul_reg_Q_reg[6][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(19),
      Q => \mul_reg_Q_reg[6]\(19)
    );
\mul_reg_Q_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(1),
      Q => \mul_reg_Q_reg[6]\(1)
    );
\mul_reg_Q_reg[6][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(20),
      Q => \mul_reg_Q_reg[6]\(20)
    );
\mul_reg_Q_reg[6][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(21),
      Q => \mul_reg_Q_reg[6]\(21)
    );
\mul_reg_Q_reg[6][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(22),
      Q => \mul_reg_Q_reg[6]\(22)
    );
\mul_reg_Q_reg[6][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(23),
      Q => \mul_reg_Q_reg[6]\(23)
    );
\mul_reg_Q_reg[6][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(24),
      Q => \mul_reg_Q_reg[6]\(24)
    );
\mul_reg_Q_reg[6][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(25),
      Q => \mul_reg_Q_reg[6]\(25)
    );
\mul_reg_Q_reg[6][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(26),
      Q => \mul_reg_Q_reg[6]\(26)
    );
\mul_reg_Q_reg[6][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(27),
      Q => \mul_reg_Q_reg[6]\(27)
    );
\mul_reg_Q_reg[6][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(28),
      Q => \mul_reg_Q_reg[6]\(28)
    );
\mul_reg_Q_reg[6][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(29),
      Q => \mul_reg_Q_reg[6]\(29)
    );
\mul_reg_Q_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(2),
      Q => \mul_reg_Q_reg[6]\(2)
    );
\mul_reg_Q_reg[6][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(30),
      Q => \mul_reg_Q_reg[6]\(30)
    );
\mul_reg_Q_reg[6][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(31),
      Q => \mul_reg_Q_reg[6]\(31)
    );
\mul_reg_Q_reg[6][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(32),
      Q => \mul_reg_Q_reg[6]\(32)
    );
\mul_reg_Q_reg[6][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(33),
      Q => \mul_reg_Q_reg[6]\(33)
    );
\mul_reg_Q_reg[6][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(34),
      Q => \mul_reg_Q_reg[6]\(34)
    );
\mul_reg_Q_reg[6][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(35),
      Q => \mul_reg_Q_reg[6]\(35)
    );
\mul_reg_Q_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(3),
      Q => \mul_reg_Q_reg[6]\(3)
    );
\mul_reg_Q_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(4),
      Q => \mul_reg_Q_reg[6]\(4)
    );
\mul_reg_Q_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(5),
      Q => \mul_reg_Q_reg[6]\(5)
    );
\mul_reg_Q_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(6),
      Q => \mul_reg_Q_reg[6]\(6)
    );
\mul_reg_Q_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(7),
      Q => \mul_reg_Q_reg[6]\(7)
    );
\mul_reg_Q_reg[6][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(8),
      Q => \mul_reg_Q_reg[6]\(8)
    );
\mul_reg_Q_reg[6][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[7]\(9),
      Q => \mul_reg_Q_reg[6]\(9)
    );
\mul_reg_Q_reg[7]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => axis_data_fifo_Q_n_2,
      A(28) => axis_data_fifo_Q_n_2,
      A(27) => axis_data_fifo_Q_n_2,
      A(26) => axis_data_fifo_Q_n_2,
      A(25) => axis_data_fifo_Q_n_2,
      A(24) => axis_data_fifo_Q_n_2,
      A(23) => axis_data_fifo_Q_n_2,
      A(22) => axis_data_fifo_Q_n_2,
      A(21) => axis_data_fifo_Q_n_2,
      A(20) => axis_data_fifo_Q_n_2,
      A(19) => axis_data_fifo_Q_n_2,
      A(18) => axis_data_fifo_Q_n_2,
      A(17) => axis_data_fifo_Q_n_2,
      A(16) => axis_data_fifo_Q_n_2,
      A(15) => axis_data_fifo_Q_n_2,
      A(14) => axis_data_fifo_Q_n_3,
      A(13) => axis_data_fifo_Q_n_4,
      A(12) => axis_data_fifo_Q_n_5,
      A(11) => axis_data_fifo_Q_n_6,
      A(10) => axis_data_fifo_Q_n_7,
      A(9) => axis_data_fifo_Q_n_8,
      A(8) => axis_data_fifo_Q_n_9,
      A(7) => axis_data_fifo_Q_n_10,
      A(6) => axis_data_fifo_Q_n_11,
      A(5) => axis_data_fifo_Q_n_12,
      A(4) => axis_data_fifo_Q_n_13,
      A(3) => axis_data_fifo_Q_n_14,
      A(2) => axis_data_fifo_Q_n_15,
      A(1) => axis_data_fifo_Q_n_16,
      A(0) => axis_data_fifo_Q_n_17,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_Q_reg[7]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[1]\(14),
      B(13) => '0',
      B(12) => \coeff_reg_reg[0]\(14),
      B(11) => \coeff_reg_reg[0]\(9),
      B(10) => \coeff_reg_reg[1]\(10),
      B(9) => \coeff_reg_reg[0]\(12),
      B(8) => \coeff_reg_reg[0]\(14),
      B(7) => \coeff_reg_reg[0]\(9),
      B(6) => \coeff_reg_reg[1]\(10),
      B(5) => \coeff_reg_reg[0]\(12),
      B(4) => \coeff_reg_reg[0]\(14),
      B(3) => \coeff_reg_reg[0]\(9),
      B(2) => \coeff_reg_reg[1]\(10),
      B(1) => \coeff_reg_reg[0]\(12),
      B(0) => \coeff_reg_reg[1]\(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_Q_reg[7]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_Q_reg[8]\(35),
      C(46) => \mul_reg_Q_reg[8]\(35),
      C(45) => \mul_reg_Q_reg[8]\(35),
      C(44) => \mul_reg_Q_reg[8]\(35),
      C(43) => \mul_reg_Q_reg[8]\(35),
      C(42) => \mul_reg_Q_reg[8]\(35),
      C(41) => \mul_reg_Q_reg[8]\(35),
      C(40) => \mul_reg_Q_reg[8]\(35),
      C(39) => \mul_reg_Q_reg[8]\(35),
      C(38) => \mul_reg_Q_reg[8]\(35),
      C(37) => \mul_reg_Q_reg[8]\(35),
      C(36) => \mul_reg_Q_reg[8]\(35),
      C(35 downto 0) => \mul_reg_Q_reg[8]\(35 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_Q_reg[7]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_Q_reg[7]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => filter2fifo_ready1,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_Q_reg[7]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_Q_reg[7]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 36) => \NLW_mul_reg_Q_reg[7]0_P_UNCONNECTED\(47 downto 36),
      P(35) => \mul_reg_Q_reg[7]0_n_70\,
      P(34) => \mul_reg_Q_reg[7]0_n_71\,
      P(33) => \mul_reg_Q_reg[7]0_n_72\,
      P(32) => \mul_reg_Q_reg[7]0_n_73\,
      P(31) => \mul_reg_Q_reg[7]0_n_74\,
      P(30) => \mul_reg_Q_reg[7]0_n_75\,
      P(29) => \mul_reg_Q_reg[7]0_n_76\,
      P(28) => \mul_reg_Q_reg[7]0_n_77\,
      P(27) => \mul_reg_Q_reg[7]0_n_78\,
      P(26) => \mul_reg_Q_reg[7]0_n_79\,
      P(25) => \mul_reg_Q_reg[7]0_n_80\,
      P(24) => \mul_reg_Q_reg[7]0_n_81\,
      P(23) => \mul_reg_Q_reg[7]0_n_82\,
      P(22) => \mul_reg_Q_reg[7]0_n_83\,
      P(21) => \mul_reg_Q_reg[7]0_n_84\,
      P(20) => \mul_reg_Q_reg[7]0_n_85\,
      P(19) => \mul_reg_Q_reg[7]0_n_86\,
      P(18) => \mul_reg_Q_reg[7]0_n_87\,
      P(17) => \mul_reg_Q_reg[7]0_n_88\,
      P(16) => \mul_reg_Q_reg[7]0_n_89\,
      P(15) => \mul_reg_Q_reg[7]0_n_90\,
      P(14) => \mul_reg_Q_reg[7]0_n_91\,
      P(13) => \mul_reg_Q_reg[7]0_n_92\,
      P(12) => \mul_reg_Q_reg[7]0_n_93\,
      P(11) => \mul_reg_Q_reg[7]0_n_94\,
      P(10) => \mul_reg_Q_reg[7]0_n_95\,
      P(9) => \mul_reg_Q_reg[7]0_n_96\,
      P(8) => \mul_reg_Q_reg[7]0_n_97\,
      P(7) => \mul_reg_Q_reg[7]0_n_98\,
      P(6) => \mul_reg_Q_reg[7]0_n_99\,
      P(5) => \mul_reg_Q_reg[7]0_n_100\,
      P(4) => \mul_reg_Q_reg[7]0_n_101\,
      P(3) => \mul_reg_Q_reg[7]0_n_102\,
      P(2) => \mul_reg_Q_reg[7]0_n_103\,
      P(1) => \mul_reg_Q_reg[7]0_n_104\,
      P(0) => \mul_reg_Q_reg[7]0_n_105\,
      PATTERNBDETECT => \NLW_mul_reg_Q_reg[7]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_Q_reg[7]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_Q_reg[7]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_Q_reg[7]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_Q_reg[7]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_Q_reg[8][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(0),
      Q => \mul_reg_Q_reg[8]\(0)
    );
\mul_reg_Q_reg[8][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(10),
      Q => \mul_reg_Q_reg[8]\(10)
    );
\mul_reg_Q_reg[8][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(11),
      Q => \mul_reg_Q_reg[8]\(11)
    );
\mul_reg_Q_reg[8][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(12),
      Q => \mul_reg_Q_reg[8]\(12)
    );
\mul_reg_Q_reg[8][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(13),
      Q => \mul_reg_Q_reg[8]\(13)
    );
\mul_reg_Q_reg[8][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(14),
      Q => \mul_reg_Q_reg[8]\(14)
    );
\mul_reg_Q_reg[8][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(15),
      Q => \mul_reg_Q_reg[8]\(15)
    );
\mul_reg_Q_reg[8][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(16),
      Q => \mul_reg_Q_reg[8]\(16)
    );
\mul_reg_Q_reg[8][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(17),
      Q => \mul_reg_Q_reg[8]\(17)
    );
\mul_reg_Q_reg[8][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(18),
      Q => \mul_reg_Q_reg[8]\(18)
    );
\mul_reg_Q_reg[8][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(19),
      Q => \mul_reg_Q_reg[8]\(19)
    );
\mul_reg_Q_reg[8][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(1),
      Q => \mul_reg_Q_reg[8]\(1)
    );
\mul_reg_Q_reg[8][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(20),
      Q => \mul_reg_Q_reg[8]\(20)
    );
\mul_reg_Q_reg[8][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(21),
      Q => \mul_reg_Q_reg[8]\(21)
    );
\mul_reg_Q_reg[8][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(22),
      Q => \mul_reg_Q_reg[8]\(22)
    );
\mul_reg_Q_reg[8][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(23),
      Q => \mul_reg_Q_reg[8]\(23)
    );
\mul_reg_Q_reg[8][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(24),
      Q => \mul_reg_Q_reg[8]\(24)
    );
\mul_reg_Q_reg[8][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(25),
      Q => \mul_reg_Q_reg[8]\(25)
    );
\mul_reg_Q_reg[8][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(26),
      Q => \mul_reg_Q_reg[8]\(26)
    );
\mul_reg_Q_reg[8][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(27),
      Q => \mul_reg_Q_reg[8]\(27)
    );
\mul_reg_Q_reg[8][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(28),
      Q => \mul_reg_Q_reg[8]\(28)
    );
\mul_reg_Q_reg[8][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(29),
      Q => \mul_reg_Q_reg[8]\(29)
    );
\mul_reg_Q_reg[8][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(2),
      Q => \mul_reg_Q_reg[8]\(2)
    );
\mul_reg_Q_reg[8][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(30),
      Q => \mul_reg_Q_reg[8]\(30)
    );
\mul_reg_Q_reg[8][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(31),
      Q => \mul_reg_Q_reg[8]\(31)
    );
\mul_reg_Q_reg[8][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(32),
      Q => \mul_reg_Q_reg[8]\(32)
    );
\mul_reg_Q_reg[8][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(33),
      Q => \mul_reg_Q_reg[8]\(33)
    );
\mul_reg_Q_reg[8][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(34),
      Q => \mul_reg_Q_reg[8]\(34)
    );
\mul_reg_Q_reg[8][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(35),
      Q => \mul_reg_Q_reg[8]\(35)
    );
\mul_reg_Q_reg[8][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(3),
      Q => \mul_reg_Q_reg[8]\(3)
    );
\mul_reg_Q_reg[8][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(4),
      Q => \mul_reg_Q_reg[8]\(4)
    );
\mul_reg_Q_reg[8][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(5),
      Q => \mul_reg_Q_reg[8]\(5)
    );
\mul_reg_Q_reg[8][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(6),
      Q => \mul_reg_Q_reg[8]\(6)
    );
\mul_reg_Q_reg[8][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(7),
      Q => \mul_reg_Q_reg[8]\(7)
    );
\mul_reg_Q_reg[8][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(8),
      Q => \mul_reg_Q_reg[8]\(8)
    );
\mul_reg_Q_reg[8][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[9]\(9),
      Q => \mul_reg_Q_reg[8]\(9)
    );
\mul_reg_Q_reg[9][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(0),
      Q => \mul_reg_Q_reg[9]\(0)
    );
\mul_reg_Q_reg[9][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(10),
      Q => \mul_reg_Q_reg[9]\(10)
    );
\mul_reg_Q_reg[9][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(11),
      Q => \mul_reg_Q_reg[9]\(11)
    );
\mul_reg_Q_reg[9][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(12),
      Q => \mul_reg_Q_reg[9]\(12)
    );
\mul_reg_Q_reg[9][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(13),
      Q => \mul_reg_Q_reg[9]\(13)
    );
\mul_reg_Q_reg[9][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(14),
      Q => \mul_reg_Q_reg[9]\(14)
    );
\mul_reg_Q_reg[9][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(15),
      Q => \mul_reg_Q_reg[9]\(15)
    );
\mul_reg_Q_reg[9][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(16),
      Q => \mul_reg_Q_reg[9]\(16)
    );
\mul_reg_Q_reg[9][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(17),
      Q => \mul_reg_Q_reg[9]\(17)
    );
\mul_reg_Q_reg[9][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(18),
      Q => \mul_reg_Q_reg[9]\(18)
    );
\mul_reg_Q_reg[9][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(19),
      Q => \mul_reg_Q_reg[9]\(19)
    );
\mul_reg_Q_reg[9][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(1),
      Q => \mul_reg_Q_reg[9]\(1)
    );
\mul_reg_Q_reg[9][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(20),
      Q => \mul_reg_Q_reg[9]\(20)
    );
\mul_reg_Q_reg[9][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(21),
      Q => \mul_reg_Q_reg[9]\(21)
    );
\mul_reg_Q_reg[9][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(22),
      Q => \mul_reg_Q_reg[9]\(22)
    );
\mul_reg_Q_reg[9][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(23),
      Q => \mul_reg_Q_reg[9]\(23)
    );
\mul_reg_Q_reg[9][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(24),
      Q => \mul_reg_Q_reg[9]\(24)
    );
\mul_reg_Q_reg[9][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(25),
      Q => \mul_reg_Q_reg[9]\(25)
    );
\mul_reg_Q_reg[9][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(26),
      Q => \mul_reg_Q_reg[9]\(26)
    );
\mul_reg_Q_reg[9][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(27),
      Q => \mul_reg_Q_reg[9]\(27)
    );
\mul_reg_Q_reg[9][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(28),
      Q => \mul_reg_Q_reg[9]\(28)
    );
\mul_reg_Q_reg[9][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(29),
      Q => \mul_reg_Q_reg[9]\(29)
    );
\mul_reg_Q_reg[9][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(2),
      Q => \mul_reg_Q_reg[9]\(2)
    );
\mul_reg_Q_reg[9][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(30),
      Q => \mul_reg_Q_reg[9]\(30)
    );
\mul_reg_Q_reg[9][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(31),
      Q => \mul_reg_Q_reg[9]\(31)
    );
\mul_reg_Q_reg[9][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(32),
      Q => \mul_reg_Q_reg[9]\(32)
    );
\mul_reg_Q_reg[9][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(33),
      Q => \mul_reg_Q_reg[9]\(33)
    );
\mul_reg_Q_reg[9][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(34),
      Q => \mul_reg_Q_reg[9]\(34)
    );
\mul_reg_Q_reg[9][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(35),
      Q => \mul_reg_Q_reg[9]\(35)
    );
\mul_reg_Q_reg[9][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(3),
      Q => \mul_reg_Q_reg[9]\(3)
    );
\mul_reg_Q_reg[9][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(4),
      Q => \mul_reg_Q_reg[9]\(4)
    );
\mul_reg_Q_reg[9][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(5),
      Q => \mul_reg_Q_reg[9]\(5)
    );
\mul_reg_Q_reg[9][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(6),
      Q => \mul_reg_Q_reg[9]\(6)
    );
\mul_reg_Q_reg[9][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(7),
      Q => \mul_reg_Q_reg[9]\(7)
    );
\mul_reg_Q_reg[9][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(8),
      Q => \mul_reg_Q_reg[9]\(8)
    );
\mul_reg_Q_reg[9][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \mul_reg_Q_reg[10]\(9),
      Q => \mul_reg_Q_reg[9]\(9)
    );
\phase_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phase_counter(0),
      O => \phase_counter[0]_i_1_n_0\
    );
\phase_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      O => filter2fifo_ready1
    );
\phase_counter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => phase_counter(1),
      I1 => phase_counter(0),
      O => \phase_counter[1]_i_2_n_0\
    );
\phase_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \phase_counter[0]_i_1_n_0\,
      Q => phase_counter(0)
    );
\phase_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => filter2fifo_ready1,
      CLR => reset,
      D => \phase_counter[1]_i_2_n_0\,
      Q => phase_counter(1)
    );
\tail_tmp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => axis_data_fifo_Q_n_1,
      I2 => reset,
      O => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => tail_tmp2,
      I1 => phase_counter(1),
      I2 => phase_counter(0),
      I3 => reset,
      O => \tail_tmp[0]_i_2_n_0\
    );
\tail_tmp[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tail_tmp_reg(0),
      O => \tail_tmp[0]_i_4_n_0\
    );
\tail_tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[0]_i_3_n_15\,
      Q => tail_tmp_reg(0),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[0]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \tail_tmp_reg[0]_i_3_n_0\,
      CO(6) => \tail_tmp_reg[0]_i_3_n_1\,
      CO(5) => \tail_tmp_reg[0]_i_3_n_2\,
      CO(4) => \tail_tmp_reg[0]_i_3_n_3\,
      CO(3) => \tail_tmp_reg[0]_i_3_n_4\,
      CO(2) => \tail_tmp_reg[0]_i_3_n_5\,
      CO(1) => \tail_tmp_reg[0]_i_3_n_6\,
      CO(0) => \tail_tmp_reg[0]_i_3_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \tail_tmp_reg[0]_i_3_n_8\,
      O(6) => \tail_tmp_reg[0]_i_3_n_9\,
      O(5) => \tail_tmp_reg[0]_i_3_n_10\,
      O(4) => \tail_tmp_reg[0]_i_3_n_11\,
      O(3) => \tail_tmp_reg[0]_i_3_n_12\,
      O(2) => \tail_tmp_reg[0]_i_3_n_13\,
      O(1) => \tail_tmp_reg[0]_i_3_n_14\,
      O(0) => \tail_tmp_reg[0]_i_3_n_15\,
      S(7 downto 1) => tail_tmp_reg(7 downto 1),
      S(0) => \tail_tmp[0]_i_4_n_0\
    );
\tail_tmp_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[0]_i_3_n_15\,
      Q => \tail_tmp_reg[0]_rep_n_0\,
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[8]_i_1_n_13\,
      Q => tail_tmp_reg(10),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[8]_i_1_n_12\,
      Q => tail_tmp_reg(11),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[8]_i_1_n_11\,
      Q => tail_tmp_reg(12),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[8]_i_1_n_10\,
      Q => tail_tmp_reg(13),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[8]_i_1_n_9\,
      Q => tail_tmp_reg(14),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[8]_i_1_n_8\,
      Q => tail_tmp_reg(15),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[16]_i_1_n_15\,
      Q => tail_tmp_reg(16),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tail_tmp_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \tail_tmp_reg[16]_i_1_n_0\,
      CO(6) => \tail_tmp_reg[16]_i_1_n_1\,
      CO(5) => \tail_tmp_reg[16]_i_1_n_2\,
      CO(4) => \tail_tmp_reg[16]_i_1_n_3\,
      CO(3) => \tail_tmp_reg[16]_i_1_n_4\,
      CO(2) => \tail_tmp_reg[16]_i_1_n_5\,
      CO(1) => \tail_tmp_reg[16]_i_1_n_6\,
      CO(0) => \tail_tmp_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tail_tmp_reg[16]_i_1_n_8\,
      O(6) => \tail_tmp_reg[16]_i_1_n_9\,
      O(5) => \tail_tmp_reg[16]_i_1_n_10\,
      O(4) => \tail_tmp_reg[16]_i_1_n_11\,
      O(3) => \tail_tmp_reg[16]_i_1_n_12\,
      O(2) => \tail_tmp_reg[16]_i_1_n_13\,
      O(1) => \tail_tmp_reg[16]_i_1_n_14\,
      O(0) => \tail_tmp_reg[16]_i_1_n_15\,
      S(7 downto 0) => tail_tmp_reg(23 downto 16)
    );
\tail_tmp_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[16]_i_1_n_14\,
      Q => tail_tmp_reg(17),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[16]_i_1_n_13\,
      Q => tail_tmp_reg(18),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[16]_i_1_n_12\,
      Q => tail_tmp_reg(19),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[0]_i_3_n_14\,
      Q => tail_tmp_reg(1),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[16]_i_1_n_11\,
      Q => tail_tmp_reg(20),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[16]_i_1_n_10\,
      Q => tail_tmp_reg(21),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[16]_i_1_n_9\,
      Q => tail_tmp_reg(22),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[16]_i_1_n_8\,
      Q => tail_tmp_reg(23),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[24]_i_1_n_15\,
      Q => tail_tmp_reg(24),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tail_tmp_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_tail_tmp_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \tail_tmp_reg[24]_i_1_n_1\,
      CO(5) => \tail_tmp_reg[24]_i_1_n_2\,
      CO(4) => \tail_tmp_reg[24]_i_1_n_3\,
      CO(3) => \tail_tmp_reg[24]_i_1_n_4\,
      CO(2) => \tail_tmp_reg[24]_i_1_n_5\,
      CO(1) => \tail_tmp_reg[24]_i_1_n_6\,
      CO(0) => \tail_tmp_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tail_tmp_reg[24]_i_1_n_8\,
      O(6) => \tail_tmp_reg[24]_i_1_n_9\,
      O(5) => \tail_tmp_reg[24]_i_1_n_10\,
      O(4) => \tail_tmp_reg[24]_i_1_n_11\,
      O(3) => \tail_tmp_reg[24]_i_1_n_12\,
      O(2) => \tail_tmp_reg[24]_i_1_n_13\,
      O(1) => \tail_tmp_reg[24]_i_1_n_14\,
      O(0) => \tail_tmp_reg[24]_i_1_n_15\,
      S(7 downto 0) => tail_tmp_reg(31 downto 24)
    );
\tail_tmp_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[24]_i_1_n_14\,
      Q => tail_tmp_reg(25),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[24]_i_1_n_13\,
      Q => tail_tmp_reg(26),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[24]_i_1_n_12\,
      Q => tail_tmp_reg(27),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[24]_i_1_n_11\,
      Q => tail_tmp_reg(28),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[24]_i_1_n_10\,
      Q => tail_tmp_reg(29),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[0]_i_3_n_13\,
      Q => tail_tmp_reg(2),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[24]_i_1_n_9\,
      Q => tail_tmp_reg(30),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[24]_i_1_n_8\,
      Q => tail_tmp_reg(31),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[0]_i_3_n_12\,
      Q => tail_tmp_reg(3),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[0]_i_3_n_11\,
      Q => tail_tmp_reg(4),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[0]_i_3_n_10\,
      Q => tail_tmp_reg(5),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[0]_i_3_n_9\,
      Q => tail_tmp_reg(6),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[0]_i_3_n_8\,
      Q => tail_tmp_reg(7),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[8]_i_1_n_15\,
      Q => tail_tmp_reg(8),
      R => \tail_tmp[0]_i_1_n_0\
    );
\tail_tmp_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tail_tmp_reg[0]_i_3_n_0\,
      CI_TOP => '0',
      CO(7) => \tail_tmp_reg[8]_i_1_n_0\,
      CO(6) => \tail_tmp_reg[8]_i_1_n_1\,
      CO(5) => \tail_tmp_reg[8]_i_1_n_2\,
      CO(4) => \tail_tmp_reg[8]_i_1_n_3\,
      CO(3) => \tail_tmp_reg[8]_i_1_n_4\,
      CO(2) => \tail_tmp_reg[8]_i_1_n_5\,
      CO(1) => \tail_tmp_reg[8]_i_1_n_6\,
      CO(0) => \tail_tmp_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tail_tmp_reg[8]_i_1_n_8\,
      O(6) => \tail_tmp_reg[8]_i_1_n_9\,
      O(5) => \tail_tmp_reg[8]_i_1_n_10\,
      O(4) => \tail_tmp_reg[8]_i_1_n_11\,
      O(3) => \tail_tmp_reg[8]_i_1_n_12\,
      O(2) => \tail_tmp_reg[8]_i_1_n_13\,
      O(1) => \tail_tmp_reg[8]_i_1_n_14\,
      O(0) => \tail_tmp_reg[8]_i_1_n_15\,
      S(7 downto 0) => tail_tmp_reg(15 downto 8)
    );
\tail_tmp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tail_tmp[0]_i_2_n_0\,
      D => \tail_tmp_reg[8]_i_1_n_14\,
      Q => tail_tmp_reg(9),
      R => \tail_tmp[0]_i_1_n_0\
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
    FIFO_reset : in STD_LOGIC;
    input_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    data_out_I : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Design_2_Polyphase_filter_0_0,Polyphase_filter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Polyphase_filter,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute CONVERSION_FACTOR : integer;
  attribute CONVERSION_FACTOR of U0 : label is 4;
  attribute DATA_WIDTH : integer;
  attribute DATA_WIDTH of U0 : label is 16;
  attribute DECIMATION_FILTER : string;
  attribute DECIMATION_FILTER of U0 : label is "FALSE";
  attribute FILTER_TAPS : integer;
  attribute FILTER_TAPS of U0 : label is 16;
  attribute x_interface_info : string;
  attribute x_interface_info of FIFO_reset : signal is "xilinx.com:signal:reset:1.0 FIFO_reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of FIFO_reset : signal is "XIL_INTERFACENAME FIFO_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter
     port map (
      FIFO_reset => FIFO_reset,
      clk => clk,
      data_in_valid => data_in_valid,
      data_out_I(15 downto 0) => data_out_I(15 downto 0),
      data_out_Q(15 downto 0) => data_out_Q(15 downto 0),
      data_out_valid => data_out_valid,
      input_I(15 downto 0) => input_I(15 downto 0),
      input_Q(15 downto 0) => input_Q(15 downto 0),
      reset => reset
    );
end STRUCTURE;
