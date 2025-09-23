
// (c) Copyright 2013 - 2019 Xilinx, Inc. All rights reserved.
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
#ifndef _SIM_AXIMM_PERF_MON_V2_0_DATA_MODEL_H_
#define _SIM_AXIMM_PERF_MON_V2_0_DATA_MODEL_H_
#include <iostream>
#include "xsc_types.h"
#include "perf_data_model_base.h"

namespace sim_aximm_perf_mon_v1_0 {
class data_model: public xsc::perf_data_model_base {
public:
	data_model(std::string name) :
			m_name(name) {
		reset();
	}

	~data_model() {

	}

	xscuint64 get_last_rd_addr() const {
		return last_rd_addr;
	}

	void set_last_rd_addr(const xscuint64& lastRdAddr) {
		last_rd_addr = lastRdAddr;
	}

	xscuint64 get_last_rd_data() const {
		return last_rd_data;
	}

	void set_last_rd_data(const xscuint64& lastRdData) {
		last_rd_data = lastRdData;
	}

	xscuint64 get_last_wr_addr() const {
		return last_wr_addr;
	}

	void set_last_wr_addr(const xscuint64& lastWrAddr) {
		last_wr_addr = lastWrAddr;
	}

	xscuint64 get_last_wr_data() const {
		return last_wr_data;
	}

	void set_last_wr_data(const xscuint64& lastWrData) {
		last_wr_data = lastWrData;
	}

	xscuint64 get_outstanding_count() const {
		return outstanding_count;
	}

	void incr_outstanding_count() {
		outstanding_count += 1;
	}

	void decr_outstanding_count() {
		outstanding_count -= 1;
	}

	xscuint64 get_rd_total_bytes() const {
		return rd_total_bytes;
	}

	void incr_rd_total_bytes(const xscuint64& rdTotalBytes) {
		rd_total_bytes += rdTotalBytes;
	}

	xscuint64 get_rd_total_latency() const {
		return rd_total_latency;
	}

	void incr_rd_total_latency(const xscuint64& rdTotalLatency) {
		rd_total_latency += rdTotalLatency;
	}

	xscuint64 get_rd_transaction_count() const {
		return rd_transaction_count;
	}

	void incr_rd_transaction_count() {
		rd_transaction_count += 1;
	}

	xscuint64 get_wr_total_bytes() const {
		return wr_total_bytes;
	}

	void incr_wr_total_bytes(const xscuint64& wrTotalBytes) {
		wr_total_bytes += wrTotalBytes;
	}

	xscuint64 get_wr_total_latency() const {
		return wr_total_latency;
	}

	void incr_wr_total_latency(const xscuint64& wrTotalLatency) {
		wr_total_latency += wrTotalLatency;
	}

	xscuint64 get_wr_transaction_count() const {
		return wr_transaction_count;
	}

	void incr_wr_transaction_count() {
		wr_transaction_count += 1;
	}

	std::string get_name() {
		return m_name;
	}

	void incr_rd_busy_cycles(const xscuint& rdBusyCycles) {
		rd_busy_cycles += rdBusyCycles;
	}

	void incr_wr_busy_cycles(const xscuint& wrBusyCycles) {
		wr_busy_cycles += wrBusyCycles;
	}

	xscuint get_rd_busy_cycles() const {
		return rd_busy_cycles;
	}

	xscuint get_wr_busy_cycles() const {
		return wr_busy_cycles;
	}

	void reset() {
		wr_total_bytes = 0;
		wr_transaction_count = 0;
		wr_total_latency = 0;
		rd_total_bytes = 0;
		rd_transaction_count = 0;
		rd_total_latency = 0;
		outstanding_count = 0;
		last_rd_addr = 0;
		last_rd_data = 0;
		last_wr_addr = 0;
		last_wr_data = 0;
		rd_busy_cycles = 0;
		wr_busy_cycles = 0;
	}

private:
	xscuint64 wr_total_bytes;
	xscuint64 wr_transaction_count;
	xscuint64 wr_total_latency;
	xscuint64 rd_total_bytes;
	xscuint64 rd_transaction_count;
	xscuint64 rd_total_latency;
	xscuint64 outstanding_count;
	xscuint64 last_rd_addr;
	xscuint64 last_rd_data;
	xscuint64 last_wr_addr;
	xscuint64 last_wr_data;
	std::string m_name;
	xscuint   rd_busy_cycles;
	xscuint   wr_busy_cycles;
};
}

#endif /* _SIM_AXIMM_PERF_MON_V2_0_DATA_MODEL_H_ */
