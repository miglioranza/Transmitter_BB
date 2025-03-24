-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue Mar 18 17:15:25 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Encoder_0_0_stub.vhdl
-- Design      : Design_2_Encoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ldpc_core_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_valid : in STD_LOGIC;
    din_ready_ifsm2enc : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    sel_FEC_code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out_ready : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_valid : out STD_LOGIC;
    core_finish : out STD_LOGIC;
    axis_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    data_out_last : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ldpc_core_clk,clk,reset,aresetn,data_in[31:0],data_in_valid,din_ready_ifsm2enc,data_in_last,sel_FEC_code_rate[1:0],data_out_ready,data_out[31:0],data_out_valid,core_finish,axis_data_count[12:0],data_out_last";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Encoder,Vivado 2021.2";
begin
end;
