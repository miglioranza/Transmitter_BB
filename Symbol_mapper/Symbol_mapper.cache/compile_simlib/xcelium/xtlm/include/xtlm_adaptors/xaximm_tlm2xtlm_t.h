
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
#ifndef _XAXIMM_TLM2XTLM_T_H_
#define _XAXIMM_TLM2XTLM_T_H_

#include <map>
#include "tlm_utils/simple_target_socket.h"
#include "xtlm_interfaces/xtlm_aximm_mem_manager.h"
#include "xtlm_sockets/xtlm_aximm_initiator_socket.h"
#include "utils/xtlm_aximm_initiator_rd_socket_util.h"
#include "utils/xtlm_aximm_initiator_wr_socket_util.h"

namespace xtlm {

template<unsigned int INPUT_BUSWIDTH, unsigned int OUTPUT_BUSWIDTH=INPUT_BUSWIDTH>
class xaximm_tlm2xtlm_t: public sc_core::sc_module {
public:
	SC_HAS_PROCESS(xaximm_tlm2xtlm_t);

	//xtlm sockets for read and write...
	xtlm::xtlm_aximm_initiator_socket* rd_socket;
	xtlm::xtlm_aximm_initiator_socket* wr_socket;

	//simple tlm target socket...
	tlm_utils::simple_target_socket<xaximm_tlm2xtlm_t, INPUT_BUSWIDTH> target_socket;

	xaximm_tlm2xtlm_t(sc_core::sc_module_name name) :
			sc_module(name), userExtCallback(NULL) {
		rd_util = new xtlm::xtlm_aximm_initiator_rd_socket_util("rd_util",
				xtlm::aximm::TRANSACTION, OUTPUT_BUSWIDTH);

		wr_util = new xtlm::xtlm_aximm_initiator_wr_socket_util("wr_util",
				xtlm::aximm::TRANSACTION, OUTPUT_BUSWIDTH);

		rd_socket = new xtlm::xtlm_aximm_initiator_socket("rd_socket",
				OUTPUT_BUSWIDTH);
		wr_socket = new xtlm::xtlm_aximm_initiator_socket("wr_socket",
				OUTPUT_BUSWIDTH);

		rd_util->rd_socket.bind(*rd_socket);
		wr_util->wr_socket.bind(*wr_socket);

		imp = new tlm2xtlm_imp;
		m_bus_width = OUTPUT_BUSWIDTH;
		mem_manager = new xtlm::xtlm_aximm_mem_manager(this);
		target_socket.register_nb_transport_fw(this,
				&xaximm_tlm2xtlm_t::nb_transport_fw);

        target_socket.register_b_transport(
                this, &xaximm_tlm2xtlm_t::b_transport);
		SC_METHOD(process_read_end_req);

		sensitive << rd_util->transaction_sampled;
		dont_initialize();

		SC_METHOD(process_write_end_req);
		sensitive << wr_util->transaction_sampled;
		dont_initialize();

		SC_METHOD(process_read_resp);
		sensitive << rd_util->data_available;
		dont_initialize();

		SC_METHOD(process_write_resp);
		sensitive << wr_util->resp_available;
		dont_initialize();
	}

    //Destructor
    ~xaximm_tlm2xtlm_t()
    {
        delete mem_manager;
        delete imp;
        delete wr_socket;
        delete rd_socket;
        delete wr_util;
        delete rd_util;
    }
    void b_transport(tlm::tlm_generic_payload& trans, sc_core::sc_time& delay) 
    {
        xtlm::aximm_payload* xtlm_payload = mem_manager->get_payload();
        tlm2xtlm_payload(&trans, xtlm_payload, m_bus_width);
        if(userExtCallback!=NULL) {
            (*userExtCallback)(xtlm_payload, &trans);
        }

        if(trans.get_command() == tlm::TLM_WRITE_COMMAND) {
            wr_util->b_transport(*xtlm_payload, delay);
            trans.set_response_status((tlm::tlm_response_status)xtlm_payload->get_response_status());
        } 
        else if(trans.get_command() == tlm::TLM_READ_COMMAND) {
            rd_util->b_transport(*xtlm_payload, delay);
            trans.set_response_status((tlm::tlm_response_status)xtlm_payload->get_response_status());
        }
        else {
            std::cerr<<"Unsupported TLM command"<<std::endl;
        }
    }

	tlm::tlm_sync_enum nb_transport_fw(tlm::tlm_generic_payload& trans,
			tlm::tlm_phase& phase, sc_core::sc_time& delay) {
		if (phase == tlm::BEGIN_REQ) {
			xtlm::aximm_payload* xtlm_payload = mem_manager->get_payload();
			tlm2xtlm_payload(&trans, xtlm_payload, m_bus_width);
			if (userExtCallback != NULL) {
				(*userExtCallback)(xtlm_payload, &trans);
			}

			if (trans.get_command() == tlm::TLM_WRITE_COMMAND) {
				wr_util->send_transaction(*xtlm_payload, delay);
				imp->write_req_payload = &trans;
			} else if (trans.get_command() == tlm::TLM_READ_COMMAND) {

				rd_util->send_transaction(*xtlm_payload, delay);
				imp->read_req_payload = &trans;
			} else {
				std::cerr << "Unsupported TLM command" << std::endl;
			}

			//store for retrieving at later point of time...
			imp->xtlm_payload_list[&trans] = xtlm_payload;
			imp->tlm_payload_list[xtlm_payload] = &trans;
		}

		//tlm::BEGIN_RESP is ignored as the util has already
		//sent END_RESP in function wr_util->get_resp/rd_util->get_data
		return tlm::TLM_ACCEPTED;
	}

