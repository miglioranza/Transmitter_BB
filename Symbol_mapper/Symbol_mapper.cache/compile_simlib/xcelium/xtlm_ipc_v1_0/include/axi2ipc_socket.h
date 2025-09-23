
// (c) Copyright(C) 2013 - 2020 by Xilinx, Inc. All rights reserved.
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

#include "ipc_port.h"
#include "xtlm_ipc.pb.h"

namespace xsc
{
template<typename PAYLOAD>
class axi2ipc_socket_base : public sc_core::sc_module
{
public:
	axi2ipc_socket_base(sc_core::sc_module_name name, std::string ipi_name, unsigned int max_out_trans = 1);

	//Delete Copy operations
	axi2ipc_socket_base(const axi2ipc_socket_base& ) = delete;
	axi2ipc_socket_base& operator = (const axi2ipc_socket_base& )  = delete;
	virtual ~axi2ipc_socket_base();
	SC_HAS_PROCESS(axi2ipc_socket_base);

	//! Serialize and send AXI payload
	void transport(PAYLOAD *payload, const sc_core::sc_time &delay =
			SC_ZERO_TIME);


	sc_core::sc_event const& event() const;

	//Disconnect with external process
	void disconnect();

	bool is_transfer_done() {return true; } // TODO remove this API
	bool is_ready();

	//!< Function to check if external proc is connected or not
	bool is_external_proc_connected() const;
protected:
	//For handling response from IPC
	virtual void response_thread() = 0;

	//!< Method responsible for handling packing of data
	virtual void packetize_and_send() = 0;
	//!< Function to start accepting port data
	void accept_port_data();

	sc_core::sc_event ev_pack_and_send; //!< Event to trigger packetize method
	sc_core::sc_event m_event; //!< Event to trigger when response is ready

	ipc_port *m_ipc_port;

	unsigned int m_max_outstand_trans;
	//IMPORTANT : In derived class, user need to decrement outstanding count, upon processing txn
	unsigned int m_num_outstand_trans; //!< Current Outstanding transactions count

	std::queue<std::pair<PAYLOAD*, sc_core::sc_time> > m_accepted_txn_q; //!< Queue for accepted payloads
	std::queue<PAYLOAD*> m_pend_resp_q; //!< Queue for pending response payloads
	bool m_header_pkt; //!< true when expected packet is header
	xtlm_ipc::header m_header; //!< Protobuf Header
	unsigned char *h_buf; //!< Header buffer
	unsigned int m_header_length; //!< Header Length
	std::vector<unsigned char> resp_buffer; //!< Response Buffer
	unsigned int m_resp_length; //!< Response Length
	xsc::common_cpp::report_handler m_report_handler;
	std::string m_ipi_name;
};


}

