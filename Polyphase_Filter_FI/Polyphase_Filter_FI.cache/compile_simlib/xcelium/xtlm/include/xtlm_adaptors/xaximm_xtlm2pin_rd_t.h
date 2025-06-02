
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

#ifndef _XAXIMM_XTLM2PIN_RD_T_H_
#define _XAXIMM_XTLM2PIN_RD_T_H_

#define RESET_WIDTH 8
#define BYTE_WIDTH 8

#include <queue>
#include <map>
#include "utils/debug.h"
#include "utils/xtlm_cmnhdr.h"
#include "xtlm_sockets/xtlm_aximm_target_socket.h"
#include "utils/xtlm_aximm_target_rd_socket_util.h"
#include "xtlm_interfaces/xtlm_aximm_mem_manager.h"
#include "properties.h"
#include "report_handler.h"

namespace xtlm {

/**
 *\brief Target Utility Class for Blocking Transport Support (Read Transaction)
 */
class target_rd_b_util: public xtlm_aximm_target_rd_socket_util {
	typedef xtlm::xtlm_aximm_target_rd_socket_util base;
private:
	bool m_is_b_transport_active; //!< Variable to blocking/non-blocking txn
	int m_beat_cnt;             //!< Variable to count remaining number of beats
	sc_core::sc_event ev_rd_txn_completed;  //!< Event to notify end of read txn
	aximm_payload* m_payload_ptr;          //!< Payload Pointer for Read txns
public:

	//!< Constructor
	target_rd_b_util(sc_core::sc_module_name p_name, aximm::granularity g_hint,
			int p_width) :
			xtlm_aximm_target_rd_socket_util(p_name, g_hint, p_width) {
		//Initialize Member Variables
		m_is_b_transport_active = false;
		m_beat_cnt = 0;
		m_payload_ptr = nullptr;
	}

	/*\brief Blocking Transport Function Call
	 *
	 *\param trans is AXIMM Payload
	 *\param delay is delay for Transaction
	 */
	void b_transport(xtlm::aximm_payload &trans, sc_core::sc_time &delay) {
		//Wait for Non-Zero delay
		if (delay != sc_core::SC_ZERO_TIME) //To avoid delta cycle
			wait(delay);

		//Check if if there is any pending Non-Blocking transport transaction
		//Simultaneous handling of b & nb calls are not supported
		//TODO - Error Checking Condition
		//if( base::peek_addr_ch() )
		//{
		//    std::cout << "Blocing Transport call is received when there is" <<
		//        "Ongoing  Non-Blocking call" << std::endl;
		//}
		//std::cout << "Received blocking READ call b_transport "<< std::endl;

		//Update b_transport status
		m_is_b_transport_active = true;
		m_payload_ptr = &trans;
		m_beat_cnt = trans.get_burst_length();

		//Suspend thread untill transaction is completed
		wait(ev_rd_txn_completed);

		//Deactivate b_transport
		m_is_b_transport_active = false;
	}

	/*\brief Function to check whether a transaction is present on Address channel
	 *\param none
	 */
	bool is_addr_ch_available() {
		if (!m_is_b_transport_active)
			return base::is_addr_ch_available();

		return (m_payload_ptr != nullptr);
	}

	/*\brief Function to get address channel and change state
	 *\param none
	 */
	xtlm::aximm_payload* get_addr_ch() {
		if (!m_is_b_transport_active)
			return base::get_addr_ch();

		xtlm::aximm_payload* trans = m_payload_ptr;
		m_payload_ptr = nullptr;
		return trans;
	}
	/*\brief Function to check whether data channel is ready
	 *\param none
	 */
	bool is_data_ch_ready() {
		if (!m_is_b_transport_active)
			return base::is_data_ch_ready();
		//Data channel is ready until all beats are sent
		return (m_beat_cnt > 0);
	}
	/*\brief Function to get data channel and change state
	 *\param trans is a AXIM MM payload
	 *\param delay is a delay
	 *\return none
	 */
	void send_beat_data(xtlm::aximm_payload& trans, sc_core::sc_time& delay) {
		if (!m_is_b_transport_active)
			return base::send_beat_data(trans, delay);

		if (delay != sc_core::SC_ZERO_TIME)
			wait(delay);
		m_beat_cnt--;    //Decrement the beat count

		if (!m_beat_cnt) {
			ev_rd_txn_completed.notify();
			m_payload_ptr = nullptr;
		}
	}

