--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Fri Feb 28 10:56:59 2025
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
    S_AXIS_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_0_tready : out STD_LOGIC;
    S_AXIS_0_tvalid : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    mod_type_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_0 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    mod_type_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_0_tvalid : in STD_LOGIC;
    S_AXIS_0_tready : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      S_AXIS_0_tdata(31 downto 0) => S_AXIS_0_tdata(31 downto 0),
      S_AXIS_0_tready => S_AXIS_0_tready,
      S_AXIS_0_tvalid => S_AXIS_0_tvalid,
      clk_0 => clk_0,
      mod_type_0(2 downto 0) => mod_type_0(2 downto 0),
      reset_0 => reset_0
    );
end STRUCTURE;
