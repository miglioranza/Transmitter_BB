
// (c) Copyright 2013 - 2020 Xilinx, Inc. All rights reserved.
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
#ifndef _XAXIMM_MONITOR_RD_T_H_
#define _XAXIMM_MONITOR_RD_T_H_

#include <list>
#include <iterator>
#include <iostream>
#include "utils/xtlm_cmnhdr.h"
#include "utils/debug.h"
#include "xtlm_interfaces/xtlm_aximm_monitor_base.h"
#include "xtlm_interfaces/xtlm_aximm_mem_manager.h"
#include "xtlm_generic_payload/aximm_payload.h"
#include "xtlm_generic_payload/xtlm_aximm_phases.h"
#include "properties.h"

namespace xtlm {
template<unsigned int DATA_WIDTH, unsigned int ADDR_WIDTH,
		unsigned int ID_WIDTH, unsigned int ARUSER_WIDTH,
		unsigned int RUSER_WIDTH>
class xaximm_monitor_rd_t: public sc_core::sc_module {
	SC_HAS_PROCESS(xaximm_monitor_rd_t);
public:
	typedef sc_core::sc_port<xtlm_aximm_monitor_base, 1, SC_ZERO_OR_MORE_BOUND> monitor_port;
	//SC Pins
	sc_core::sc_in<bool> CLK;
	sc_core::sc_in<bool> RST;

	//Read Address Channel
	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > ARID;
	sc_core::sc_in<sc_dt::sc_bv<ADDR_WIDTH> > ARADDR;
	sc_core::sc_in<sc_dt::sc_bv<8> > ARLEN;
	sc_core::sc_in<sc_dt::sc_bv<3> > ARSIZE;
	sc_core::sc_in<sc_dt::sc_bv<2> > ARBURST;
	sc_core::sc_in<bool> ARLOCK;
	sc_core::sc_in<sc_dt::sc_bv<4> > ARCACHE;
	sc_core::sc_in<sc_dt::sc_bv<3> > ARPROT;
	sc_core::sc_in<sc_dt::sc_bv<4> > ARREGION;
	sc_core::sc_in<sc_dt::sc_bv<4> > ARQOS;
	sc_core::sc_in<sc_dt::sc_bv<ARUSER_WIDTH> > ARUSER;
	sc_core::sc_in<bool> ARVALID;
	sc_core::sc_in<bool> ARREADY;

	//Read Data Channel
	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > RID;
	sc_core::sc_in<sc_dt::sc_bv<DATA_WIDTH> > RDATA;
	sc_core::sc_in<sc_dt::sc_bv<2> > RRESP;
	sc_core::sc_in<bool> RLAST;
	sc_core::sc_in<sc_dt::sc_bv<RUSER_WIDTH> > RUSER;
	sc_core::sc_in<bool> RVALID;
	sc_core::sc_in<bool> RREADY;

	//TLM Sockets
	monitor_port* rd_socket;

	xaximm_monitor_rd_t(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& _if_property) :
			sc_core::sc_module(p_name), CLK("CLK"), RST("RST"), ARID("ARID"), ARADDR(
					"ARADDR"), ARLEN("ARLEN"), ARSIZE("ARSIZE"), ARBURST(
					"ARBURST"), ARLOCK("ARLOCK"), ARCACHE("ARCACHE"), ARPROT(
					"ARPROT"), ARREGION("ARREGION"), ARQOS("ARQOS"), ARUSER(
					"ARUSER"), ARVALID("ARVALID"), ARREADY("ARREADY"), RID(
					"RID"), RDATA("RDATA"), RRESP("RRESP"), RLAST("RLAST"), RUSER(
					"RUSER"), RVALID("RVALID"), RREADY("RREADY") {
		if_property = _if_property;
		rd_socket = new monitor_port("rd_socket");

		mem_manager = new xtlm_aximm_mem_manager(this);
		ongoing_trans = trans_vec.end();
		trans_in_progress = false;

		SC_METHOD(sample);
		dont_initialize();
		sensitive_pos << CLK;
	}