	/*\brief Function to reset
	 *\return none
	 */
	void reset() {
		m_is_b_transport_active = false;
		m_beat_cnt = 0;
		m_payload_ptr = nullptr;
		base::reset();
	}

};
template<unsigned int DATA_WIDTH, unsigned int ADDR_WIDTH,
		unsigned int ID_WIDTH, unsigned int ARUSER_WIDTH,
		unsigned int RUSER_WIDTH>
class xaximm_xtlm2pin_rd_t: public sc_core::sc_module {
private:
	enum {
		//Constants for AXI Read signal widths...
		ARLEN_WIDTH = 8,
		ARSIZE_WIDTH = 3,
		ARBURST_WIDTH = 2,
		ARCACHE_WIDTH = 4,
		ARPROT_WIDTH = 3,
		ARREGION_WIDTH = 4,
		ARQOS_WIDTH = 4,
		RRESP_WIDTH = 2
	};

	struct trans_info {
		sc_dt::uint64 beat_addr;
		unsigned int beat_num;
	};

	typedef std::map<unsigned int, std::queue<aximm_payload*> > trans_list_type;

	SC_HAS_PROCESS(xaximm_xtlm2pin_rd_t);
public:
	//clock & reset pins...
	sc_core::sc_in<bool> CLK;
	sc_core::sc_in<bool> RST;

	//Read Address Channel signals

	sc_core::sc_out<sc_dt::sc_bv<ID_WIDTH> > ARID;
	sc_core::sc_out<sc_dt::sc_bv<ADDR_WIDTH> > ARADDR;
	sc_core::sc_out<sc_dt::sc_bv<ARLEN_WIDTH> > ARLEN;
	sc_core::sc_out<sc_dt::sc_bv<ARSIZE_WIDTH> > ARSIZE;
	sc_core::sc_out<sc_dt::sc_bv<ARBURST_WIDTH> > ARBURST;
	sc_core::sc_out<bool> ARLOCK;
	sc_core::sc_out<sc_dt::sc_bv<ARCACHE_WIDTH> > ARCACHE;
	sc_core::sc_out<sc_dt::sc_bv<ARPROT_WIDTH> > ARPROT;
	sc_core::sc_out<sc_dt::sc_bv<ARREGION_WIDTH> > ARREGION;
	sc_core::sc_out<sc_dt::sc_bv<ARQOS_WIDTH> > ARQOS;
	sc_core::sc_out<sc_dt::sc_bv<ARUSER_WIDTH> > ARUSER;
	sc_core::sc_out<bool> ARVALID;
	sc_core::sc_in<bool> ARREADY;

	//Read Data Channel signals

	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > RID;
	sc_core::sc_in<sc_dt::sc_bv<DATA_WIDTH> > RDATA;
	sc_core::sc_in<sc_dt::sc_bv<RRESP_WIDTH> > RRESP;
	sc_core::sc_in<bool> RLAST;
	sc_core::sc_in<sc_dt::sc_bv<RUSER_WIDTH> > RUSER;
	sc_core::sc_in<bool> RVALID;
	sc_core::sc_out<bool> RREADY;

	//TLM target Socket
	xtlm_aximm_target_socket* rd_socket;

