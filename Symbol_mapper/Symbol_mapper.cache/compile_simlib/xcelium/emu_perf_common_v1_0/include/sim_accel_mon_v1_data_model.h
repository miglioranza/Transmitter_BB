
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
#ifndef _SIM_SDACCEL_MON_V2_DATA_MODEL_H_
#define _SIM_SDACCEL_MON_V2_DATA_MODEL_H_
#include <iostream>
#include "xsc_types.h"
#include "perf_data_model_base.h"

namespace sim_accel_mon_v1 {
class data_model: public xsc::perf_data_model_base {
public:
	data_model(std::string name) :
			m_name(name) {
		reset();
	}

	~data_model() {

	}

	xscuint64 get_version_register() const {
		return version_register;
	}

	xscuint64 get_sample_register() const {
		return sample_register;
	}

	xscuint64 get_control_register() const {
		return control_register;
	}

	void incr_execution_count() {
		exec_count += 1;
	}
	xscuint64 get_exec_count() const {
		return exec_count;
	}

	void incr_total_execution_cycles(const xscuint64& cycles) {
		total_execution_cycles += cycles;
	}

	xscuint64 get_total_execution_cycles() const {
		return total_execution_cycles;
	}

	xscuint64 get_total_int_stall_cycles() const {
		return total_int_stall_cycles;
	}

	void incr_total_int_stall_cycles() {
		total_int_stall_cycles += 1;
	}

	xscuint64 get_total_str_stall_cycles() const {
		return total_str_stall_cycles;
	}

	void incr_total_str_stall_cycles() {
		total_str_stall_cycles += 1;
	}

	void incr_total_ext_stall_cycles() {
		total_ext_stall_cycles += 1;
	}

	xscuint64 get_total_ext_stall_cycles() const {
		return total_ext_stall_cycles;
	}

	void set_max_exec_time(const xscuint64& exec_time) {
		if (exec_time > max_exec_time)
			max_exec_time = exec_time;
	}

	xscuint64 get_max_exec_time() {
		return max_exec_time;
	}

	void set_min_exec_time(const xscuint64& exec_time) {
		if(min_exec_time == 0) {
			min_exec_time = exec_time;
		}
		if (min_exec_time > exec_time)
			min_exec_time = exec_time;

	}

	xscuint64 get_min_exec_time() {
		return min_exec_time;
	}

	xscuint64 get_total_starts() const {
		return total_starts;
	}

	void incr_total_starts() {
		total_starts += 1;
	}

	void incr_total_latency(const xscuint64& TotalLatency) {
		total_latency += TotalLatency;
	}

	void incr_total_cu_cycles(const xscuint64& TotalCuCycles) {
		this->total_cu_cycles += TotalCuCycles;
	}

	xscuint64 get_total_cu_cycles() {
		return total_cu_cycles;
	}

	void set_max_parallel_trans(const xscuint64& Max_trans) {
		max_parallel_trans = Max_trans;
	}

	xscuint64 get_max_parallel_trans() {
		return max_parallel_trans;
	}


	void reset() {
		version_register = 0;
		sample_register = 0;
		control_register = 0;
		exec_count = 0;
		total_execution_cycles = 0;
		total_int_stall_cycles = 0;
		total_str_stall_cycles = 0;
		total_ext_stall_cycles = 0;
		min_exec_time = 0;
		max_exec_time = 0;
		total_starts = 0;
		total_latency = 0;
		total_cu_cycles = 0;
		max_parallel_trans = 0;
	}

	std::string get_name() {
		return m_name;
	}

private:
	xscuint64 version_register;
	xscuint64 sample_register;
	xscuint64 control_register;
	xscuint64 exec_count;
	xscuint64 total_execution_cycles;
	xscuint64 total_int_stall_cycles;
	xscuint64 total_str_stall_cycles;
	xscuint64 total_ext_stall_cycles;
	xscuint64 min_exec_time;
	xscuint64 max_exec_time;
	xscuint64 total_starts;
	xscuint64 total_latency;
	xscuint64 total_cu_cycles;
	xscuint64 max_parallel_trans;
	std::string m_name;

};
}

#endif /* _sim_ACCEL_MON_V2_DATA_MODEL_H_ */
