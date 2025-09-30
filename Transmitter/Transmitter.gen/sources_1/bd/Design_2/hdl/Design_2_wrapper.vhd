--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Tue Sep 30 15:20:46 2025
--Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
--Command     : generate_target Design_2_wrapper.bd
--Design      : Design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Design_2_wrapper is
  port (
    clk : in STD_LOGIC;
    control_unit_din_data_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_unit_din_valid_0 : in STD_LOGIC;
    control_unit_dout_ready_0 : out STD_LOGIC;
    control_unit_end_of_frame_0 : in STD_LOGIC;
    data_out_I_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_valid_0 : out STD_LOGIC;
    ldpc_core_clk : in STD_LOGIC;
    mod_cod_schemes_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    num_streams_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    num_words_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phy_dest_address_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    phy_src_address_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ref_distance_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    scrambler_init_0 : in STD_LOGIC_VECTOR ( 31 downto 1 );
    start_tx_0 : in STD_LOGIC
  );
end Design_2_wrapper;

architecture STRUCTURE of Design_2_wrapper is
  component Design_2 is
  port (
    clk : in STD_LOGIC;
    ldpc_core_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    data_out_valid_0 : out STD_LOGIC;
    data_out_I_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    control_unit_dout_ready_0 : out STD_LOGIC;
    control_unit_din_data_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_unit_din_valid_0 : in STD_LOGIC;
    control_unit_end_of_frame_0 : in STD_LOGIC;
    scrambler_init_0 : in STD_LOGIC_VECTOR ( 31 downto 1 );
    ref_distance_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    num_streams_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    num_words_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start_tx_0 : in STD_LOGIC;
    phy_src_address_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    phy_dest_address_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mod_cod_schemes_1 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Design_2;
begin
Design_2_i: component Design_2
     port map (
      clk => clk,
      control_unit_din_data_0(31 downto 0) => control_unit_din_data_0(31 downto 0),
      control_unit_din_valid_0 => control_unit_din_valid_0,
      control_unit_dout_ready_0 => control_unit_dout_ready_0,
      control_unit_end_of_frame_0 => control_unit_end_of_frame_0,
      data_out_I_0(15 downto 0) => data_out_I_0(15 downto 0),
      data_out_Q_0(15 downto 0) => data_out_Q_0(15 downto 0),
      data_out_valid_0 => data_out_valid_0,
      ldpc_core_clk => ldpc_core_clk,
      mod_cod_schemes_1(4 downto 0) => mod_cod_schemes_1(4 downto 0),
      num_streams_0(4 downto 0) => num_streams_0(4 downto 0),
      num_words_0(15 downto 0) => num_words_0(15 downto 0),
      phy_dest_address_0(4 downto 0) => phy_dest_address_0(4 downto 0),
      phy_src_address_0(4 downto 0) => phy_src_address_0(4 downto 0),
      ref_distance_0(7 downto 0) => ref_distance_0(7 downto 0),
      reset => reset,
      scrambler_init_0(31 downto 1) => scrambler_init_0(31 downto 1),
      start_tx_0 => start_tx_0
    );
end STRUCTURE;
