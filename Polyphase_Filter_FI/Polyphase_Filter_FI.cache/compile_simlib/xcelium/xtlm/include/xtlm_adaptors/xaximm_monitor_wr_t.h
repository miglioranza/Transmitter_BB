
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
#ifndef _XAXIMM_MONITOR_WR_T_H_
#define _XAXIMM_MONITOR_WR_T_H_

#include <list>
#include "utils/debug.h"
#include "utils/xtlm_cmnhdr.h"
#include "xtlm_sockets/xtlm_aximm_monitor_socket.h"
#include "xtlm_interfaces/xtlm_aximm_mem_manager.h"
#include "xtlm_generic_payload/aximm_payload.h"
#include "xtlm_generic_payload/xtlm_aximm_phases.h"
#include "properties.h"

namespace xtlm {
template<unsigned int DATA_WIDTH, unsigned int ADDR_WIDTH,
		unsigned int ID_WIDTH, unsigned int AWUSER_WIDTH,
		unsigned int WUSER_WIDTH, unsigned int BUSER_WIDTH>
class xaximm_monitor_wr_t: public sc_core::sc_module {
	SC_HAS_PROCESS(xaximm_monitor_wr_t);
public:
	typedef sc_core::sc_port<xtlm_aximm_monitor_base, 1, SC_ZERO_OR_MORE_BOUND> monitor_port;
	//SC Pins
	sc_core::sc_in<bool> CLK;
	sc_core::sc_in<bool> RST;

	//AXI Pins
	//Write Address Channel
	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > AWID;
	sc_core::sc_in<sc_dt::sc_bv<ADDR_WIDTH> > AWADDR;
	sc_core::sc_in<sc_dt::sc_bv<8> > AWLEN;
	sc_core::sc_in<sc_dt::sc_bv<3> > AWSIZE;
	sc_core::sc_in<sc_dt::sc_bv<2> > AWBURST;
	sc_core::sc_in<bool> AWLOCK;
	sc_core::sc_in<sc_dt::sc_bv<4> > AWCACHE;
	sc_core::sc_in<sc_dt::sc_bv<3> > AWPROT;
	sc_core::sc_in<sc_dt::sc_bv<4> > AWREGION;
	sc_core::sc_in<sc_dt::sc_bv<4> > AWQOS;
	sc_core::sc_in<sc_dt::sc_bv<AWUSER_WIDTH> > AWUSER;
	sc_core::sc_in<bool> AWVALID; //Non-Vector Type, so boolean
	sc_core::sc_in<bool> AWREADY;

	//Write Data Channel
	sc_core::sc_in<sc_dt::sc_bv<DATA_WIDTH> > WDATA;
	sc_core::sc_in<sc_dt::sc_bv<DATA_WIDTH / 8> > WSTRB;
	sc_core::sc_in<bool> WLAST;
	sc_core::sc_in<sc_dt::sc_bv<WUSER_WIDTH> > WUSER;
	sc_core::sc_in<bool> WVALID;
	sc_core::sc_in<bool> WREADY;

	//Write Resp Channel
	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > BID;
	sc_core::sc_in<sc_dt::sc_bv<2> > BRESP;
	sc_core::sc_in<sc_dt::sc_bv<BUSER_WIDTH> > BUSER;
	sc_core::sc_in<bool> BVALID;
	sc_core::sc_in<bool> BREADY;

	//TLM Socket
	monitor_port* wr_socket;

	xaximm_monitor_wr_t(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& _if_property) :
			sc_core::sc_module(p_name), CLK("CLK"), RST("RST"), AWID("AWID"), AWADDR(
					"AWADDR"), AWLEN("AWLEN"), AWSIZE("AWSIZE"), AWBURST(
					"AWBURST"), AWLOCK("AWLOCK"), AWCACHE("AWCACHE"), AWPROT(
					"AWPROT"), AWREGION("AWREGION"), AWQOS("AWQOS"), AWUSER(
					"AWUSER"), AWVALID("AWVALID"), AWREADY("AWREADY"), WDATA(
					"WDATA"), WSTRB("WSTRB"), WLAST("WLAST"), WUSER("WUSER"), WVALID(
					"WVALID"), WREADY("WREADY"), BID("BID"), BRESP("BRESP"), BUSER(
					"BUSER"), BVALID("BVALID"), BREADY("BREADY") {

		if_property = _if_property;

		wr_socket = new monitor_port("wr_socket");

		mem_manager = new xtlm_aximm_mem_manager(this);

		SC_METHOD(sample);
		dont_initialize();
		sensitive_pos << CLK;
		ongoing_addrphase = nullptr;
		ongoing_dataphase = nullptr;
		ongoing_resp = nullptr;
	}

    //Destructor
    ~xaximm_monitor_wr_t()
    {
        delete mem_manager;
        delete wr_socket;
    }

private:
	xsc::common_cpp::properties if_property;
	xtlm_aximm_mem_manager* mem_manager;
	struct transactions {
		aximm_payload* trans;
		bool address_sampled;
		bool data_sampled;
		transactions() {
			trans = nullptr;
			address_sampled = false;
			data_sampled = false;
		}
	};
	std::list<transactions> trans_vec;
	aximm_payload* ongoing_addrphase;
	aximm_payload* ongoing_dataphase;
	aximm_payload* ongoing_resp;

