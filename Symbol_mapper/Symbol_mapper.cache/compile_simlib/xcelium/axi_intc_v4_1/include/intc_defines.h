
// (c) Copyright(C) 2013 - 2021 by Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

#ifndef INTC_DEFINES_H
#define INTC_DEFINES_H

#define REGISTER_BYTE_WIDTH 4 // bytes
#define REGISTER_BIT_WIDTH 32 // bits
#define NUM_MAX_INTERRUPTS 32

/*
 * AXI INTC register address offsets
 * IVAR - interrupt vector address register
 * IVEAR - interrupt vector extended address register
 * GPR - rest of the registers
 */
enum reg_offsets
{
  GPR_OFFSET_START = 0x000,
  GPR_OFFSET_END = 0x024,
  IVAR_OFFSET_START = 0x100,
  IVAR_OFFSET_END = 0x17C,
  IVEAR_OFFSET_START = 0x200,
  IVEAR_OFFSET_END = 0x2FC
};

/*
 * AXI INTC registers
 * 10 special registers addressed by GPR_OFFSET_*
 * 32 IVAR registers addressed by IVAR_OFFSET_*
 * 64 (2 x 32) IVEAR registers addressed by IVEAR_OFFSET_*
 ! NOTE: Since IVEAR is 64-bit, it is stored as two 32-bit registers
 */
enum reg_names
{
  ISR, // Interrupt Status Register
  IPR, // Interrupt Pending Register
  IER, // Interrupt Enable Register
  IAR, // Interrupt Acknowledge Register
  SIE, // Set Interrupt Enable
  CIE, // Clear Interrupt Enable
  IVR, // Interrupt Vector Register
  MER, // Master Enable Register
  IMR, // Interrupt Mode Register
  ILR, // Interrupt Level Register
  // Interrupt Vector Address Registers
  IVAR_00,
  IVAR_01,
  IVAR_02,
  IVAR_03,
  IVAR_04,
  IVAR_05,
  IVAR_06,
  IVAR_07,
  IVAR_08,
  IVAR_09,
  IVAR_10,
  IVAR_11,
  IVAR_12,
  IVAR_13,
  IVAR_14,
  IVAR_15,
  IVAR_16,
  IVAR_17,
  IVAR_18,
  IVAR_19,
  IVAR_20,
  IVAR_21,
  IVAR_22,
  IVAR_23,
  IVAR_24,
  IVAR_25,
  IVAR_26,
  IVAR_27,
  IVAR_28,
  IVAR_29,
  IVAR_30,
  IVAR_31,
  // Interrupt Vector Extended Address Registers
  IVEAR_00_LOW,
  IVEAR_00_HIGH,
  IVEAR_01_LOW,
  IVEAR_01_HIGH,
  IVEAR_02_LOW,
  IVEAR_02_HIGH,
  IVEAR_03_LOW,
  IVEAR_03_HIGH,
  IVEAR_04_LOW,
  IVEAR_04_HIGH,
  IVEAR_05_LOW,
  IVEAR_05_HIGH,
  IVEAR_06_LOW,
  IVEAR_06_HIGH,
  IVEAR_07_LOW,
  IVEAR_07_HIGH,
  IVEAR_08_LOW,
  IVEAR_08_HIGH,
  IVEAR_09_LOW,
  IVEAR_09_HIGH,
  IVEAR_10_LOW,
  IVEAR_10_HIGH,
  IVEAR_11_LOW,
  IVEAR_11_HIGH,
  IVEAR_12_LOW,
  IVEAR_12_HIGH,
  IVEAR_13_LOW,
  IVEAR_13_HIGH,
  IVEAR_14_LOW,
  IVEAR_14_HIGH,
  IVEAR_15_LOW,
  IVEAR_15_HIGH,
  IVEAR_16_LOW,
  IVEAR_16_HIGH,
  IVEAR_17_LOW,
  IVEAR_17_HIGH,
  IVEAR_18_LOW,
  IVEAR_18_HIGH,
  IVEAR_19_LOW,
  IVEAR_19_HIGH,
  IVEAR_20_LOW,
  IVEAR_20_HIGH,
  IVEAR_21_LOW,
  IVEAR_21_HIGH,
  IVEAR_22_LOW,
  IVEAR_22_HIGH,
  IVEAR_23_LOW,
  IVEAR_23_HIGH,
  IVEAR_24_LOW,
  IVEAR_24_HIGH,
  IVEAR_25_LOW,
  IVEAR_25_HIGH,
  IVEAR_26_LOW,
  IVEAR_26_HIGH,
  IVEAR_27_LOW,
  IVEAR_27_HIGH,
  IVEAR_28_LOW,
  IVEAR_28_HIGH,
  IVEAR_29_LOW,
  IVEAR_29_HIGH,
  IVEAR_30_LOW,
  IVEAR_30_HIGH,
  IVEAR_31_LOW,
  IVEAR_31_HIGH,
  NUM_INTR_REG
};

#endif