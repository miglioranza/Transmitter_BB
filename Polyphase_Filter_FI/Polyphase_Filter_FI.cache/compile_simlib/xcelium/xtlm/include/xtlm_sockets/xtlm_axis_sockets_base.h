
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

#ifndef XTLM_AXIS_SOCKETS_BASE_H_
#define XTLM_AXIS_SOCKETS_BASE_H_
#include "utils/xtlm_cmnhdr.h"
#include "xtlm_interfaces/xtlm_axis_monitor_base.h"
#include <list>
namespace xtlm {
class xtlm_axis_sockets_base {
public:
	xtlm_axis_sockets_base() :
			m_monitor_skt(nullptr), m_common_monitor_list(nullptr),
			end_point_initiator(false), is_monitor_available(false) {

	}
	typedef sc_core::sc_port<xtlm_axis_monitor_base, 1, SC_ZERO_OR_MORE_BOUND> monitor_port;
	std::list<xtlm_axis_sockets_base*>* get_binded_skt() {
		return &m_binded_skts;
	}

	void set_binded_skt(xtlm_axis_sockets_base& Skt) {
		m_binded_skts.push_back(&Skt);
	}

	void set_monitor_skt(xtlm_axis_sockets_base& monitorSkt) {
		m_monitor_skt = &monitorSkt;
	}

	std::list<monitor_port*>* get_common_monitor_list() const {
		return m_common_monitor_list;
	}

	void set_common_monitor_list(std::list<monitor_port*>* monList) {
		if (monList == nullptr)
			return;
		m_common_monitor_list = monList;
		//Update the content of the list as this will get called
		//only during propagation
		m_common_monitor_list->sort();
		m_monitor_port.sort();
		m_common_monitor_list->merge(m_monitor_port);
		m_common_monitor_list->unique();
		this->propagate();
	}

	void set_monitor_port(monitor_port& monitorPort) {
		m_monitor_port.push_back(&monitorPort);
	}

	void set_end_point_initiator() {
		end_point_initiator = true;
		//create an empty shared list
		m_common_monitor_list = new std::list<monitor_port*>();
	}

	void propagate() {
		if (m_common_monitor_list == nullptr) {
			for (auto& skt : m_binded_skts) {
				if (skt->get_common_monitor_list() != nullptr) {
					set_common_monitor_list(skt->get_common_monitor_list());
					break;
				}
			}
		}

		if (m_common_monitor_list != nullptr) {
			for (auto& skt : m_binded_skts) {
				if (skt->get_common_monitor_list() == nullptr) {
					skt->set_common_monitor_list(m_common_monitor_list);
				}
			}
		}

	}

	bool check_monitor_availability() {
		return is_monitor_available;
	}

	void set_monitor_availability() {
		is_monitor_available = (m_common_monitor_list->empty()) ? false : true;
	}

private:
	std::list<xtlm_axis_sockets_base*> m_binded_skts;
	xtlm_axis_sockets_base* m_monitor_skt;
	std::list<monitor_port*> m_monitor_port;
	std::list<monitor_port*>* m_common_monitor_list;
	bool end_point_initiator;
	bool is_monitor_available;
};
}
#endif /* _XTLM_AXIS_SOCKETS_BASE_H_ */
