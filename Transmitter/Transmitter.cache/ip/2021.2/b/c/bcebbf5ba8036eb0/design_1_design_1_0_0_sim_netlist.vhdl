-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Wed Mar  5 15:48:47 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_design_1_0_0_sim_netlist.vhdl
-- Design      : design_1_design_1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    data_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_valid_0 : in STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out_ready_0 : out STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mod_type_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_design_1_0_0,design_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "IPI";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, PHASE 0.0, ASSOCIATED_RESET reset, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  data_out_ready <= \<const0>\;
  data_out_ready_0 <= \<const0>\;
  data_out_valid <= \<const0>\;
  i_out(11) <= \<const0>\;
  i_out(10) <= \<const0>\;
  i_out(9) <= \<const0>\;
  i_out(8) <= \<const0>\;
  i_out(7) <= \<const0>\;
  i_out(6) <= \<const0>\;
  i_out(5) <= \<const0>\;
  i_out(4) <= \<const0>\;
  i_out(3) <= \<const0>\;
  i_out(2) <= \<const0>\;
  i_out(1) <= \<const0>\;
  i_out(0) <= \<const0>\;
  q_out(11) <= \<const0>\;
  q_out(10) <= \<const0>\;
  q_out(9) <= \<const0>\;
  q_out(8) <= \<const0>\;
  q_out(7) <= \<const0>\;
  q_out(6) <= \<const0>\;
  q_out(5) <= \<const0>\;
  q_out(4) <= \<const0>\;
  q_out(3) <= \<const0>\;
  q_out(2) <= \<const0>\;
  q_out(1) <= \<const0>\;
  q_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
