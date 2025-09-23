
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

#ifndef __AXI_IF_H__
#define __AXI_IF_H__

#include <tlm.h>

enum AxiRequestType {
	AxiRead, AxiWrite
};

class AxiRequest {
public:
	AxiRequestType type;
	uint32_t address;
	uint32_t data;
	uint32_t burst_pos;

	AxiRequest(AxiRequestType t = AxiRead, uint32_t a = 0, uint32_t d = 0) :
			type(t), address(a), data(d) {
	}

	friend std::ostream &operator <<(std::ostream &os, AxiRequest const &req);
};

class AxiResponse {
public:
	AxiRequestType type;
	uint32_t data;
	uint32_t burst_pos;

	AxiResponse(AxiRequestType t = AxiRead, uint32_t d = 0) :
			type(t), data(d) {
	}

	friend std::ostream &operator <<(std::ostream &os, AxiResponse const &rsp);
};

class WideAxi {
public:
	AxiRequestType type;
	uint64_t address;
	uint32_t data[4];
	uint32_t valid;

	WideAxi(AxiRequestType t = AxiRead, uint32_t a = 0) :
			type(t), address(a) {
	}

	//friend std::ostream &operator << (std::ostream &os, AxiRequest const &req);
	friend std::ostream &operator <<(std::ostream &os, WideAxi const &rsp);
};

typedef tlm::tlm_master_if<AxiRequest, AxiResponse> AxiMasterInterface;
typedef tlm::tlm_slave_if<AxiRequest, AxiResponse> AxiSlaveInterface;
typedef tlm::tlm_req_rsp_channel<AxiRequest, AxiResponse> AxiChannel;

#endif // __AXI_IF_H__