	//constructor...
	xaximm_xtlm2pin_rd_t(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& _if_property) :
			sc_core::sc_module(p_name), CLK("CLK"), RST("RST"), ARID("ARID"), ARADDR(
					"ARADDR"), ARLEN("ARLEN"), ARSIZE("ARSIZE"), ARBURST(
					"ARBURST"), ARLOCK("ARLOCK"), ARCACHE("ARCACHE"), ARPROT(
					"ARPROT"), ARREGION("ARREGION"), ARQOS("ARQOS"), ARUSER(
					"ARUSER"), ARVALID("ARVALID"), ARREADY("ARREADY"), RID(
					"RID"), RDATA("RDATA"), RRESP("RRESP"), RLAST("RLAST"), RUSER(
					"RUSER"), RVALID("RVALID"), RREADY("RREADY"),
					m_adaptor_log_util(this, "TLM->PIN") {
		if_property = _if_property;

		rd_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) p_name)
								+ std::string("_rd_skt")).c_str()), DATA_WIDTH);

		skt_util = new target_rd_b_util(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) p_name)
								+ std::string("_skt_util")).c_str()),
				aximm::HANDSHAKE, DATA_WIDTH);

		//rd_socket to util socket...
		rd_socket->bind((skt_util->rd_socket));

		SC_METHOD(clock_tick);
		//sensitive_pos << CLK;
		//dont_initialize();

		SC_METHOD(update_channels);
		sensitive << update_channels_event;
		dont_initialize();

		m_num_trans_in_progress = 0;
		m_reset_cycles = 0;

		//m_data_sampled = true;
		m_addr_sampled = true;
		m_reset_stage = false;
		m_disable_transactor = false;
	}

	/*\brief API to disable transactor
	 */
	void disable_transactor() {
		m_disable_transactor = true;
	}
