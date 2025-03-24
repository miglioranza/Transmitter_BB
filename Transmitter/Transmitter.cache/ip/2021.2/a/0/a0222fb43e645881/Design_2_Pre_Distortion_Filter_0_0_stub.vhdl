-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Fri Mar 14 15:35:13 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Pre_Distortion_Filter_0_0_stub.vhdl
-- Design      : Design_2_Pre_Distortion_Filter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    I_input : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q_input : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data_in_ready : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    Q_output : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I_output : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ready : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,I_input[11:0],Q_input[11:0],data_in_ready,data_in_valid,data_out_valid,Q_output[31:0],I_output[31:0],data_out_ready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Parallel_FIR_filter,Vivado 2021.2";
begin
end;
