
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

#ifndef _XAXIMM_PIN2XTLM_RD_T_H_
#define _XAXIMM_PIN2XTLM_RD_T_H_
#include <queue>
#include <map>
#include <iostream>
#include "utils/xtlm_cmnhdr.h"
#include "utils/debug.h"
#include "xtlm_sockets/xtlm_aximm_initiator_socket.h"
#include "utils/xtlm_aximm_initiator_rd_socket_util.h"
#include "xtlm_interfaces/xtlm_aximm_mem_manager.h"
#include "properties.h"
#include "xtlm_adaptors/xtlm_adaptors_utils.h"

namespace xtlm {
template<unsigned int DATA_WIDTH, unsigned int ADDR_WIDTH,
		unsigned int ID_WIDTH, unsigned int ARUSER_WIDTH,
		unsigned int RUSER_WIDTH>
class xaximm_pin2xtlm_rd_t: public sc_core::sc_module {

	struct trans_info {
		sc_dt::uint64 beat_addr;
		sc_dt::uint64 aligned_addr;

		unsigned int beat_num;
		unsigned int trans_size;

		unsigned int lower_byte_lane;
		unsigned int upper_byte_lane;

		sc_dt::uint64 lower_wrap_boundary;
		sc_dt::uint64 upper_wrap_boundary;

		unsigned int user_active_byte;
		unsigned int user_bit_offset;

		bool is_aligned;
	};

	SC_HAS_PROCESS(xaximm_pin2xtlm_rd_t);
public:
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
	sc_core::sc_out<bool> ARREADY;

	//Read Data Channel
	sc_core::sc_out<sc_dt::sc_bv<ID_WIDTH> > RID;
	sc_core::sc_out<sc_dt::sc_bv<DATA_WIDTH> > RDATA;
	sc_core::sc_out<sc_dt::sc_bv<2> > RRESP;
	sc_core::sc_out<bool> RLAST;
	sc_core::sc_out<sc_dt::sc_bv<RUSER_WIDTH> > RUSER;
	sc_core::sc_out<bool> RVALID;
	sc_core::sc_in<bool> RREADY;

	//TLM Sockets
	xtlm_aximm_initiator_socket* rd_socket;

	xaximm_pin2xtlm_rd_t(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& _if_property) :
			sc_core::sc_module(p_name), CLK("CLK"), RST("RST"), ARID("ARID"), ARADDR(
					"ARADDR"), ARLEN("ARLEN"), ARSIZE("ARSIZE"), ARBURST(
					"ARBURST"), ARLOCK("ARLOCK"), ARCACHE("ARCACHE"), ARPROT(
					"ARPROT"), ARREGION("ARREGION"), ARQOS("ARQOS"), ARUSER(
					"ARUSER"), ARVALID("ARVALID"), ARREADY("ARREADY"), RID(
					"RID"), RDATA("RDATA"), RRESP("RRESP"), RLAST("RLAST"), RUSER(
					"RUSER"), RVALID("RVALID"), RREADY(
					"RREADY"), m_adaptor_log_util(this,"PIN->TLM"){
		if_property = _if_property;
		rd_socket = new xtlm::xtlm_aximm_initiator_socket(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) p_name)
								+ std::string("_rd_skt")).c_str()), DATA_WIDTH);
		skt_util = new xtlm_aximm_initiator_rd_socket_util(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) p_name)
								+ std::string("_skt_util")).c_str()),
				aximm::HANDSHAKE, DATA_WIDTH);

		((skt_util->rd_socket))(*rd_socket);

		SC_METHOD(sample_channels);
		sensitive_pos << CLK;
		dont_initialize();

		SC_METHOD(update_channels);
		sensitive << update_channels_event;
		dont_initialize();

		m_num_trans_in_progress = 0;
		m_reset_cycles = 0;

		m_data_sampled = true;
		m_reset_stage = false;
        m_disable_transactor = false;
		mem_manager = new xtlm_aximm_mem_manager(this);

	}
    /*\brief API to disable transactor
     */
    void disable_transactor()
    {
        m_disable_transactor = true;
    }

    //Destructor
    ~xaximm_pin2xtlm_rd_t()
    {
        delete mem_manager;
        delete skt_util;
        delete rd_socket;
    }