private:
	xsc::common_cpp::properties if_property;
	trans_list_type trans_list;
	std::map<xtlm::aximm_payload*, trans_info> trans_state;

	//utility socket for handling protocol related stuff...
	target_rd_b_util* skt_util;

	//Event to trigger SC_METHOD after 1PS delay
	sc_core::sc_event update_channels_event;

	unsigned int m_num_trans_in_progress;
	bool m_addr_sampled, m_reset_stage;
	bool m_disable_transactor;
	unsigned int m_reset_cycles;
	xtlm::xtlm_adaptor::xtlm_adaptor_log_utils m_adaptor_log_util; //!<Util for logging
    

    //Function to initialize output pin interface with default values
    void start_of_simulation()
    {
        ARID.write(0);
        ARADDR.write(0);
        ARLEN.write(0);
        ARSIZE.write(0);
        ARBURST.write(0);
        ARLOCK.write(0);
        ARCACHE.write(0);
        ARPROT.write(0);
        ARREGION.write(0);
        ARQOS.write(0);
        ARUSER.write(0);
        ARVALID.write(0);
        RREADY.write(0);
    }

	void clock_tick() {

		// Disable Method When Transactor is disabled
		if (m_disable_transactor)
			return;
		else
			next_trigger(CLK.posedge_event());

		if (RST.read() == 0 || m_reset_stage == true) {
			handle_reset();
		}

		update_channels_event.notify(1, sc_core::SC_PS);
		if (m_reset_stage) {
			return;
		}
		//Sample inputs & notify update event
		sample_channels();
	}

	void handle_reset() {
		if (RST.read() == 0) {
			m_reset_stage = true;
			m_reset_cycles = RESET_WIDTH;
			skt_util->reset();
			return;
		}

		//count clock cycles in reset state
		m_reset_cycles -= 1;
		if (m_reset_cycles == 0) {
			m_reset_stage = false;
		}
	}

	void reset() {
		//Reset all variables & drive all output pins to reset state...
		m_num_trans_in_progress = 0;
		m_addr_sampled = true;

		ARVALID.write(0);
		RREADY.write(0);

		//Clear pending trans if any...
		for (trans_list_type::iterator it = trans_list.begin();
				it != trans_list.end(); ++it) {
			while (!it->second.empty())
				it->second.pop();
		}

	}

	void sample_channels() {
		sample_data_channel();
		sample_addr_channel();
	}

	void update_channels() {
		if (m_reset_stage) {
			reset();
			return;
		}
		update_addr_channel();
		update_data_channel();
	}

	/************************************************************
	 * 1. SC_METHOD sensitive to posedge of clk
	 * 2. Sample all signals of Data Channel
	 ************************************************************/
	void sample_data_channel() {
		if (!RVALID.read() || !RREADY.read())
			return;

		unsigned int id = RID.read().to_uint();
		if (trans_list.find(id) == trans_list.end()) {
			XSC_REPORT_FATAL(m_adaptor_log_util.m_report_handler, "xtlm::001",
					"Couldn't Find transaction with given RID");
		}
		aximm_payload* trans = trans_list[id].front();

		if (trans->get_data_ptr() == NULL) {
			XSC_REPORT_FATAL(m_adaptor_log_util.m_report_handler, "xtlm::002",
					"Data Pointer is set to NULL");
		}
		unsigned int lower_byte_lane = 0, upper_byte_lane = 0;
		get_byte_lanes(trans, lower_byte_lane, upper_byte_lane);

		unsigned int beat_addr = trans_state[trans].beat_addr;
		unsigned int offset = beat_addr - trans->get_address();
		unsigned char *data_ptr = trans->get_data_ptr() + offset;

		//copy current beat data to TML data_ptr...
		data_read(data_ptr, lower_byte_lane, upper_byte_lane);

		//read ruser signals if available...
		ruser_read(trans);

		rresp_read(trans);

		//if not last beat, update next beat attributes...
		if (trans_state[trans].beat_num != trans->get_burst_length()) {
			update_protocol_extns(trans);
		} else {
			//End of transaction, Remove payload from list
			trans_list[id].pop();
			if (trans_list[id].empty())
				trans_list.erase(id);
			trans_state.erase(trans);
			trans->release();
		}
		sc_core::sc_time delay(0, sc_core::SC_NS);
		skt_util->send_beat_data(*trans, delay);
		m_adaptor_log_util.print_txn_log(trans, SC_ZERO_TIME, xtlm::BEGIN_RDATA_LAST);
	}

	void get_byte_lanes(aximm_payload* trans, unsigned int& lower_byte_lane,
			unsigned int& upper_byte_lane) {
		unsigned int beat_addr = trans_state[trans].beat_addr;
		unsigned int number_bytes = trans->get_burst_size();
		unsigned int data_bus_bytes = DATA_WIDTH / BYTE_WIDTH;

		unsigned int aligned_data_addr;
		aligned_data_addr = (beat_addr / data_bus_bytes) * data_bus_bytes;

		lower_byte_lane = beat_addr - aligned_data_addr;
		upper_byte_lane = lower_byte_lane | (number_bytes - 1);
	}

	void data_read(unsigned char* data_ptr, unsigned int lower_byte_lane,
			unsigned int upper_byte_lane) {
		//If data size is more than 8 bytes, split and read into sc_dt::uint64...
		const unsigned MAX_DATA_WIDTH = 8; //in bytes or 64 bits
		unsigned int cur_low_byte_lane = lower_byte_lane;

		unsigned int cur_upper_byte_lane = 0, cur_num_bytes = 0;
		unsigned int low_bit = 0, high_bit = 0;

		do {
			cur_upper_byte_lane = cur_low_byte_lane + MAX_DATA_WIDTH - 1;

			if (cur_upper_byte_lane > upper_byte_lane) {
				cur_upper_byte_lane = upper_byte_lane;
			}

			low_bit = cur_low_byte_lane * BYTE_WIDTH;
			high_bit = (cur_upper_byte_lane + 1) * BYTE_WIDTH - 1;
			cur_num_bytes = cur_upper_byte_lane - cur_low_byte_lane + 1;

			sc_dt::uint64 data =
					RDATA.read().range(high_bit, low_bit).to_uint64();
			memcpy(data_ptr, (char*) &data, cur_num_bytes);

			//for next iteration update cur_low_byte_lane, data_ptr...
			//if data copied is less than MAX_DATA_WIDTH, loop will not repeat
			cur_low_byte_lane += MAX_DATA_WIDTH;
			data_ptr += MAX_DATA_WIDTH;

		} while (cur_upper_byte_lane < upper_byte_lane);
	}

	void ruser_read(aximm_payload* trans) {
		unsigned int user_width = if_property.getLongLong("RUSER_WIDTH");
		if (user_width == 0)
			return;

		unsigned char* ruser_ptr = trans->get_ruser_ptr();
		if (ruser_ptr == NULL)
			return;

		unsigned int cur_beat_num = trans_state[trans].beat_addr;
		unsigned int bit_pos = user_width * (cur_beat_num - 1);

		unsigned int cur_byte = bit_pos / BYTE_WIDTH;
		unsigned int bit_offset = bit_pos % BYTE_WIDTH;
		unsigned int cur_num_bits, bit_low = 0, bit_high, rem_bits = user_width;
		unsigned int udata;
		do {
			cur_num_bits = BYTE_WIDTH - bit_offset;
			if (cur_num_bits > rem_bits)
				cur_num_bits = rem_bits;

			bit_high = bit_low + cur_num_bits - 1;
			udata = RUSER.read().range(bit_high, bit_low).to_uint();

			//adjust position of the bits & OR with cur byte...
			ruser_ptr[cur_byte] |= (udata << bit_offset);

			//next iteration make bit_offset = 0
			bit_offset = 0;
			rem_bits -= cur_num_bits;
			cur_byte += 1;
			bit_low += cur_num_bits;
		} while (rem_bits > 0);
	}

	void rresp_read(aximm_payload* trans) {
		unsigned int resp = RRESP.read().to_uint();

		switch (resp) {
		case 0:
			trans->set_axi_response_status(xtlm::XTLM_AXI_OKAY);
			break;
		case 1:
			trans->set_axi_response_status(xtlm::XTLM_AXI_EXOKAY);
			break;
		case 2:
			trans->set_axi_response_status(xtlm::XTLM_AXI_SLVERR);
			break;
		case 3:
			trans->set_axi_response_status(xtlm::XTLM_AXI_DECERR);
			break;
		default:
			XSC_REPORT_FATAL(m_adaptor_log_util.m_report_handler, "xtlm::003",
					"Unexpected response received for the read transaction");
		}
	}

	void set_ruser_extension(aximm_payload* trans) {
		unsigned int user_width = if_property.getLongLong("RUSER_WIDTH");
		unsigned int width_in_bits = user_width * trans->get_burst_length();

		unsigned int size_in_bytes = width_in_bits / BYTE_WIDTH;
		if (width_in_bits % BYTE_WIDTH != 0)
			size_in_bytes += 1;

		unsigned char *ruser_ptr = new unsigned char[size_in_bytes];
		memset(ruser_ptr, 0, size_in_bytes);
		trans->set_ruser_ptr(ruser_ptr, size_in_bytes);
	}

	void update_protocol_extns(aximm_payload* trans) {
		unsigned int burst_type = trans->get_burst_type();

		if (burst_type == XAXI_BURST_FIXED)
			//nothing to update
			return;

		unsigned int beat_addr = trans_state[trans].beat_addr;
		unsigned int number_bytes = trans->get_burst_size();
		unsigned int aligned_transf_addr = (beat_addr / number_bytes)
				* number_bytes;
		beat_addr = aligned_transf_addr + number_bytes;

		if (burst_type == XAXI_BURST_WRAP) {
			unsigned int dtsize = trans->get_burst_length()
					* trans->get_burst_size();
			unsigned int lower_wrap_boundary = (trans->get_address() / dtsize)
					/ dtsize;
			unsigned int upper_wrap_boundary = lower_wrap_boundary + dtsize;

			if (beat_addr > upper_wrap_boundary) {
				beat_addr = lower_wrap_boundary;
			}
		}
		trans_state[trans].beat_addr = beat_addr;
		trans_state[trans].beat_num += 1;
	}

	/***************************************************************
	 *  1. SC_METHOD sensitive to event, occur after 1PS of posedge of
	 *     clock
	 *  2. This is to update data channel
	 *
	 ***************************************************************/
	void update_data_channel() {
		if (skt_util->is_data_ch_ready() == false) {
			RREADY.write(0);
		} else {
			RREADY.write(1);
		}
	}

	void sample_addr_channel() {
		if (ARVALID.read() && ARREADY.read()) {
			m_addr_sampled = true;
		}
	}

	void update_addr_channel() {
		if (m_addr_sampled) {
			ARVALID.write(0);
		}
		if (!skt_util->is_addr_ch_available() || !m_addr_sampled) {
			return;
		}

		aximm_payload* trans = skt_util->get_addr_ch();
		DBG_LOG("Received Read Addres from TLM, Addr = %x\n",
				trans->get_address());
		trans->acquire();

		//store the trans satus in map...
		if (trans_state.find(trans) != trans_state.end()) {
			XSC_REPORT_FATAL(m_adaptor_log_util.m_report_handler, "xtlm::004",
					"Transaction with same payload hasn't been processed yet");
		}
		trans_state[trans].beat_addr = trans->get_address();
		trans_state[trans].beat_num = 1;
		trans_list[trans->get_axi_id()].push(trans);

		if(trans->get_burst_size() > DATA_WIDTH/BYTE_WIDTH)
		{
			std::string msg = "Received transaction burst size (Bytes) : " + std::to_string(trans->get_burst_size())
				+ " is more than AXI Bus interface width (Bytes) : " + std::to_string(DATA_WIDTH/BYTE_WIDTH);
			XSC_REPORT_FATAL(m_adaptor_log_util.m_report_handler, "xtlm::006",msg.c_str());
		}

		if (if_property.getString("PROTOCOL") != "AXI4LITE") {
			ARID.write(trans->get_axi_id());
			ARLEN.write(trans->get_burst_length() - 1);
			ARBURST.write(trans->get_burst_type());
			ARLOCK.write(trans->get_lock());
			ARCACHE.write(trans->get_cache());
			ARPROT.write(trans->get_prot());
			ARQOS.write(trans->get_qos());
			ARREGION.write(trans->get_region());

			int burst_size = trans->get_burst_size();
			int arsize = -1;
			while (burst_size != 0) {
				arsize += 1;
				burst_size >>= 1;
			}

			ARSIZE.write(arsize);
			//Exctract ARUSER from char* and drive on pins...
			unsigned char *aruser_ptr = trans->get_aruser_ptr();
			if (aruser_ptr != NULL
					&& (if_property.getLongLong("ARUSER_WIDTH") != 0)) {
				unsigned int aruser_size = trans->get_aruser_size();
				unsigned int num_bits = 0, rem_bits = aruser_size;
				unsigned int low_bit = 0, high_bit, byte_num = 0;
				sc_dt::sc_bv<ARUSER_WIDTH> udata = 0;
				do {
					num_bits = BYTE_WIDTH;
					if (num_bits > rem_bits)
						num_bits = rem_bits;

					high_bit = low_bit + num_bits - 1;
					udata.range(high_bit, low_bit) = (aruser_ptr[byte_num]);

					low_bit += num_bits;
					byte_num += 1;
					rem_bits -= num_bits;
				} while (rem_bits != 0);
				ARUSER.write(udata);
			}
		}
		ARADDR.write(trans->get_address());
		ARVALID.write(1);
		m_adaptor_log_util.print_txn_log(trans, SC_ZERO_TIME, xtlm::BEGIN_RADDR);
		m_addr_sampled = false;
	}
};
}

#endif /* _XAXIMM_XTLM2PIN_RD_T_H_ */

