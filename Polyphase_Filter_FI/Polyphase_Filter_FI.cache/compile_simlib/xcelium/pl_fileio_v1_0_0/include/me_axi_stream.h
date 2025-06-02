
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

#ifndef __ME_AXI_STREAM_H__
#define __ME_AXI_STREAM_H__

#include <tlm.h>
#include <vector>
#include <queue>

#define NO_STREAM_DATA (0x77777777)

class MEStreamData32 {
public:
	uint32_t data;
	bool tlast;

	MEStreamData32(uint32_t d = 0, bool l = 0) :
			data(d), tlast(l) {
	}

	friend std::ostream &operator <<(std::ostream &os,
			MEStreamData32 const &data) {
		os << std::showbase << std::hex << data.data;
		if (data.tlast)
			os << "[TLAST]";
		return os;
	}
};

class MEStreamData64 {
public:
	uint32_t data[2];
	bool tlast;
	bool tkeep;

	MEStreamData64(uint32_t d0 = 0, uint32_t d1 = 0, bool tl = false, bool tk =
			false) {
		data[0] = d0;
		data[1] = d1;
		tlast = tl;
		tkeep = tk;
	}

	friend std::ostream &operator <<(std::ostream &os,
			MEStreamData64 const &data) {
		os << std::showbase << std::hex << data.data[1] << ", " << data.data[0]
				<< " ";
		if (data.tlast)
			os << "[TLAST]";
		if (data.tkeep)
			os << "[TKEEP]";
		return os;
	}
};

class NoCStreamData128 {
public:
	uint32_t data[4];
	uint32_t tid;
	uint32_t destid;
	uint32_t tdest;
	uint32_t tkeep;
	bool tlast;

	NoCStreamData128(uint32_t d0 = 0, uint32_t d1 = 0, uint32_t d2 = 0,
			uint32_t d3 = 0, bool tl = false) {
		data[0] = d0;
		data[1] = d1;
		data[2] = d2;
		data[3] = d3;
		tlast = tl;
		tid = 0;
		destid = 0;
		tdest = 0;
		tkeep = 0;
	}
};

typedef tlm::tlm_fifo<MEStreamData32> MEStream32_fifo;
typedef tlm::tlm_fifo_put_if<MEStreamData32> MEStream32_put_if;
typedef sc_core::sc_port<MEStream32_put_if> MEStream32_put_port;
typedef sc_core::sc_export<MEStream32_put_if> MEStream32_put_export;
typedef tlm::tlm_fifo_get_if<MEStreamData32> MEStream32_get_if;
typedef sc_core::sc_port<MEStream32_get_if> MEStream32_get_port;
typedef sc_core::sc_export<MEStream32_get_if> MEStream32_get_export;

typedef tlm::tlm_fifo<MEStreamData64> MEStream64_fifo;
typedef tlm::tlm_fifo_put_if<MEStreamData64> MEStream64_put_if;
typedef sc_core::sc_port<MEStream64_put_if> MEStream64_put_port;
typedef sc_core::sc_export<MEStream64_put_if> MEStream64_put_export;
typedef tlm::tlm_fifo_get_if<MEStreamData64> MEStream64_get_if;
typedef sc_core::sc_port<MEStream64_get_if> MEStream64_get_port;
typedef sc_core::sc_export<MEStream64_get_if> MEStream64_get_export;

typedef tlm::tlm_fifo<NoCStreamData128> NoCStream128_fifo;
typedef tlm::tlm_fifo_put_if<NoCStreamData128> NoCStream128_put_if;
typedef sc_core::sc_port<NoCStream128_put_if> NoCStream128_put_port;
typedef sc_core::sc_export<NoCStream128_put_if> NoCStream128_put_export;
typedef tlm::tlm_fifo_get_if<NoCStreamData128> NoCStream128_get_if;
typedef sc_core::sc_port<NoCStream128_get_if> NoCStream128_get_port;
typedef sc_core::sc_export<NoCStream128_get_if> NoCStream128_get_export;

#endif //__ME_AXI_STREAM_H__


