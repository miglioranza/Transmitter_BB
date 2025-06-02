
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

#ifndef __XAXI_ACCEL_PROFILER__
#define __XAXI_ACCEL_PROFILER__
#include<iostream>
#include <map>
#include "xaxi_accel_profiler_instmgr.h"
#include <vector>
#include <set>
#include <cstdint>

class accel_event {
public:
	uint8_t eventflags;
	uint32_t timestamp;
	uint64_t host_timestamp;
	accel_event();
};

class xaxi_accel_profiler {
	friend class xaxi_accel_profiler_instmgr;
public:
	~xaxi_accel_profiler();
	// Counter APIs
	void inline register_cu_exec_cycles(uint32_t cu_cycles) {
		cu_exec_cycles += cu_cycles;
	}
	void inline register_cu_exec_count() {
		cu_exec_count += 1;
	}
	void register_cu_min_exec_cycles(uint32_t cu_cycles);
	void register_cu_max_exec_cycles(uint32_t cu_cycles);
	uint32_t inline get_cu_exec_cycles() {
		return cu_exec_cycles;
	}
	uint32_t inline get_cu_exec_count() {
		return cu_exec_count;
	}
	uint32_t inline get_cu_min_exec_cycles() {
		return cu_min_exec_cycles;
	}
	uint32_t inline get_cu_max_exec_cycles() {
		return cu_max_exec_cycles;
	}
	// Trace Specific APIs
	void simulate_single_cycle();
	void inline create_event() {
		if (curr_event)
			return;
		curr_event = new accel_event;
	}
	//set APIs for trace
	void inline set_cu_start() {
		create_event();
		curr_event->eventflags = (curr_event->eventflags | 1);
		event_received = true;
	}
	void inline set_cu_end() {
		create_event();
		curr_event->eventflags = (curr_event->eventflags | 1);
		event_received = true;
	}
	//get APIs for trace
	int inline get_no_of_samples() {
		return list_of_events->size();
	}
	std::vector<accel_event*>* get_all_events_result();
	//reset APIs for trace
	void inline reset_curr_event() {
		create_event();
		curr_event = NULL;
		event_received = false;
	}
	void reset_events();
private:
	uint32_t cu_exec_cycles;
	uint32_t cu_exec_count;
	uint32_t cu_min_exec_cycles;
	uint32_t cu_max_exec_cycles;
	//Trace Members
	unsigned int no_of_cycles;
	std::vector<accel_event*>* list_of_events;
	accel_event* curr_event;
	bool event_received;
protected:
	xaxi_accel_profiler() {
		cu_exec_cycles = 0;
		cu_exec_count = 0;
		cu_min_exec_cycles = 0xFFFFFFFF;
		cu_max_exec_cycles = 0;
		// Trace
		no_of_cycles = 0;
		event_received = false;
		curr_event = NULL;
		list_of_events = new std::vector<accel_event*>;
	}
	;

};
#endif


