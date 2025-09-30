-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:Control_unit_top:1.0
-- IP Revision: 37

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Design_2_Control_unit_top_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    control_unit_din_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    control_unit_din_valid : IN STD_LOGIC;
    control_unit_end_of_frame : IN STD_LOGIC;
    control_unit_dout_ready : OUT STD_LOGIC;
    control_unit_enable : OUT STD_LOGIC;
    mod_cod_schemes : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    num_streams : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ref_distance : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    scrambler_init : IN STD_LOGIC_VECTOR(31 DOWNTO 1);
    num_words : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    start_tx : IN STD_LOGIC;
    phy_src_address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    phy_dest_address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    scrambler_din_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    scrambler_seed : OUT STD_LOGIC_VECTOR(31 DOWNTO 1);
    scrambler_din_valid : OUT STD_LOGIC;
    scrambler_din_last : OUT STD_LOGIC;
    scrambler_control_enable : OUT STD_LOGIC;
    scrambler_last_frame : OUT STD_LOGIC;
    encoder_code_rate : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    encoder_reset_fifos : OUT STD_LOGIC;
    interleaver_dout_valid : IN STD_LOGIC;
    interleaver_dout_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    interleaver_last_frame : IN STD_LOGIC;
    interleaver_din_ready : OUT STD_LOGIC;
    mapper_dout_last : IN STD_LOGIC;
    mapper_selected_mod : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    mapper_din_data : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    mapper_din_valid : OUT STD_LOGIC;
    mapper_din_last : OUT STD_LOGIC;
    dpd_din_valid : OUT STD_LOGIC;
    dpd_din_data_I : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    dpd_din_data_Q : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END Design_2_Control_unit_top_0_0;

ARCHITECTURE Design_2_Control_unit_top_0_0_arch OF Design_2_Control_unit_top_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Design_2_Control_unit_top_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Control_unit_top IS
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      control_unit_din_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      control_unit_din_valid : IN STD_LOGIC;
      control_unit_end_of_frame : IN STD_LOGIC;
      control_unit_dout_ready : OUT STD_LOGIC;
      control_unit_enable : OUT STD_LOGIC;
      mod_cod_schemes : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      num_streams : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      ref_distance : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      scrambler_init : IN STD_LOGIC_VECTOR(31 DOWNTO 1);
      num_words : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      start_tx : IN STD_LOGIC;
      phy_src_address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      phy_dest_address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      scrambler_din_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      scrambler_seed : OUT STD_LOGIC_VECTOR(31 DOWNTO 1);
      scrambler_din_valid : OUT STD_LOGIC;
      scrambler_din_last : OUT STD_LOGIC;
      scrambler_control_enable : OUT STD_LOGIC;
      scrambler_last_frame : OUT STD_LOGIC;
      encoder_code_rate : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      encoder_reset_fifos : OUT STD_LOGIC;
      interleaver_dout_valid : IN STD_LOGIC;
      interleaver_dout_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      interleaver_last_frame : IN STD_LOGIC;
      interleaver_din_ready : OUT STD_LOGIC;
      mapper_dout_last : IN STD_LOGIC;
      mapper_selected_mod : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      mapper_din_data : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      mapper_din_valid : OUT STD_LOGIC;
      mapper_din_last : OUT STD_LOGIC;
      dpd_din_valid : OUT STD_LOGIC;
      dpd_din_data_I : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      dpd_din_data_Q : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
  END COMPONENT Control_unit_top;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Design_2_Control_unit_top_0_0_arch: ARCHITECTURE IS "Control_unit_top,Vivado 2021.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Design_2_Control_unit_top_0_0_arch : ARCHITECTURE IS "Design_2_Control_unit_top_0_0,Control_unit_top,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Design_2_Control_unit_top_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : Control_unit_top
    PORT MAP (
      clk => clk,
      reset => reset,
      control_unit_din_data => control_unit_din_data,
      control_unit_din_valid => control_unit_din_valid,
      control_unit_end_of_frame => control_unit_end_of_frame,
      control_unit_dout_ready => control_unit_dout_ready,
      control_unit_enable => control_unit_enable,
      mod_cod_schemes => mod_cod_schemes,
      num_streams => num_streams,
      ref_distance => ref_distance,
      scrambler_init => scrambler_init,
      num_words => num_words,
      start_tx => start_tx,
      phy_src_address => phy_src_address,
      phy_dest_address => phy_dest_address,
      scrambler_din_data => scrambler_din_data,
      scrambler_seed => scrambler_seed,
      scrambler_din_valid => scrambler_din_valid,
      scrambler_din_last => scrambler_din_last,
      scrambler_control_enable => scrambler_control_enable,
      scrambler_last_frame => scrambler_last_frame,
      encoder_code_rate => encoder_code_rate,
      encoder_reset_fifos => encoder_reset_fifos,
      interleaver_dout_valid => interleaver_dout_valid,
      interleaver_dout_data => interleaver_dout_data,
      interleaver_last_frame => interleaver_last_frame,
      interleaver_din_ready => interleaver_din_ready,
      mapper_dout_last => mapper_dout_last,
      mapper_selected_mod => mapper_selected_mod,
      mapper_din_data => mapper_din_data,
      mapper_din_valid => mapper_din_valid,
      mapper_din_last => mapper_din_last,
      dpd_din_valid => dpd_din_valid,
      dpd_din_data_I => dpd_din_data_I,
      dpd_din_data_Q => dpd_din_data_Q
    );
END Design_2_Control_unit_top_0_0_arch;
