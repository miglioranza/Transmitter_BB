
// (c) Copyright 2013 - 2018 Xilinx, Inc. All rights reserved.
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
#ifndef _XAXIMM_XTLM2TLM_T_H_
#define _XAXIMM_XTLM2TLM_T_H_

#include<map>
#include "xtlm_interfaces/tlm_mem_manager.h"
#include "xtlm_interfaces/xtlm_aximm_mem_manager.h"
#include "tlm_utils/simple_initiator_socket.h"
#include "xtlm_sockets/xtlm_aximm_target_socket.h"
#include "utils/xtlm_aximm_target_rd_socket_util.h"
#include "utils/xtlm_aximm_target_wr_socket_util.h"

namespace xtlm {

template<unsigned int INPUT_WIDTH, unsigned int OUTPUT_WIDTH=INPUT_WIDTH>
class xaximm_xtlm2tlm_t: public sc_core::sc_module {
public:
	SC_HAS_PROCESS(xaximm_xtlm2tlm_t);

	//xtlm sockets for read and write...
	xtlm::xtlm_aximm_target_socket* rd_socket;
	xtlm::xtlm_aximm_target_socket* wr_socket;

	//simple tlm initiator socket...
	tlm_utils::simple_initiator_socket<xaximm_xtlm2tlm_t, OUTPUT_WIDTH> initiator_socket;

	xaximm_xtlm2tlm_t(sc_core::sc_module_name name) :
			sc_module(name), userExtCallback(NULL) {
		rd_util = new xtlm::xtlm_aximm_target_rd_socket_util("rd_util",
				xtlm::aximm::TRANSACTION, INPUT_WIDTH);

		wr_util = new xtlm::xtlm_aximm_target_wr_socket_util("wr_util",
				xtlm::aximm::TRANSACTION, INPUT_WIDTH);

		rd_socket = new xtlm::xtlm_aximm_target_socket("rd_socket", INPUT_WIDTH);
		wr_socket = new xtlm::xtlm_aximm_target_socket("wr_socket", INPUT_WIDTH);

		rd_socket->bind((rd_util->rd_socket));
		wr_socket->bind((wr_util->wr_socket));

		imp = new xtlm2tlm_imp;
		initiator_socket.register_nb_transport_bw(this,
				&xaximm_xtlm2tlm_t::nb_transport_bw);

		SC_METHOD(process_read_req);
		sensitive << rd_util->transaction_available;
		dont_initialize();

		SC_METHOD(process_write_req);
		sensitive << wr_util->transaction_available;
		dont_initialize();

		SC_METHOD(process_read_resp_end);
		sensitive << rd_util->data_sampled;
		dont_initialize();

		SC_METHOD(process_write_resp_end);
		sensitive << wr_util->resp_sampled;
		dont_initialize();
	}

	void process_read_req() {
		xtlm::aximm_payload* xtlm_payload = rd_util->get_transaction();

		tlm::tlm_generic_payload* tlm_payload = imp->mem_mngr->get_payload();
		tlm_payload->acquire();

		xtlm2tlm_payload(xtlm_payload, tlm_payload);
		tlm_payload->set_command(tlm::TLM_READ_COMMAND);
		if (userExtCallback != NULL) {
			(*userExtCallback)(xtlm_payload, tlm_payload);
		}

		//store for retrieving at later point of time...
		imp->xtlm_payload_list[tlm_payload] = xtlm_payload;
		imp->tlm_payload_list[xtlm_payload] = tlm_payload;

		send_req(tlm_payload);
	}

	void process_write_req() {
		xtlm::aximm_payload* xtlm_payload = wr_util->get_transaction();

		tlm::tlm_generic_payload* tlm_payload = imp->mem_mngr->get_payload();
		tlm_payload->acquire();

		xtlm2tlm_payload(xtlm_payload, tlm_payload);
		tlm_payload->set_command(tlm::TLM_WRITE_COMMAND);
		if (userExtCallback != NULL) {
			(*userExtCallback)(xtlm_payload, tlm_payload);
		}

		//store for retrieving at later point of time...
		imp->xtlm_payload_list[tlm_payload] = xtlm_payload;
		imp->tlm_payload_list[xtlm_payload] = tlm_payload;

		send_req(tlm_payload);
	}

	void process_read_resp_end() {
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		tlm::tlm_phase ph = tlm::END_RESP;
		initiator_socket->nb_transport_fw(*imp->read_resp_payload, ph, delay);

		//erase payloads from list...
		xtlm::aximm_payload* xtlm_payload =
				imp->xtlm_payload_list[imp->read_resp_payload];
		imp->xtlm_payload_list.erase(imp->read_resp_payload);
		imp->tlm_payload_list.erase(xtlm_payload);

		imp->read_resp_payload->release();
		imp->read_resp_payload = NULL;
	}