	void process_read_end_req() {
		tlm::tlm_phase phase = tlm::END_REQ;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;

		target_socket->nb_transport_bw(*imp->read_req_payload, phase, delay);
		imp->read_req_payload = NULL;
	}

	void process_write_end_req() {
		tlm::tlm_phase phase = tlm::END_REQ;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;

		target_socket->nb_transport_bw(*imp->write_req_payload, phase, delay);
		imp->write_req_payload = NULL;
	}

	void process_read_resp() {
		xtlm::aximm_payload* xtlm_payload = rd_util->get_data();
		tlm::tlm_generic_payload* tlm_payload =
				imp->tlm_payload_list[xtlm_payload];
        tlm_payload->set_response_status((tlm::tlm_response_status)xtlm_payload->get_response_status());
		send_resp(tlm_payload);
	}

	void process_write_resp() {
		xtlm::aximm_payload* xtlm_payload = wr_util->get_resp();
		tlm::tlm_generic_payload* tlm_payload =
				imp->tlm_payload_list[xtlm_payload];
        tlm_payload->set_response_status((tlm::tlm_response_status)xtlm_payload->get_response_status());
		send_resp(tlm_payload);
	}

	//Register Callback to process user tlm extensions.
	void registerUserExtensionHandlerCallback(
			void (*callback)(xtlm::aximm_payload*,
					const tlm::tlm_generic_payload*)) {
		userExtCallback = callback;
	}

	//making payload conversion function as static so that
	//other classes can use it without creating bridge object
	static void tlm2xtlm_payload(tlm::tlm_generic_payload* tlm_payload,
			xtlm::aximm_payload* xtlm_payload, unsigned int width) {
		xtlm_payload->set_address(tlm_payload->get_address());
		xtlm_payload->set_data_ptr(tlm_payload->get_data_ptr(),
				tlm_payload->get_data_length());

		xtlm_payload->set_data_length(tlm_payload->get_data_length());

		if (tlm_payload->get_byte_enable_length() != 0) {
			xtlm_payload->set_byte_enable_length(
					tlm_payload->get_byte_enable_length());
			xtlm_payload->set_byte_enable_ptr(
					tlm_payload->get_byte_enable_ptr(),
					tlm_payload->get_byte_enable_length());
		} else if (tlm_payload->get_command() != tlm::TLM_READ_COMMAND) {
			int size = tlm_payload->get_data_length();
			//TODO::NO Need to set Byte enable pointer for READ call
			unsigned char* b_ptr = new unsigned char[size];
			memset(b_ptr, 0xff, size);
			xtlm_payload->set_byte_enable_length(size);
			xtlm_payload->set_byte_enable_ptr(b_ptr, size);

		}
		//Burst length, burst size
		if (tlm_payload->get_data_length() < (width / 8))
			xtlm_payload->set_burst_size(tlm_payload->get_data_length());
		else
			xtlm_payload->set_burst_size(width / 8);

		xtlm_payload->set_burst_length(
				(tlm_payload->get_address() / xtlm_payload->get_burst_size())
						* xtlm_payload->get_burst_size()
						== tlm_payload->get_address() ?
						tlm_payload->get_data_length()
								/ xtlm_payload->get_burst_size() :
						1
								+ (tlm_payload->get_data_length()
										/ xtlm_payload->get_burst_size()));
		xtlm_payload->set_command((xtlm_command) tlm_payload->get_command());
		xtlm_payload->set_response_status(
				(xtlm_response_status) tlm_payload->get_response_status());

	}

private:
	void send_resp(tlm::tlm_generic_payload* payload) {
		tlm::tlm_phase phase = tlm::BEGIN_RESP;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;

		target_socket->nb_transport_bw(*payload, phase, delay);

		//erase payloads from list...
		xtlm::aximm_payload* xtlm_payload = imp->xtlm_payload_list[payload];
		imp->tlm_payload_list.erase(xtlm_payload);
		imp->xtlm_payload_list.erase(payload);
	}

	unsigned int m_bus_width;
	xtlm::xtlm_aximm_mem_manager* mem_manager;

	xtlm_aximm_initiator_rd_socket_util* rd_util;
	xtlm_aximm_initiator_wr_socket_util* wr_util;
	void (*userExtCallback)(xtlm::aximm_payload*,
			const tlm::tlm_generic_payload*);

	struct tlm2xtlm_imp {
		std::map<tlm::tlm_generic_payload*, xtlm::aximm_payload*> xtlm_payload_list;
		std::map<xtlm::aximm_payload*, tlm::tlm_generic_payload*> tlm_payload_list;

		tlm::tlm_generic_payload* read_req_payload;
		tlm::tlm_generic_payload* write_req_payload;

		tlm2xtlm_imp() {
			read_req_payload = NULL;
			write_req_payload = NULL;
		}

		void reset() {
			xtlm_payload_list.clear();
			tlm_payload_list.clear();
			read_req_payload = NULL;
			write_req_payload = NULL;
		}
	};
	tlm2xtlm_imp* imp;
};
}

#endif /* _XAXIMM_TLM2XTLM_T_H_ */


