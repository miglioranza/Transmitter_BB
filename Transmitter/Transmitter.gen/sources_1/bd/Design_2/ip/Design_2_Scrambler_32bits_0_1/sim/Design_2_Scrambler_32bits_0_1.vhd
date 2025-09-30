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

-- IP VLNV: user.org:user:Scrambler_32bits:1.0
-- IP Revision: 14

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Design_2_Scrambler_32bits_0_1 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(32 DOWNTO 1);
    data_in_valid : IN STD_LOGIC;
    data_in_last : IN STD_LOGIC;
    end_of_frame : IN STD_LOGIC;
    seed : IN STD_LOGIC_VECTOR(30 DOWNTO 0);
    control_enable : IN STD_LOGIC;
    data_out : OUT STD_LOGIC_VECTOR(32 DOWNTO 1);
    data_out_valid : OUT STD_LOGIC;
    data_out_last : OUT STD_LOGIC;
    last_frame : OUT STD_LOGIC
  );
END Design_2_Scrambler_32bits_0_1;

ARCHITECTURE Design_2_Scrambler_32bits_0_1_arch OF Design_2_Scrambler_32bits_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Design_2_Scrambler_32bits_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT Scrambler_32bits IS
    GENERIC (
      POLY_DEG : INTEGER;
      DATA_DIM : INTEGER;
      poly : STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      data_in : IN STD_LOGIC_VECTOR(32 DOWNTO 1);
      data_in_valid : IN STD_LOGIC;
      data_in_last : IN STD_LOGIC;
      end_of_frame : IN STD_LOGIC;
      seed : IN STD_LOGIC_VECTOR(30 DOWNTO 0);
      control_enable : IN STD_LOGIC;
      data_out : OUT STD_LOGIC_VECTOR(32 DOWNTO 1);
      data_out_valid : OUT STD_LOGIC;
      data_out_last : OUT STD_LOGIC;
      last_frame : OUT STD_LOGIC
    );
  END COMPONENT Scrambler_32bits;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Design_2_Scrambler_32bits_0_1_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF data_out_valid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF data_out: SIGNAL IS "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF data_out: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_in_valid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF data_in: SIGNAL IS "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF data_in: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF S_AXIS:M_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : Scrambler_32bits
    GENERIC MAP (
      POLY_DEG => 32,
      DATA_DIM => 32,
      poly => X"90000001"
    )
    PORT MAP (
      clk => clk,
      rst => rst,
      data_in => data_in,
      data_in_valid => data_in_valid,
      data_in_last => data_in_last,
      end_of_frame => end_of_frame,
      seed => seed,
      control_enable => control_enable,
      data_out => data_out,
      data_out_valid => data_out_valid,
      data_out_last => data_out_last,
      last_frame => last_frame
    );
END Design_2_Scrambler_32bits_0_1_arch;
