-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue May 20 17:21:49 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_block_interleaver_0_0_stub.vhdl
-- Design      : Design_2_block_interleaver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_ready : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    end_of_frame : in STD_LOGIC;
    write_en : in STD_LOGIC;
    signal_field : in STD_LOGIC;
    code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ready : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    last_frame_to_cu : out STD_LOGIC;
    current_code_rate : out STD_LOGIC_VECTOR ( 1 downto 0 );
    read_valid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,data_in[31:0],data_in_ready,data_in_last,end_of_frame,write_en,signal_field,code_rate[1:0],data_out[31:0],data_out_ready,data_out_last,last_frame_to_cu,current_code_rate[1:0],read_valid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "block_interleaver,Vivado 2021.2";
begin
end;