	void process_write_resp_end() {
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		tlm::tlm_phase ph = tlm::END_RESP;
		initiator_socket->nb_transport_fw(*imp->write_resp_payload, ph, delay);

		//erase payloads from list...
		xtlm::aximm_payload* xtlm_payload =
				imp->xtlm_payload_list[imp->write_resp_payload];
		imp->xtlm_payload_list.erase(imp->write_resp_payload);
		imp->tlm_payload_list.erase(xtlm_payload);

		imp->write_resp_payload->release();
		imp->write_resp_payload = NULL;
	}

	tlm::tlm_sync_enum nb_transport_bw(tlm::tlm_generic_payload& trans,
			tlm::tlm_phase& phase, sc_core::sc_time& delay) {
		//END_REQ is not forwarded to initiator,
		//as it is already sent by the utility socket...
		if (phase == tlm::BEGIN_RESP) {
			send_resp(&trans, delay);
		}
		return tlm::TLM_ACCEPTED;
	}

	//Register Callback to process user tlm extensions.
	void registerUserExtensionHandlerCallback(
			void (*callback)(const xtlm::aximm_payload*,
					tlm::tlm_generic_payload*)) {
		userExtCallback = callback;
	}

	void reset() {
		imp->reset();
	}

	//making payload conversion function as static so that
	//other classes can use it without creating bridge object
	static void xtlm2tlm_payload(xtlm::aximm_payload* xtlm_payload,
			tlm::tlm_generic_payload* tlm_payload) {
		tlm_payload->set_address(xtlm_payload->get_address());
		tlm_payload->set_data_ptr(xtlm_payload->get_data_ptr());
		tlm_payload->set_data_length(xtlm_payload->get_data_length());
		tlm_payload->set_byte_enable_ptr(xtlm_payload->get_byte_enable_ptr());
		tlm_payload->set_byte_enable_length(
				xtlm_payload->get_byte_enable_length());

	}

private:
	void send_req(tlm::tlm_generic_payload* payload) {
		tlm::tlm_phase phase = tlm::BEGIN_REQ;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;

		tlm::tlm_sync_enum status = initiator_socket->nb_transport_fw(*payload,
				phase, delay);

		//END_REQ is ignored as it is already sent by the xtlm utility
		if (status == tlm::TLM_UPDATED && phase == tlm::BEGIN_RESP) {
			send_resp(payload, delay);
		}
	}

	void send_resp(tlm::tlm_generic_payload* tlm_payload,
			sc_core::sc_time& delay) {
		//get xtlm payload
		xtlm::aximm_payload* xtlm_payload = imp->xtlm_payload_list[tlm_payload];
		xtlm_payload->set_response_status(
				static_cast<xtlm_response_status>(tlm_payload->get_response_status()));

		if (tlm_payload->get_command() == tlm::TLM_WRITE_COMMAND) {
			imp->write_resp_payload = tlm_payload;
			wr_util->send_resp(*xtlm_payload, delay);
		} else {
			imp->read_resp_payload = tlm_payload;
			rd_util->send_data(*xtlm_payload, delay);
		}
	}

	xtlm_aximm_target_rd_socket_util* rd_util;
	xtlm_aximm_target_wr_socket_util* wr_util;

	void (*userExtCallback)(const xtlm::aximm_payload*,
			tlm::tlm_generic_payload*);

	struct xtlm2tlm_imp {
		std::map<tlm::tlm_generic_payload*, xtlm::aximm_payload*> xtlm_payload_list;
		std::map<xtlm::aximm_payload*, tlm::tlm_generic_payload*> tlm_payload_list;

		tlm::tlm_generic_payload* read_resp_payload;
		tlm::tlm_generic_payload* write_resp_payload;
		tlm_mem_manager* mem_mngr;
		xtlm::xtlm_aximm_mem_manager* mem_manager;

		xtlm2tlm_imp() {
			read_resp_payload = NULL;
			write_resp_payload = NULL;
			mem_mngr = new tlm_mem_manager();
			mem_manager = new xtlm::xtlm_aximm_mem_manager("xtlm2tlm_imp");
		}

		~xtlm2tlm_imp() {
			delete mem_mngr;
			delete mem_manager;
		}

		void reset() {
			xtlm_payload_list.clear();
			tlm_payload_list.clear();
			read_resp_payload = NULL;
			write_resp_payload = NULL;
		}
	};
	xtlm2tlm_imp* imp;
};
}

#endif /* _XAXIMM_XTLM2TLM_T_H_ */