    //Destructor
    ~xaximm_monitor_rd_t()
    {
        delete  mem_manager;
        delete  rd_socket;
    }

private:
	xsc::common_cpp::properties if_property;
	xtlm_aximm_mem_manager* mem_manager;
	struct transactions {
		aximm_payload* trans;
		bool address_sampled;
		transactions() {
			trans = nullptr;
			address_sampled = false;
		}
	};
	std::list<transactions> trans_vec;
	typename std::list<transactions>::iterator ongoing_trans;
	bool trans_in_progress;
	aximm_payload* create_payload_with_address_phase() {
		aximm_payload* trans = mem_manager->get_payload();
		trans->acquire();
		trans->set_axi_id(ARID.read().to_uint());
		trans->set_address(ARADDR.read().to_uint64());
		trans->set_burst_length(ARLEN.read().to_uint() + 1);
		trans->set_burst_size(1 << ARSIZE.read().to_uint());
		trans->set_command(xtlm::xtlm_command::XTLM_READ_COMMAND);
		return trans;
	}
	void register_begin_addr(aximm_payload& trans) {
		tlm::tlm_phase phase = BEGIN_RADDR;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		(*rd_socket)->register_nb_call(trans, phase, delay);
	}
	void register_end_addr(aximm_payload& trans) {
		tlm::tlm_phase phase = END_RADDR;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		(*rd_socket)->register_nb_call(trans, phase, delay);
	}
	void register_end_data(aximm_payload& trans) {
		tlm::tlm_phase phase =
				(RLAST.read() == true) ? END_RDATA_LAST : END_RDATA;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		(*rd_socket)->register_nb_call(trans, phase, delay);
		if (phase == END_RDATA_LAST) {
			trans.release();
			trans_vec.erase(ongoing_trans);
		}
		trans_in_progress = false;
	}
	void register_begin_data(aximm_payload& trans) {
		tlm::tlm_phase phase =
				(RLAST.read() == true) ? BEGIN_RDATA_LAST : BEGIN_RDATA;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		if (if_property.getString("PROTOCOL") == "AXI4LITE") {
			auto data = trans.create_and_get_data_ptr(4);
			((unsigned int*) data)[0] = RDATA.read().to_uint();
		}
		(*rd_socket)->register_nb_call(trans, phase, delay);
	}
	void sample() {
		if (ARVALID.read() == true) { //for address phase
			if (trans_vec.empty()) {
				trans_vec.push_back(transactions());
				trans_vec.back().trans = create_payload_with_address_phase();
				register_begin_addr(*(trans_vec.back().trans));
			} else if (trans_vec.back().address_sampled) { //This is to avoid sampling same transaction
														   //if valid is high for multiple cycles
				trans_vec.push_back(transactions());
				trans_vec.back().trans = create_payload_with_address_phase();
				register_begin_addr(*(trans_vec.back().trans));
			}

			if (ARREADY.read() == true) {		//handshake of arvalid & arready
				trans_vec.back().address_sampled = true;
				register_end_addr(*(trans_vec.back().trans));
			}
		}

		if (RVALID.read() == true) {
			if (trans_in_progress == false) {
				for (ongoing_trans = trans_vec.begin();
						ongoing_trans != trans_vec.end(); ongoing_trans++) {
					if (ongoing_trans->trans->get_axi_id()
							== RID.read().to_uint()
							&& ongoing_trans->address_sampled == true) {
						this->register_begin_data(*(ongoing_trans->trans));
						trans_in_progress = true;
						break;
					}
				}
			}

			if (RREADY.read() == true) {
				this->register_end_data(*(ongoing_trans->trans));
			}
		}
	}

};
}

#endif /* _XAXIMM_MONITOR_RD_T_H_ */
