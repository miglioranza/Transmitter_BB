-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Jun  2 15:45:49 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Pipelined_Polyphase_0_2_stub.vhdl
-- Design      : Design_2_Pipelined_Polyphase_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_ready : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    data_out_I : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,input_I[15:0],input_Q[15:0],data_in_ready,data_in_valid,data_out_ready,data_out_valid,data_out_I[15:0],data_out_Q[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Pipelined_Polyphase_Filter,Vivado 2021.2";
begin
end;
