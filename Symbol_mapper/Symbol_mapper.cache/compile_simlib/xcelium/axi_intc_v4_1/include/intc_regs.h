
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

#ifndef INTC_REGS_H
#define INTC_REGS_H

#include "xtlm.h"
#include "intc_defines.h"

class intc_regs
{
public:
  intc_regs(const char *name,
            xsc::common_cpp::properties model_params,
            xsc::common_cpp::report_handler *report_handler);
  ~intc_regs();

  /*
   * returns register value
   * @param reg register to be read
   * @param i   bit to be read (ignore or set as 32 to read whole register)
   */
  uint32_t read_reg(reg_names reg, uint32_t i = REGISTER_BIT_WIDTH);

  /*
   * writes to register and return write status
   * @param reg     register to be written
   * @param wr_data data to be written to register
   */
  bool write_reg(reg_names reg, uint32_t wr_data);

  /*
   * reset registers to default value
   */
  void reset_reg();

  xsc::common_cpp::report_handler *report_handler;
  const char *name;

private:

  // AXI INTC model parameters
  uint32_t c_has_ipr;
  uint32_t c_has_sie;
  uint32_t c_has_cie;
  uint32_t c_has_ivr;
  uint32_t c_has_ilr;
  uint32_t c_num_sw_intr;
  uint32_t c_num_intr_inputs;

  // holds all the register values
  uint32_t reg_val[NUM_INTR_REG];
};

#endif