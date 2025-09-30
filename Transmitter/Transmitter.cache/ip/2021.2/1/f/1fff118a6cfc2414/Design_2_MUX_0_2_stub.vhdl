-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sun Sep  7 19:30:48 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_MUX_0_2_stub.vhdl
-- Design      : Design_2_MUX_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    I_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_valid : in STD_LOGIC;
    ready_out_CU : out STD_LOGIC;
    dpd_I_OUT : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_Q_OUT : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_valid : in STD_LOGIC;
    ready_out_mapper : out STD_LOGIC;
    select_signal : in STD_LOGIC;
    ready_in : in STD_LOGIC;
    mux_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mux_Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mux_valid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I_out[11:0],Q_out[11:0],data_out_valid,ready_out_CU,dpd_I_OUT[11:0],dpd_Q_OUT[11:0],dpd_valid,ready_out_mapper,select_signal,ready_in,mux_I[11:0],mux_Q[11:0],mux_valid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "MUX,Vivado 2021.2";
begin
end;
