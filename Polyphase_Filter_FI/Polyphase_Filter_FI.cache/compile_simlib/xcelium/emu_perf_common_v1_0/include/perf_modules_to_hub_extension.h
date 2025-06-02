
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
#ifndef _PERF_MODULES_TO_HUB_EXTENSION_H_
#define _PERF_MODULES_TO_HUB_EXTENSION_H_

#include "xtlm.h"
#include "perf_data_model_base.h"
namespace xsc {
namespace perf_extension {
enum data_type {
	NONE = 0, ACCEL, AXIMM_PERF, AXIS_PERF
};
class perf_modules_to_hub_extension: public xtlm::xtlm_extension<
		perf_modules_to_hub_extension> {
public:
	perf_modules_to_hub_extension() :
			m_data(nullptr), m_data_type(NONE) {

	}
	~perf_modules_to_hub_extension() {
		m_data = nullptr;
	}

	void set_data_type(xsc::perf_extension::data_type type) {
		m_data_type = type;
	}

	void set_data(xsc::perf_data_model_base* data) {
		m_data = data;
	}

	xsc::perf_data_model_base* get_data() const {
		return m_data;
	}

	xsc::perf_extension::data_type get_data_type() const {
		return m_data_type;
	}

	xtlm::xtlm_extension_base* clone() const {
		perf_modules_to_hub_extension* t = new perf_modules_to_hub_extension();
		return t;
	}

	void copy_from(xtlm::xtlm_extension_base const & ext) {
		m_data =
				static_cast<perf_modules_to_hub_extension const &>(ext).get_data();
		m_data_type =
				static_cast<perf_modules_to_hub_extension const &>(ext).get_data_type();
	}
public:
private:
	xsc::perf_data_model_base* m_data;
	data_type m_data_type;
};
}
}
#endif /* _PERF_MODULES_TO_HUB_EXTENSION_H_ */
