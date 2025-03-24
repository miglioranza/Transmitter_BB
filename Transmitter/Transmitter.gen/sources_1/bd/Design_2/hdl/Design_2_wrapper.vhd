--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Mon Mar 24 17:10:03 2025
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
    S_AXIS_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_0_tlast : in STD_LOGIC;
    S_AXIS_0_tready : out STD_LOGIC;
    S_AXIS_0_tvalid : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    axis_data_count_0 : out STD_LOGIC_VECTOR ( 12 downto 0 );
    clk : in STD_LOGIC;
    clk_50MHz : in STD_LOGIC;
    code_rate_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    control_enable_0 : in STD_LOGIC;
    core_finish_0 : out STD_LOGIC;
    data_in_ready_0 : in STD_LOGIC;
    data_out_I_0 : out STD_LOGIC_VECTOR ( 51 downto 0 );
    data_out_Q_0 : out STD_LOGIC_VECTOR ( 51 downto 0 );
    data_out_last_0 : out STD_LOGIC;
    data_out_valid_0 : out STD_LOGIC;
    ldpc_core_clk : in STD_LOGIC;
    mod_type_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    seed_0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    sel_FEC_code_rate_0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end Design_2_wrapper;

architecture STRUCTURE of Design_2_wrapper is
  component Design_2 is
  port (
    aresetn_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    control_enable_0 : in STD_LOGIC;
    core_finish_0 : out STD_LOGIC;
    ldpc_core_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    seed_0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    sel_FEC_code_rate_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mod_type_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_ready_0 : in STD_LOGIC;
    data_out_valid_0 : out STD_LOGIC;
    data_out_I_0 : out STD_LOGIC_VECTOR ( 51 downto 0 );
    data_out_Q_0 : out STD_LOGIC_VECTOR ( 51 downto 0 );
    clk_50MHz : in STD_LOGIC;
    data_out_last_0 : out STD_LOGIC;
    code_rate_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axis_data_count_0 : out STD_LOGIC_VECTOR ( 12 downto 0 );
    reset_0 : in STD_LOGIC;
    S_AXIS_0_tvalid : in STD_LOGIC;
    S_AXIS_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_0_tlast : in STD_LOGIC;
    S_AXIS_0_tready : out STD_LOGIC
  );
  end component Design_2;
begin
Design_2_i: component Design_2
     port map (
      S_AXIS_0_tdata(31 downto 0) => S_AXIS_0_tdata(31 downto 0),
      S_AXIS_0_tlast => S_AXIS_0_tlast,
      S_AXIS_0_tready => S_AXIS_0_tready,
      S_AXIS_0_tvalid => S_AXIS_0_tvalid,
      aresetn_0 => aresetn_0,
      axis_data_count_0(12 downto 0) => axis_data_count_0(12 downto 0),
      clk => clk,
      clk_50MHz => clk_50MHz,
      code_rate_0(1 downto 0) => code_rate_0(1 downto 0),
      control_enable_0 => control_enable_0,
      core_finish_0 => core_finish_0,
      data_in_ready_0 => data_in_ready_0,
      data_out_I_0(51 downto 0) => data_out_I_0(51 downto 0),
      data_out_Q_0(51 downto 0) => data_out_Q_0(51 downto 0),
      data_out_last_0 => data_out_last_0,
      data_out_valid_0 => data_out_valid_0,
      ldpc_core_clk => ldpc_core_clk,
      mod_type_0(2 downto 0) => mod_type_0(2 downto 0),
      reset => reset,
      reset_0 => reset_0,
      seed_0(30 downto 0) => seed_0(30 downto 0),
      sel_FEC_code_rate_0(1 downto 0) => sel_FEC_code_rate_0(1 downto 0)
    );
end STRUCTURE;