	void update_payload_with_address_phase(aximm_payload* trans) {
		trans->set_axi_id(AWID.read().to_uint());
		trans->set_address(AWADDR.read().to_uint64());
		trans->set_burst_length(AWLEN.read().to_uint() + 1);
		trans->set_burst_size(1 << AWSIZE.read().to_uint());
		trans->set_command(xtlm::xtlm_command::XTLM_WRITE_COMMAND);
	}
	aximm_payload* create_payload() {
		aximm_payload* trans = mem_manager->get_payload();
		trans->acquire();
		return trans;
	}
	void register_begin_addr(aximm_payload& trans) {
		tlm::tlm_phase phase = BEGIN_WADDR;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		ongoing_addrphase = &trans;
		(*wr_socket)->register_nb_call(trans, phase, delay);
	}
	void register_end_addr(aximm_payload& trans) {
		tlm::tlm_phase phase = END_WADDR;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		ongoing_addrphase = nullptr;
		(*wr_socket)->register_nb_call(trans, phase, delay);
	}
	void register_begin_data(aximm_payload& trans) {
		tlm::tlm_phase phase;
		if (WLAST.read()) {
			phase = BEGIN_WDATA_LAST;
		} else {
			phase = BEGIN_WDATA;
		}

		if (if_property.getString("PROTOCOL") == "AXI4LITE") {
			auto data = trans.create_and_get_data_ptr(4);
			((unsigned int*) data)[0] = WDATA.read().to_uint();
		}
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		ongoing_dataphase = &trans;
		(*wr_socket)->register_nb_call(trans, phase, delay);
	}

	void register_end_data(aximm_payload& trans) {
		tlm::tlm_phase phase;
		if (WLAST.read()) {
			phase = END_WDATA_LAST;
		} else {
			phase = END_WDATA;
		}
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		ongoing_dataphase = nullptr;
		(*wr_socket)->register_nb_call(trans, phase, delay);
	}

	void register_begin_resp(aximm_payload& trans) {
		tlm::tlm_phase phase = BEGIN_WRESP;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		ongoing_resp = &trans;
		(*wr_socket)->register_nb_call(trans, phase, delay);
	}

	void register_end_resp(aximm_payload& trans) {
		tlm::tlm_phase phase = END_WRESP;
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		ongoing_resp = nullptr;
		(*wr_socket)->register_nb_call(trans, phase, delay);
	}

	void sample() {
		if (AWVALID.read() == true) {
			if (trans_vec.empty()) {
				trans_vec.push_back(transactions());
				trans_vec.back().trans = create_payload();
				update_payload_with_address_phase(trans_vec.back().trans);
				register_begin_addr(*(trans_vec.back().trans));
			} else if (trans_vec.back().address_sampled == true) {
				trans_vec.push_back(transactions());
				trans_vec.back().trans = create_payload();
				update_payload_with_address_phase(trans_vec.back().trans);
				register_begin_addr(*(trans_vec.back().trans));
			} else if (ongoing_addrphase == nullptr) { //data phase before addr phase, update the addr phase details
				for (auto it = trans_vec.begin(); it != trans_vec.end(); ++it) {
					if (it->address_sampled == false) {
						update_payload_with_address_phase(it->trans);
						register_begin_addr(*(it->trans));
						break;

					}
				}
			}
			if (AWREADY.read() == true) {
				for (auto it = trans_vec.begin(); it != trans_vec.end(); ++it) { //there can be chances of multiple transaction starting with data phase
					if (it->address_sampled == false) {
						it->address_sampled = true;
						register_end_addr(*(it->trans));
					}
				}
			}
		}
		if (WVALID.read() == true) {
			if (trans_vec.empty()) {
				trans_vec.push_back(transactions());
				trans_vec.back().trans = create_payload();
				register_begin_data(*(trans_vec.back().trans));
			} else if (trans_vec.back().data_sampled == true) {
				trans_vec.push_back(transactions());
				trans_vec.back().trans = create_payload();
				register_begin_data(*(trans_vec.back().trans));
			} else if (ongoing_dataphase == nullptr) { //addr phase appeared before data phase
				for (auto it = trans_vec.begin(); it != trans_vec.end(); ++it) {
					if (it->data_sampled == false) {
						register_begin_data(*(it->trans));
						break;

					}
				}
			}
			if (WREADY.read() == true) {
				for (auto it = trans_vec.begin(); it != trans_vec.end(); ++it) {
					if (it->data_sampled == false) {
						it->data_sampled = (WLAST.read()) ? true : false;
						register_end_data(*(it->trans));
						break;
					}
				}
			}
		}

		if (BVALID.read() == true) {
			if (ongoing_resp == nullptr) {
				register_begin_resp(*(trans_vec.front().trans));
			}

			if (BREADY.read() == true) {
				register_end_resp(*ongoing_resp);
				trans_vec.front().trans->release();
				trans_vec.erase(trans_vec.begin());
			}
		}

	}
};
}

#endif /* _XAXIMM_MONITOR_WR_T_H_ */
