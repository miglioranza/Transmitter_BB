
/*  (c) Copyright 2014 - 2019 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.                       */

#ifndef __ME_PL_INTERFACES_H__
#define __ME_PL_INTERFACES_H__
#include <systemc>
#include "me_axi_stream.h"

class ME_to_PL_Interface: virtual public sc_core::sc_interface {
public:
	virtual uint32_t get32() = 0;
	virtual uint32_t get32(bool &tlast) = 0;

	virtual void get64(uint32_t &data0, uint32_t &data1, bool &tlast) = 0;
	virtual uint64_t get64(bool &tlast) = 0;
	virtual uint64_t get64() = 0;

	virtual sc_dt::sc_biguint<128> get128(bool &tlast) = 0;
	virtual sc_dt::sc_biguint<128> get128() = 0;

	//Get vector until tlast or length is reached
	virtual std::vector<uint32_t> get_vector(int length, bool &tlast) = 0;
	//Get vector ignoring tlast
	virtual std::vector<uint32_t> get_vector(int length) = 0;
};

class PL_to_ME_Interface: virtual public sc_core::sc_interface {
public:
	virtual void put32(uint32_t data, bool tlast) = 0;

	virtual void put64(uint64_t data, bool tlast) = 0;
	virtual void put64(uint32_t data0, uint32_t data1, bool tlast) = 0;

	virtual void put128(sc_dt::sc_biguint<128>, bool tlast) = 0;

	//Tlast applied to last sample in vector
	virtual void put_vector(std::vector<uint32_t> data, bool tlast) = 0;
};

#endif // __ME_PL_INTERFACES_H__


