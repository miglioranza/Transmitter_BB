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

#pragma once

#include "utils/xtlm_cmnhdr.h"
#include "common_cpp_cmnhdr.h"
#include "report_handler.h"
#include "utils/xtlm_log_helper.h"

namespace xtlm
{
namespace xtlm_adaptor
{
class xtlm_adaptor_log_utils
{
	std::string m_module_name;
	bool m_enable_aximm_logs;
	bool m_enable_axis_logs;
public:

	xsc::common_cpp::report_handler m_report_handler;
	//Constructor which takes report handler. Going forward this needs to avoided
	//and report handler need to be maintained by current class
	xtlm_adaptor_log_utils(const sc_module *const sc_module_ptr,
			const std::string module_name_suffix) :
			m_report_handler((std::string) sc_module_ptr->name()),
			m_enable_aximm_logs(false), m_enable_axis_logs(false)
	{
		if (sc_module_ptr->get_parent_object())
		{
			if (sc_module_ptr->get_parent_object()->get_parent_object())
			{
				m_module_name =
						sc_module_ptr->get_parent_object()->get_parent_object()->basename();
				m_module_name += ".";
			}
			m_module_name += sc_module_ptr->get_parent_object()->basename();
		}
		m_module_name += std::string(" ") + module_name_suffix;
		//Check log env
		if (std::getenv("ENABLE_XTLM_AXIMM_LOG"))
		{
			auto run_time_log_state = std::string(
					std::getenv("ENABLE_XTLM_AXIMM_LOG"));
			std::transform(run_time_log_state.begin(), run_time_log_state.end(),
					run_time_log_state.begin(), ::tolower);
			if ((run_time_log_state == "1") || (run_time_log_state == "true"))
			{
				auto log_state = std::string(std::getenv("XTLM_LOG_STATE"));
				m_enable_aximm_logs = (log_state == "LOG")
						|| (log_state == "WAVEFORM_AND_LOG");
			}
		}

		if (std::getenv("ENABLE_XTLM_AXIS_LOG"))
		{
			auto run_time_log_state = std::string(
					std::getenv("ENABLE_XTLM_AXIS_LOG"));
			std::transform(run_time_log_state.begin(), run_time_log_state.end(),
					run_time_log_state.begin(), ::tolower);
			if ((run_time_log_state == "1") || (run_time_log_state == "true"))
			{
				auto log_state = std::string(std::getenv("XTLM_LOG_STATE"));
				m_enable_axis_logs = (log_state == "LOG")
						|| (log_state == "WAVEFORM_AND_LOG");
			}
		}

	}
	void print_txn_log(const xtlm::aximm_payload *payload,
			const sc_core::sc_time &delay, const tlm::tlm_phase phase)
	{

		if (m_enable_aximm_logs)
		{
			std::string log = "[inst:: " + m_module_name + "] |";
			log += "Time:: " + sc_core::sc_time_stamp().to_string();
			if (payload)
				xtlm::get_nb_transport_log(*payload, phase, delay, log, 2);
			XSC_REPORT_INFO(m_report_handler, "xtlm::1120", log.c_str());
		}
	}

	void print_txn_log(const xtlm::axis_payload *payload,
			const sc_core::sc_time &delay, const tlm::tlm_phase phase)
	{

		if (m_enable_axis_logs)
		{
			std::string log = "[inst:: " + m_module_name + "] |";
			log += "Time:: " + sc_core::sc_time_stamp().to_string();
			if (payload)
				xtlm::get_nb_transport_log(*payload, phase, delay, log, 2);
			XSC_REPORT_INFO(m_report_handler, "xtlm::1120", log.c_str());
		}
	}
};

}
}
