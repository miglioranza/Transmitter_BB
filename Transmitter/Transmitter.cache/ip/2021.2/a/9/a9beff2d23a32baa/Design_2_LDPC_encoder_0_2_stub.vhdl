-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Sep 11 17:24:33 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_LDPC_encoder_0_2_stub.vhdl
-- Design      : Design_2_LDPC_encoder_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    reset_fifos : in STD_LOGIC;
    ldpc_core_clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    sel_code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    end_of_frame : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_valid : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    current_cr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    last_frame : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,reset_fifos,ldpc_core_clk,data_in[31:0],data_in_valid,data_in_last,data_in_ready,sel_code_rate[1:0],end_of_frame,data_out[31:0],data_out_valid,data_out_last,current_cr[1:0],last_frame";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "LDPC_encoder,Vivado 2021.2";
begin
end;
