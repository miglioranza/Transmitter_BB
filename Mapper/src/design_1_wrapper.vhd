--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Wed Mar  5 15:22:37 2025
--Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    clk : in STD_LOGIC;
    data_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_valid_0 : in STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out_ready_0 : out STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reset : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk : in STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_ready : out STD_LOGIC;
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_valid : out STD_LOGIC;
    data_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_valid_0 : in STD_LOGIC;
    data_out_ready_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      clk => clk,
      data_in_0(31 downto 0) => data_in_0(31 downto 0),
      data_in_valid_0 => data_in_valid_0,
      data_out_ready => data_out_ready,
      data_out_ready_0 => data_out_ready_0,
      data_out_valid => data_out_valid,
      i_out(11 downto 0) => i_out(11 downto 0),
      mod_type(2 downto 0) => mod_type(2 downto 0),
      q_out(11 downto 0) => q_out(11 downto 0),
      reset => reset
    );
end STRUCTURE;
