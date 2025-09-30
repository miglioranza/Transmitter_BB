-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Sep 11 17:37:12 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Control_unit_top_0_0_stub.vhdl
-- Design      : Design_2_Control_unit_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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
    interleaver_dout_valid : in STD_LOGIC;
    interleaver_dout_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    interleaver_last_frame : in STD_LOGIC;
    interleaver_din_ready : out STD_LOGIC;
    mapper_dout_ready : in STD_LOGIC;
    mapper_dout_last : in STD_LOGIC;
    mapper_selected_mod : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mapper_din_data : out STD_LOGIC_VECTOR ( 5 downto 0 );
    mapper_din_valid : out STD_LOGIC;
    mapper_din_last : out STD_LOGIC;
    dpd_din_valid : out STD_LOGIC;
    dpd_din_data_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_din_data_Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    multi_din_ready : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,control_unit_din_data[31:0],control_unit_din_valid,control_unit_end_of_frame,control_unit_dout_ready,control_unit_enable,mod_cod_schemes[4:0],num_streams[4:0],ref_distance[7:0],scrambler_init[31:1],num_words[15:0],start_tx,phy_src_address[4:0],phy_dest_address[4:0],scrambler_din_data[31:0],scrambler_seed[31:1],scrambler_din_valid,scrambler_din_last,scrambler_control_enable,scrambler_last_frame,encoder_code_rate[1:0],interleaver_dout_valid,interleaver_dout_data[31:0],interleaver_last_frame,interleaver_din_ready,mapper_dout_ready,mapper_dout_last,mapper_selected_mod[2:0],mapper_din_data[5:0],mapper_din_valid,mapper_din_last,dpd_din_valid,dpd_din_data_I[11:0],dpd_din_data_Q[11:0],multi_din_ready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Control_unit_top,Vivado 2021.2";
begin
end;
