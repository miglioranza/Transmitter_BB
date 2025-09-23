
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
class ipc2axi_socket_base : public sc_core::sc_module
{
public:
	ipc2axi_socket_base(sc_core::sc_module_name name, std::string ipi_name,
			unsigned max_out_trans);

	//Delete copy operations
	ipc2axi_socket_base(const ipc2axi_socket_base&) = delete;
	ipc2axi_socket_base& operator = (const ipc2axi_socket_base&) = delete;
	virtual ~ipc2axi_socket_base();

	SC_HAS_PROCESS(ipc2axi_socket_base);

	//!< Returns pops payload from Queue
	PAYLOAD* get_payload();

	//!< Returns front element in the Queue (No pop)
	PAYLOAD* peek_payload();

	//!< Event notification when payload is avaliable
	sc_core::sc_event const& event() const;

	//!< Function to send response
	virtual void send_response(PAYLOAD* payload) = 0;

private:
	//!< API to disconnect socket communication
	void disconnect();
	void accept_port_data(); //!< API to start accepting data

	virtual void receive(); //!< SystemC method to read incoming data from IPC
    //Method to Transfer payload from Delay Queue to Payload Available Queue
	//This method is used to consume delay provided.
	void tx_from_delay_q_to_payload_q();

protected:
	virtual void parse_array_and_set_payload_dealy(unsigned char* buffer,
			unsigned int buffer_len, PAYLOAD* &payload, sc_core::sc_time& delay) =0;


	sc_core::sc_event m_event; //!< To notify payload availability
	xsc::ipc_port* m_ipc_port; //!< For socket communication
	std::queue<std::pair<PAYLOAD*, sc_core::sc_time>> m_delay_q;
	sc_core::sc_event ev_trig_tx_delay_to_payload;
	std::queue<PAYLOAD*> payload_q; //!< Queue which holds payload after delay;

	xtlm_ipc::header m_header; //!< Protobuf Header
	unsigned char *h_buf; //!< Header buffer
	unsigned int m_header_length; //!< Header Length
	unsigned char *resp_buf; //!< Response Buffer
	unsigned int m_resp_length; //!< Response Length

	bool is_header_pkt;

};


}

