
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
#ifndef _SIM_AXIS_PERF_MON_V1_DATA_MODEL_H_
#define _SIM_AXIS_PERF_MON_V1_DATA_MODEL_H_
#include <iostream>
#include "xsc_types.h"
#include "perf_data_model_base.h"

namespace sim_axis_perf_mon_v1 {
class data_model: public xsc::perf_data_model_base {
public:
	data_model(std::string name) :
			m_name(name) {
		reset();
	}

	~data_model() {

	}

	xscuint64 get_sample_register() const {
		return sample_register;
	}

	xscuint64 get_control_register() const {
		return control_register;
	}

	void incr_num_trans() {
		num_tran += 1;
	}
	xscuint64 get_num_trans() const {
		return num_tran;
	}

	void incr_busy_cycles(const xscuint64& cycles) {
		busy_cycles += cycles;
	}

	xscuint64 get_busy_cycles() const {
		return busy_cycles;
	}

	xscuint64 get_data_bytes() const {
		return data_bytes;
	}

	void incr_data_bytes(const xscuint64& bytes) {
		data_bytes += bytes;
	}

	xscuint64 get_stall_cycles() const {
		return stall_cycles;
	}

	void incr_stall_cycles(xscuint64 stall) {
		stall_cycles += stall;
	}

	void incr_starve_cycles(xscuint64 starve) {
		starve_cycles += starve;
	}

	xscuint64 get_starve_cycles() const {
		return starve_cycles;
	}

	std::string get_name() {
		return m_name;
	}

	void reset() {
		sample_register = 0;
		control_register = 0;
		busy_cycles = 0;
		data_bytes = 0;
		stall_cycles = 0;
		starve_cycles = 0;
		num_tran = 0;
	}
private:
	xscuint64 sample_register;
	xscuint64 control_register;
	xscuint64 busy_cycles;
	xscuint64 data_bytes;
	xscuint64 stall_cycles;
	xscuint64 starve_cycles;
	xscuint64 num_tran;
	std::string m_name;
};
}

#endif /* _SIM_SDX_ACCEL_MON_V2_DATA_MODEL_H_ */