private:
	//Read Address Channel
	sc_core::sc_signal<sc_dt::sc_bv<ID_WIDTH> > arid_signal;
	sc_core::sc_signal<sc_dt::sc_bv<ADDR_WIDTH> > araddr_signal;
	sc_core::sc_signal<sc_dt::sc_bv<8> > arlen_signal;
	sc_core::sc_signal<sc_dt::sc_bv<3> > arsize_signal;
	sc_core::sc_signal<sc_dt::sc_bv<2> > arburst_signal;
	sc_core::sc_signal<bool> arlock_signal;
	sc_core::sc_signal<sc_dt::sc_bv<4> > arcache_signal;
	sc_core::sc_signal<sc_dt::sc_bv<3> > arprot_signal;
	sc_core::sc_signal<sc_dt::sc_bv<4> > arregion_signal;
	sc_core::sc_signal<sc_dt::sc_bv<4> > arqos_signal;
	sc_core::sc_signal<sc_dt::sc_bv<ARUSER_WIDTH> > aruser_signal;
	sc_core::sc_signal<bool> arvalid_signal;
	sc_core::sc_signal<bool> arready_signal;

	//Read Data Channel
	sc_core::sc_signal<sc_dt::sc_bv<ID_WIDTH> > rid_signal;
	sc_core::sc_signal<sc_dt::sc_bv<DATA_WIDTH> > rdata_signal;
	sc_core::sc_signal<sc_dt::sc_bv<2> > rresp_signal;
	sc_core::sc_signal<bool> rlast_signal;
	sc_core::sc_signal<sc_dt::sc_bv<RUSER_WIDTH> > ruser_signal;
	sc_core::sc_signal<bool> rvalid_signal;
	sc_core::sc_signal<bool> rready_signal;

	sc_dt::sc_bv<DATA_WIDTH> m_rdata_var;
	sc_dt::sc_bv<RUSER_WIDTH> m_ruser_var;

	xtlm_aximm_initiator_rd_socket_util* skt_util;
	xsc::common_cpp::properties if_property;
	std::map<xtlm::aximm_payload*, trans_info> trans_state;
	xtlm_aximm_mem_manager* mem_manager;
	xtlm::xtlm_adaptor::xtlm_adaptor_log_utils m_adaptor_log_util; //!<Util for logging


	//Event to trigger SC_METHOD after 1PS delay
	sc_core::sc_event update_channels_event;

	unsigned int m_num_trans_in_progress;
	bool m_data_sampled, m_reset_stage;
    bool m_disable_transactor;
	unsigned int m_reset_cycles;

    //Function to initialize output pin interface with default values
    void start_of_simulation()
    {
	    ARREADY.write(0);
	    RID.write(0);
	    RDATA.write(0);
	    RRESP.write(0);
	    RLAST.write(0);
	    RUSER.write(0);
	    RVALID.write(0);
    }
    

	/***********************************************************
	 *  1. SC_METHOD sensitive to posedge of clock.
	 *  2. Sampling for both channels will happen in this method.
	 *  3. Actions in each channel may depend on state of other channel
	 *     so better to keep it in a single method
	 *  4. In reset stage keep reset_cycles = 8;
	 *  5. start decrementing reset cycles, once reset is de-asserted
	 *  6. System should be in reset stage atleast upto 8 cycles after reset
	 *
	 ***********************************************************/
	void sample_channels() {

        // Disable Method When Transactor is disabled 
        if(m_disable_transactor)
            return;
        else
            next_trigger(CLK.posedge_event());

		if (RST.read() == 0) {
			xtlm_log(1,"Reset in progress\n"); //TODO:: Replace with Messaging system
			m_reset_stage = true;
			m_reset_cycles = 8;
			skt_util->reset();
		}

		if (m_reset_stage == true) {
			if (m_reset_cycles == 0) {
				m_reset_stage = false;
			}
			m_reset_cycles = (m_reset_cycles == 0) ? 0 : m_reset_cycles - 1;
		}

		update_channels_event.notify(1, sc_core::SC_PS);

		if (m_reset_stage) {
			return;
		}
		sample_addr_channel();
		sample_data_channel();

	}

	void reset() {
		//Reset all variables & drive all output pins to reset state...
		m_num_trans_in_progress = 0;
		m_data_sampled = true;

		RVALID.write(0);
		ARREADY.write(0);
	}

	void update_channels() {
		if (m_reset_stage) {
			reset();
			return;
		}
		update_addr_channel();
		update_data_channel();
	}

	/*************************************************************
	 * 1. SC_METHOD sensitive to positive edge of clock.
	 * 2. Sample all the signals of Address Channel
	 * 3. Create XLTM Generic Payload to pass it on to the IP Module
	 * 4. Comments inside function
	 *    A. If in reset just return, don't take any action
	 *    B. Sample only on valid and ready handshake
	 *    C. Its must to add protocol extension. It contains AXI specific
	 *       information. It is only used by Transactors to support
	 *       AXI Protocol.
	 *    D. AXIMM Extension, is attached by AXIMM automatically.
	 *       It is sticky extension and underlying IP may use this information.
	 *    E. Load Generic Payload
	 *    F. In case of AXI LITE, there is no BURST_SIZE. taking DATA_WIDTH
	 *       as BURST_SIZE
	 *    G. For AXI-LITE Burst is always INCR
	 *    H. Increment the number of write transactions in progress
	 *    I. Fill protocol extension
	 *    J. Always keep streaming width equal to data length. As we
	 *       are not representing WRAP burst here
	 *    K. Once transaction payload is ready, pass the transaction
	 *       to utility class for socket communication
	 *************************************************************/
	void sample_addr_channel() {
		if (m_reset_stage) {
			//A
			return;
		}

		if (ARVALID.read() && ARREADY.read()) {  //B
			xtlm_log(1,"XTLM Info-011::PIN2XTLM:: Read Transaction at ");xtlm_log(1,sc_time_stamp())xtlm_log(1,"\n");
			std::string l_protocol = if_property.getString("PROTOCOL");

			aximm_payload* l_addr_trans = mem_manager->get_payload();
			l_addr_trans->acquire();

			//E
			l_addr_trans->set_command(xtlm::XTLM_READ_COMMAND);
			l_addr_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
			//l_addr_trans->set_dmi_allowed(false);

			sc_dt::uint64 addr = ARADDR.read().to_uint64(); //TODO::Replace with Messaging system
			xtlm_log(1,D_TAB);xtlm_log(1,"Read Address:: ");xtlm_log(1,addr);xtlm_log(1,"\n");
			l_addr_trans->set_address(addr);

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("ID_WIDTH") != 0)) {
				l_addr_trans->set_axi_id(ARID.read().to_uint());
				xtlm_log(1,D_TAB);xtlm_log(1,"ARID:: ");xtlm_log(1,l_addr_trans->get_axi_id());xtlm_log(1,"\n");
			}

			//F
			if (l_protocol != "AXI4LITE") {
				l_addr_trans->set_burst_length(ARLEN.read().to_uint() + 1);

				if ( (if_property.getLongLong("SUPPORTS_NARROW_BURST") == 1) &&
						(if_property.getLongLong("HAS_SIZE")) ){
					l_addr_trans->set_burst_size(
							0x1 << ARSIZE.read().to_uint());
				} else {
					l_addr_trans->set_burst_size(DATA_WIDTH / 8);
				}
			} else {
				l_addr_trans->set_burst_length(1);

				l_addr_trans->set_burst_size(DATA_WIDTH / 8);
			}xtlm_log(1,D_TAB);xtlm_log(1,"ARLEN:: ");xtlm_log(1,l_addr_trans->get_burst_length());xtlm_log(1,"\n");xtlm_log(1,D_TAB);xtlm_log(1,"ARSIZE:: ");xtlm_log(1,l_addr_trans->get_burst_size());xtlm_log(1,"\n");

			//G
			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_BURST"))) {
				l_addr_trans->set_burst_type(ARBURST.read().to_uint());
			} else {
				l_addr_trans->set_burst_type(1);
			}xtlm_log(1,D_TAB);xtlm_log(1,"ARBURST:: ");xtlm_log(1,l_addr_trans->get_burst_type());xtlm_log(1,"\n");

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_CACHE"))) {
				l_addr_trans->set_cache(ARCACHE.read().to_uint());
				xtlm_log(2,D_TAB);xtlm_log(2,"ARCACHE:: ");xtlm_log(2,l_addr_trans->get_cache());xtlm_log(2,"\n");
			}

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_PROT"))) {
				l_addr_trans->set_prot(ARPROT.read().to_uint());
				xtlm_log(2,D_TAB);xtlm_log(2,"ARPROT:: ");xtlm_log(2,l_addr_trans->get_prot());xtlm_log(2,"\n");
			}

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_QOS"))) {
				l_addr_trans->set_qos(ARQOS.read().to_uint());
				xtlm_log(2,D_TAB);xtlm_log(2,"ARQOS:: ");xtlm_log(2,l_addr_trans->get_qos());xtlm_log(2,"\n");
			}

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_REGION"))) {
				l_addr_trans->set_region(ARREGION.read().to_uint());
				xtlm_log(2,D_TAB);xtlm_log(2,"ARREGION:: ");xtlm_log(2,l_addr_trans->get_region());xtlm_log(2,"\n");
			}

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("ARUSER_WIDTH") != 0)) {
				unsigned int l_width = if_property.getLongLong("ARUSER_WIDTH");
				unsigned int l_size = ceil((double) l_width / 8);
				unsigned char* l_aruser_ptr = new unsigned char[l_size];

				unsigned int l_n_byte;
				for (l_n_byte = 0; l_n_byte < (l_width >> 3); l_n_byte++) {
					unsigned char l_val =
							static_cast<unsigned char>(ARUSER.read().range(
									(l_n_byte << 3) + 7, l_n_byte << 3).to_uint());
					l_aruser_ptr[l_n_byte] = l_val;
				}

				if (l_width % 8) {
					unsigned char l_val =
							static_cast<unsigned char>(ARUSER.read().range(
									(l_n_byte << 3) + (l_width % 8) - 1,
									(l_n_byte << 3)).to_uint());
					l_aruser_ptr[l_n_byte] = l_val;
				}
				l_addr_trans->set_aruser_ptr(l_aruser_ptr,
						ceil((double) l_width / 8));

				xtlm_log(1,D_TAB);xtlm_log(1,"ARUSER:: ");xtlm_log(1,ARUSER.read().to_string(SC_HEX));xtlm_log(2,"\n");
			}

			//H
			m_num_trans_in_progress += 1;

			//I
			trans_state[l_addr_trans].beat_addr = l_addr_trans->get_address();

			trans_state[l_addr_trans].aligned_addr = sc_dt::uint64(
					(l_addr_trans->get_address()
							/ l_addr_trans->get_burst_size())
							* l_addr_trans->get_burst_size());

			trans_state[l_addr_trans].is_aligned =
					trans_state[l_addr_trans].beat_addr
							== trans_state[l_addr_trans].aligned_addr;

			trans_state[l_addr_trans].trans_size =
					l_addr_trans->get_burst_length()
							* l_addr_trans->get_burst_size();

			if (trans_state[l_addr_trans].is_aligned) {
				l_addr_trans->set_data_length(
						trans_state[l_addr_trans].trans_size);
				l_addr_trans->set_byte_enable_length(
						trans_state[l_addr_trans].trans_size);
			} else {
				l_addr_trans->set_data_length(
						trans_state[l_addr_trans].trans_size
								- (trans_state[l_addr_trans].beat_addr
										- trans_state[l_addr_trans].aligned_addr));

				l_addr_trans->set_byte_enable_length(
						trans_state[l_addr_trans].trans_size
								- (trans_state[l_addr_trans].beat_addr
										- trans_state[l_addr_trans].aligned_addr));
			}
			//allocate data pointer...
			l_addr_trans->create_and_get_data_ptr(
					l_addr_trans->get_data_length());

			//K
			sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
			skt_util->send_addr_ch(*l_addr_trans, delay);
			//Generate log
			m_adaptor_log_util.print_txn_log(l_addr_trans, delay,
					xtlm::BEGIN_RADDR);

		}
	}

	/****************************************************************
	 *  1. SC_METHOD sensitive to a event, triggered after 1PS of
	 *     positive edge of clock
	 *  2. 1PS delay is to avoid race around condition
	 *  3. If number of transactions in progress are greater than
	 *       "NUM_READ_OUTSTANDING" and C-Model has not yet sampled
	 *       last transaction, then DE-ASSERT AWREADY
	 ****************************************************************/
	void update_addr_channel() {
		if (m_num_trans_in_progress
				> if_property.getLongLong("NUM_READ_OUTSTANDING")
				|| (skt_util->is_addr_ch_ready() == false) || m_reset_stage) {
			ARREADY.write(0);
		} else {
			ARREADY.write(1);
		}
	}

	/************************************************************
	 * 1. SC_METHOD sensitive to posedge of clk
	 * 2. Sample all signals of Data Channel
	 * 3. Comments in function
	 *   A. Return in case of reset
	 *   B. If Data is sampled make RVALID low.
	 ************************************************************/
	void sample_data_channel() {
		if (m_reset_stage) {
			return;
		}

		if (RVALID.read() && RREADY.read()) {
			//B
			m_data_sampled = true;
			xtlm_log(1,"XTLM Info-013::PIN2XTLM:: Read Data Sampled at ");xtlm_log(1,sc_time_stamp());xtlm_log(1,"\n");
		}
	}

	/***************************************************************
	 *  1. SC_METHOD sensitive to event, occur after 1PS of posedge of
	 *     clock
	 *  2. This is to update data channel
	 *
	 ***************************************************************/
	void update_data_channel() {
		if (m_data_sampled || m_reset_stage) {
			RVALID.write(0);
		}

		if (skt_util->is_data_ch_available() && m_data_sampled) {

			m_data_sampled = false;
			RVALID.write(1);
			aximm_payload* l_trans = skt_util->get_beat_data();

			std::string l_protocol_type = if_property.getString("PROTOCOL");
			if (l_protocol_type != "AXI4LITE") {
				RID.write(l_trans->get_axi_id());
			}

			trans_state[l_trans].beat_num += 1;

			xtlm_log(1,"XTLM Info-012::PIN2XTLM:: Read Response at ");xtlm_log(1,sc_time_stamp());xtlm_log(1,"\n");
			//RDATA
			unsigned int l_data_bus_bytes = DATA_WIDTH / 8;
			unsigned int l_addr = trans_state[l_trans].beat_addr;
			unsigned int l_dtsize = trans_state[l_trans].trans_size;
			unsigned int l_number_bytes = l_trans->get_burst_size();

			unsigned int l_lower_wrap_boundary, l_upper_wrap_boundary;
			unsigned int l_lower_byte_lane, l_upper_byte_lane;
			unsigned int l_low_byte, l_high_byte = 0;

			//xtlm_log(1,D_TAB);xtlm_log(1,"Beat Number:: ");xtlm_log(1,l_proto_ext->get_beat_num());xtlm_log(1,"\n");

			if ((l_trans->get_burst_type() == XAXI_BURST_WRAP)
					&& (trans_state[l_trans].beat_num == 1)) {
				if (trans_state[l_trans].is_aligned == false) {
					std::cerr
							<< "XTLM Error-009:: Address must be aligned for WRAP Burst\n";
					return;
				}
				l_lower_wrap_boundary = (int) (l_addr / l_dtsize) * l_dtsize;
				l_upper_wrap_boundary = l_lower_wrap_boundary + l_dtsize;

				trans_state[l_trans].lower_wrap_boundary =
						l_lower_wrap_boundary;
				trans_state[l_trans].upper_wrap_boundary =
						l_upper_wrap_boundary;
			}

			l_lower_byte_lane = l_addr
					- ((int) (l_addr / l_data_bus_bytes)) * l_data_bus_bytes;

			if (trans_state[l_trans].is_aligned) {
				l_upper_byte_lane = l_lower_byte_lane + l_number_bytes - 1;
			} else {
				l_upper_byte_lane = trans_state[l_trans].aligned_addr
						+ l_number_bytes - 1
						- ((int) (l_addr / l_data_bus_bytes))
								* l_data_bus_bytes;
			}

			trans_state[l_trans].lower_byte_lane = l_lower_byte_lane;
			trans_state[l_trans].upper_byte_lane = l_upper_byte_lane;

			l_low_byte = l_addr - l_trans->get_address();
			l_high_byte = l_low_byte + (l_upper_byte_lane - l_lower_byte_lane);

			m_rdata_var = 0;

			for (auto _l_byte_loc = l_low_byte; _l_byte_loc <= l_high_byte;
					_l_byte_loc += 8) {
				unsigned int _l_byte_offset = _l_byte_loc - l_low_byte;
				unsigned int _l_num_bytes =
						(_l_byte_loc + 8 <= l_high_byte) ?
								8 : (l_high_byte - _l_byte_loc) + 1;

				unsigned int _l_hbit = ((l_lower_byte_lane + _l_byte_offset
						+ _l_num_bytes) << 3) - 1;
				unsigned int _l_lbit = ((l_lower_byte_lane + _l_byte_offset)
						<< 3);

				m_rdata_var.range(_l_hbit, _l_lbit) =
						*(sc_dt::uint64*) (l_trans->get_data_ptr() + _l_byte_loc);
			}

			xtlm_log(1,D_TAB);xtlm_log(1,"Read Data:: ");xtlm_log(1,m_rdata_var.to_string(SC_HEX));xtlm_log(1,"\n");

			RDATA.write(m_rdata_var);

			if (l_trans->get_burst_type() != XAXI_BURST_FIXED) {
				if (trans_state[l_trans].is_aligned == true) {
					l_addr = l_addr + l_number_bytes;

					l_addr =
							((l_addr >= l_upper_wrap_boundary)
									&& (l_trans->get_burst_type()
											== XAXI_BURST_WRAP)) ?
									l_lower_wrap_boundary : l_addr;
				} else {
					l_addr = trans_state[l_trans].aligned_addr + l_number_bytes;
				}

				trans_state[l_trans].is_aligned = true;
			}
			trans_state[l_trans].beat_addr = l_addr;

			//RUSER
			if (l_protocol_type != "AXI4LITE"
					&& (if_property.getLongLong("RUSER_WIDTH") > 0)) {
				if (l_trans->get_ruser_size() != 0) {

					unsigned int l_width = if_property.getLongLong(
							"RUSER_WIDTH");
					unsigned int l_size_bit = l_width
							* l_trans->get_burst_length();
					unsigned int l_size_byte = (l_size_bit >> 3)
							+ ((l_size_bit % 8) ? 1 : 0);

					if (l_trans->get_ruser_size() < l_size_byte) {
						std::cerr
								<< "XTLM Error-012:: RUSER Data is not sufficient\n";
						return;
					}

					unsigned char* l_ruser_ptr = l_trans->get_ruser_ptr();

					unsigned int l_active_byte =
							trans_state[l_trans].user_active_byte;
					unsigned int l_bit_offset =
							trans_state[l_trans].user_bit_offset;
					unsigned int l_bits_left = l_width;
					/************************************************************
					 * l_low_bit is always going to be 0. As for each new beat
					 * data reading will start from LSB.
					 *
					 * l_high_bit needs to be calculate based on the number of bits
					 * in the char* to be filled. For e.g. if bit_offset is 1, it means
					 * 1 bit is already filled in the active byte of char* during last
					 * beat, so left only 7 bits to be filled. We will read only 7 bits
					 * from USER port to fill in the char pointer.
					 *
					 ************************************************************/
					unsigned int l_low_bit = 0;
					unsigned int l_high_bit =
							((7 - l_bit_offset) >= l_width) ?
									(l_low_bit + l_width - 1) :
									7 - l_bit_offset;

					m_ruser_var = 0;
					while (l_bits_left > 0) {

						unsigned int l_val =
								((unsigned int) l_ruser_ptr[l_active_byte]);

						//Take Higher bits of char pointer
						l_val = l_val >> l_bit_offset;

						m_ruser_var.range(l_high_bit, l_low_bit) = l_val;

						l_active_byte =
								(l_bit_offset + (l_high_bit - l_low_bit + 1)
										== 8) ?
										l_active_byte + 1 : l_active_byte;

						l_bits_left = l_bits_left
								- (l_high_bit - l_low_bit + 1);

						l_low_bit = l_high_bit + 1;
						l_high_bit =
								(l_high_bit + 8) >= l_width ?
										l_width - 1 : l_high_bit + 8;

						l_bit_offset = 0;
					}

					xtlm_log(1,D_TAB);xtlm_log(1,"RUSER:: ");xtlm_log(1,m_ruser_var.to_string(SC_HEX));xtlm_log(1,"\n");
					RUSER.write(m_ruser_var);

					l_bit_offset = (l_width * trans_state[l_trans].beat_num)
							% 8;

					trans_state[l_trans].user_active_byte = l_active_byte;
					trans_state[l_trans].user_bit_offset = l_bit_offset;
				}
			}

			//RLAST
			bool l_rlast = false;
			if (l_protocol_type != "AXI4LITE")
			{
				if (trans_state[l_trans].beat_num
						== l_trans->get_burst_length())
				{
					//Generate Log
					m_adaptor_log_util.print_txn_log(l_trans, SC_ZERO_TIME,
							xtlm::BEGIN_RDATA_LAST);
					RLAST.write(1);
					l_rlast = true;
					l_trans->release();
					m_num_trans_in_progress -= 1;
					trans_state.erase(l_trans);
				}
				else
				{
					RLAST.write(0);
				}
			}
			else
			{
				//Generate Log
				m_adaptor_log_util.print_txn_log(l_trans, SC_ZERO_TIME,
						xtlm::BEGIN_RDATA_LAST);
				RLAST.write(1);
				l_trans->release();
				m_num_trans_in_progress -= 1;
			}

			xtlm_log(1,D_TAB);xtlm_log(1,"RLAST:: ");xtlm_log(1,l_rlast);xtlm_log(1,"\n");
			//RRESP
			if ((if_property.getLongLong("HAS_RRESP") == 1) && l_rlast) {
				xtlm::xtlm_aximm_response_status l_axi_resp =
						l_trans->get_axi_response_status();

				RRESP.write(l_axi_resp);
				xtlm_log(1,D_TAB);xtlm_log(1,"RRESP:: ");xtlm_log(1,RRESP.read());xtlm_log(1,"\n");
			}
		}
	}
};
}

#endif /* _XAXIMM_PIN2XTLM_RD_T_H_ */

