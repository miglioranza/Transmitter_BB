
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

#ifndef _XAXIMM_XTLM2PIN_WR_T_H_
#define _XAXIMM_XTLM2PIN_WR_T_H_

#define BYTE_WIDTH 8
#define RESET_WIDTH 8

#include <queue>
#include <map>
#include "utils/debug.h"
#include "utils/xtlm_cmnhdr.h"
#include "xtlm_sockets/xtlm_aximm_target_socket.h"
#include "utils/xtlm_aximm_target_wr_socket_util.h"
#include "xtlm_interfaces/xtlm_aximm_mem_manager.h"
#include "properties.h"
#include "report_handler.h"
#include "xtlm_adaptors/xtlm_adaptors_utils.h"

namespace xtlm {

/**
 *\brief Target Utility Class for Blocking Transport Support (Write Transaction)
 */
class target_wr_b_util: public xtlm_aximm_target_wr_socket_util
{
    typedef xtlm::xtlm_aximm_target_wr_socket_util base;
    private:
        bool                m_is_b_tranport_active; //!<To check b_transport status
        sc_core::sc_event   ev_wait_for_resp;       //!<Event to wait till b_transport is completed on pin interface
        int                 m_beat_cnt;             //!<Number of remaining beats to write     
        aximm_payload*      m_data_payload_ptr;     //!<Pointer for Data channel txn
        aximm_payload*      m_addr_payload_ptr;     //!<Pointer for Address channel txn
    public:
    //!< Constructor
    target_wr_b_util(sc_core::sc_module_name p_name, aximm::granularity g_hint, 
            int p_width):xtlm_aximm_target_wr_socket_util(p_name, g_hint, p_width)
    {
        //Initialize Member Variables
        m_is_b_tranport_active  = false;
        m_beat_cnt              = 0;
        m_data_payload_ptr      = nullptr;
        m_addr_payload_ptr      = nullptr;
    }
    /*\brief Blocking Transport Function Call
     *
     *\param trans is AXIMM Payload
     *\param delay is delay for Transaction
     */
    void b_transport(xtlm::aximm_payload &trans, sc_core::sc_time &delay)
    {
        //Wait for Non-Zero delay
        if(delay != sc_core::SC_ZERO_TIME) //To avoid delta cycle
            wait(delay);

        //Check if if there is any pending Non-Blocking transport transaction
        //Simultaneous handling of b & nb calls are not supported
        //TODO - Error Checking Condition
        //
        //if( (base::peek_addr_ch()) ) //|| (base::peek_data_ch()) )
        //{
        //    std::cout << "Blocing Transport call is received when there is" <<
        //        "Ongoing  Non-Blocking call" << std::endl;
        //}
        //std::cout <<"Received blocking WRITE call b_transport" << std::endl;


        //Update b_transport status
        m_is_b_tranport_active  = true;
        m_data_payload_ptr      = &trans;
        m_addr_payload_ptr      = &trans;
        m_beat_cnt              = trans.get_burst_length();
        
        //Suspend Thread Until Transaction is completed
        wait(ev_wait_for_resp);

        //Deactivate b_transort
        m_is_b_tranport_active = false;
    }

    /*\brief Checks if there is any address to be updated
     */
    bool is_addr_ch_available()
    {
        if(!m_is_b_tranport_active)
            return base::is_addr_ch_available();
        //TODO - Log message
        //std::cout<<__FUNCTION__<<std::endl;
        return (m_addr_payload_ptr != nullptr);
    }

    /*\brief Get write address and update the phase
     */
    xtlm::aximm_payload* get_addr_ch()
    {
        if(!m_is_b_tranport_active)
            return base::get_addr_ch();
        //TODO - Log message
        //std::cout<<__FUNCTION__<<std::endl;
        xtlm::aximm_payload* trans = m_addr_payload_ptr;
        m_addr_payload_ptr = nullptr;
        return trans;
    }

    /*\brief Checks if there is any address to be updated
     */
    bool is_data_ch_available()
    {
        if(!m_is_b_tranport_active)
            return base::is_data_ch_available();
        //std::cout<<__FUNCTION__<<std::endl;
        //TODO - Log message
        return (m_data_payload_ptr != nullptr);
    }

    /*\brief Function to get a beat of data
     */
    xtlm::aximm_payload* get_beat_data()
    {
        if(!m_is_b_tranport_active)
            return base::get_beat_data();
        //std::cout<<__FUNCTION__<<std::endl;
        //TODO - Log messages
        xtlm::aximm_payload* trans = m_data_payload_ptr;
        m_beat_cnt--;   //Decrement Number of beats
        if(m_beat_cnt == 0)
            m_data_payload_ptr = nullptr;
        return trans;
    }

    /*\brief function to send the response and complete the transaction
     */
    virtual void send_resp(xtlm::aximm_payload& trans, sc_core::sc_time& delay)
    {
        if(!m_is_b_tranport_active)
            return base::send_resp(trans, delay);
        //std::cout<<__FUNCTION__<<std::endl;
        //TODO - Log messages
        if(delay != sc_core::SC_ZERO_TIME)
            wait(delay);

        //Notify event to complete the transaction
        ev_wait_for_resp.notify();
    }

    /*\brief Function  to reset the variables and states
     */
    void reset()
    {
        //std::cout<<__FUNCTION__<<std::endl;
        m_is_b_tranport_active  = false;
        m_beat_cnt              = false;
        m_data_payload_ptr      = nullptr;
        m_addr_payload_ptr      = nullptr;
        base::reset();
    }

};

template<unsigned int DATA_WIDTH, unsigned int ADDR_WIDTH,
		unsigned int ID_WIDTH, unsigned int AWUSER_WIDTH,
		unsigned int WUSER_WIDTH, unsigned int BUSER_WIDTH>
class xaximm_xtlm2pin_wr_t: public sc_core::sc_module {
private:
	enum {
		//Constants for AXI Write signal widths...
		AWLEN_WIDTH = 8,
		AWSIZE_WIDTH = 3,
		AWBURST_WIDTH = 2,
		AWCACHE_WIDTH = 4,
		AWPROT_WIDTH = 3,
		AWREGION_WIDTH = 4,
		AWQOS_WIDTH = 4,
		BRESP_WIDTH = 2
	};

	struct trans_info {
		sc_dt::uint64 beat_addr;
		unsigned int beat_num;
	};

	typedef std::map<std::string, std::string> string_property_type;

	SC_HAS_PROCESS(xaximm_xtlm2pin_wr_t);
public:
	//SC Pins
	sc_core::sc_in<bool> CLK;
	sc_core::sc_in<bool> RST;

	//Write Address Channel

	sc_core::sc_out<sc_dt::sc_bv<ID_WIDTH> > AWID;
	sc_core::sc_out<sc_dt::sc_bv<ADDR_WIDTH> > AWADDR;
	sc_core::sc_out<sc_dt::sc_bv<AWLEN_WIDTH> > AWLEN;
	sc_core::sc_out<sc_dt::sc_bv<AWSIZE_WIDTH> > AWSIZE;
	sc_core::sc_out<sc_dt::sc_bv<AWBURST_WIDTH> > AWBURST;
	sc_core::sc_out<bool> AWLOCK;
	sc_core::sc_out<sc_dt::sc_bv<AWCACHE_WIDTH> > AWCACHE;
	sc_core::sc_out<sc_dt::sc_bv<AWPROT_WIDTH> > AWPROT;
	sc_core::sc_out<sc_dt::sc_bv<AWREGION_WIDTH> > AWREGION;
	sc_core::sc_out<sc_dt::sc_bv<AWQOS_WIDTH> > AWQOS;
	sc_core::sc_out<sc_dt::sc_bv<AWUSER_WIDTH> > AWUSER;
	sc_core::sc_out<bool> AWVALID;
	sc_core::sc_in<bool> AWREADY;
	//Write Data Channel

	sc_core::sc_out<sc_dt::sc_bv<DATA_WIDTH> > WDATA;
	sc_core::sc_out<sc_dt::sc_bv<DATA_WIDTH / BYTE_WIDTH> > WSTRB;
	sc_core::sc_out<bool> WLAST;
	sc_core::sc_out<sc_dt::sc_bv<WUSER_WIDTH> > WUSER;
	sc_core::sc_out<bool> WVALID;
	sc_core::sc_in<bool> WREADY;

	//Write Resp Channel

	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > BID;
	sc_core::sc_in<sc_dt::sc_bv<BRESP_WIDTH> > BRESP;
	sc_core::sc_in<sc_dt::sc_bv<BUSER_WIDTH> > BUSER;
	sc_core::sc_in<bool> BVALID;
	sc_core::sc_out<bool> BREADY;

	//TLM Socket
	xtlm_aximm_target_socket* wr_socket;

	xaximm_xtlm2pin_wr_t(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& _if_property) :
			sc_core::sc_module(p_name), CLK("CLK"), RST("RST"), AWID("AWID"), AWADDR(
					"AWADDR"), AWLEN("AWLEN"), AWSIZE("AWSIZE"), AWBURST(
					"AWBURST"), AWLOCK("AWLOCK"), AWCACHE("AWCACHE"), AWPROT(
					"AWPROT"), AWREGION("AWREGION"), AWQOS("AWQOS"), AWUSER(
					"AWUSER"), AWVALID("AWVALID"), AWREADY("AWREADY"), WDATA(
					"WDATA"), WSTRB("WSTRB"), WLAST("WLAST"), WUSER("WUSER"), WVALID(
					"WVALID"), WREADY("WREADY"), BID("BID"), BRESP("BRESP"), BUSER(
					"BUSER"), BVALID("BVALID"), BREADY("BREADY"),
                    m_adaptor_log_util(this, "TLM->PIN"){

		if_property = _if_property;

		wr_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) p_name)
								+ std::string("_wr_skt")).c_str()), DATA_WIDTH);

		skt_util = new target_wr_b_util(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) p_name)
								+ std::string("_skt_util")).c_str()),
				aximm::HANDSHAKE, DATA_WIDTH);

		wr_socket->bind((skt_util->wr_socket));

		SC_METHOD(clock_tick);
		//sensitive_pos << CLK;
		//dont_initialize();

		SC_METHOD(update_channels);
		sensitive << update_channels_event;
		dont_initialize();

		m_num_trans_in_progress = 0;
		m_reset_cycles = 0;
		m_reset_stage = false;
		m_data_sampled = true;
		m_addr_sampled = true;
        m_disable_transactor = false;

	}
    
    /*\brief API to disable transactor
     */
    void disable_transactor()
    {
        m_disable_transactor = true;
    }
private:
	sc_dt::sc_bv<BUSER_WIDTH> m_buser_var;
	sc_core::sc_event update_channels_event;
	target_wr_b_util* skt_util;

	xsc::common_cpp::properties if_property;

	std::map<unsigned int, std::queue<aximm_payload*> > trans_list;
	std::map<xtlm::aximm_payload*, trans_info> trans_state;

	unsigned int m_num_trans_in_progress;
	bool m_data_sampled, m_addr_sampled;
    bool m_disable_transactor;
	bool m_reset_stage;
	unsigned m_reset_cycles;
	xtlm::xtlm_adaptor::xtlm_adaptor_log_utils m_adaptor_log_util; //!<Util for logging

    //Function to initialize output pin interface with default values
    void start_of_simulation()
    {
        AWID.write(0);
        AWADDR.write(0);
        AWLEN.write(0);
        AWSIZE.write(0);
        AWBURST.write(0);
        AWLOCK.write(0);
        AWCACHE.write(0);
        AWPROT.write(0);
        AWREGION.write(0);
        AWQOS.write(0);
        AWUSER.write(0);
        AWVALID.write(0);
        WDATA.write(0);
        WSTRB.write(0);
        WLAST.write(0);
        WUSER.write(0);
        WVALID.write(0);
        BREADY.write(0);
    }
	void clock_tick() {
        
        // Disable Method When Transactor is disabled 
        if(m_disable_transactor)
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
		m_data_sampled = true;
		m_addr_sampled = true;

		AWVALID.write(0);
		WVALID.write(0);
		BREADY.write(0);

		//Clear pending trans if any...
		trans_list.clear();

	}

	void sample_channels() {
		sample_resp_channel();
		sample_addr_channel();
		sample_data_channel();
	}

	void update_channels() {
		if (m_reset_stage) {
			reset();
			return;
		}
		update_addr_channel();
		update_data_channel();
		update_resp_channel();
	}

	/*****************************************************************
	 * 1. SC_METHOD sensitive to positive edge of clock.
	 * 2. Sample all the signals of Address Channel
	 *****************************************************************/

	void sample_addr_channel() {
		if (AWVALID.read() && AWREADY.read()) {
			m_addr_sampled = true;
		}
	}

	/************************************************************
	 * 1. SC_METHOD sensitive to posedge of clk
	 * 2. Sample all signals of Data Channel
	 * 3. Comments in function
	 *   A. Keep WREADY low in reset state and don't sample any signal
	 *   B. data_bus_lane is the number of 8 bit lanes in the bus
	 ************************************************************/
	void sample_data_channel() {
		if (WVALID.read() && WREADY.read()) {
			m_data_sampled = true;
		}
	}

	void sample_resp_channel() {
		if (!BVALID.read() || !BREADY.read())
			return;
		aximm_payload* trans;
		if (if_property.getLongLong("ID_WIDTH") == 0) {
			trans = trans_list[0].front();
			trans_list[0].pop();
		} else {
			trans = trans_list[BID.read().to_uint()].front();
			trans_list[BID.read().to_uint()].pop();
		}
		trans_state.erase(trans);

		unsigned int resp = BRESP.read().to_uint();

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
                    "Unexpected response received for the write transaction");
		}

		sc_core::sc_time delay(sc_core::SC_ZERO_TIME);
		skt_util->send_resp(*trans, delay);
		m_adaptor_log_util.print_txn_log(trans, delay, xtlm::BEGIN_WRESP);
		trans->release();
	}

	/*******************************************************
	 *  1. SC_METHOD sensitive to event, occur after 1PS of
	 *      posedge of clock
	 *  2. This method to update Response Channel
	 ******************************************************/
	void update_resp_channel() {
		if (/*(skt_util->is_socket_free() == false) ||*/m_reset_stage) {
			BREADY.write(0);
		} else {
			BREADY.write(1);
		}
	}

	void update_data_channel() {
		if (m_data_sampled) {
			WVALID.write(0);
		}

		if (!skt_util->is_data_ch_available() || !m_data_sampled) {
			return;
		}

		aximm_payload* trans = skt_util->get_beat_data();
		DBG_LOG("Received Write Data from TLM, Addr = %x\n",
				trans->get_address());

		unsigned int lower_byte_lane = 0, upper_byte_lane = 0;
		get_byte_lanes(trans, lower_byte_lane, upper_byte_lane);

		if(trans_state.find(trans) == trans_state.end())
        {
            XSC_REPORT_FATAL(m_adaptor_log_util.m_report_handler, "xtlm::002",
                    "Couldn't find given transaction in the pending transactions");
        }
		unsigned int beat_addr = trans_state[trans].beat_addr;
		unsigned int offset = beat_addr - trans->get_address();
		unsigned char *data_ptr = trans->get_data_ptr() + offset;
		unsigned char *byte_en_ptr = trans->get_byte_enable_ptr();
		if (byte_en_ptr == NULL) {
			//TODO::Throw Error
		}
		byte_en_ptr += offset;

		//update current beat on wdata lines from TLM data_ptr...
		//data_write(data_ptr, byte_en_ptr, lower_byte_lane, upper_byte_lane);

		const unsigned int strb_width = DATA_WIDTH / BYTE_WIDTH;
		sc_dt::sc_bv<strb_width> wstrobe = 0;
		sc_dt::sc_bv<DATA_WIDTH> wdata = 0;
		unsigned int cur_low_byte_lane = lower_byte_lane;
		unsigned int low_bit = 0;
		do {
			//read each byte and write into sc_dt::sc_bv<>...
			low_bit = cur_low_byte_lane * BYTE_WIDTH;
			wdata.range(low_bit + BYTE_WIDTH - 1, low_bit) = *data_ptr;

			wstrobe.range(cur_low_byte_lane, cur_low_byte_lane) =
					((unsigned int) byte_en_ptr[0] == 0xFF) ? 1 : 0;

			//for next iteration update cur_low_byte_lane, data_ptr...
			cur_low_byte_lane += 1;
			data_ptr += 1;
			byte_en_ptr += 1;
		} while (cur_low_byte_lane <= upper_byte_lane);

		WDATA.write(wdata);
		WSTRB.write(wstrobe);

		//update wuser signals if available...
		wuser_write(trans);

		//if not last beat, update next beat attributes...
		if (trans_state[trans].beat_num != trans->get_burst_length()) {
			update_protocol_extns(trans);
			WLAST.write(0);
		} else {
			WLAST.write(1);
			m_adaptor_log_util.print_txn_log(trans, SC_ZERO_TIME,
					xtlm::BEGIN_WDATA_LAST);
		}
		WVALID.write(1);
		m_data_sampled = false;
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

	void wuser_write(aximm_payload* trans) {
		unsigned int user_width = if_property.getLongLong("WUSER_WIDTH");
		if (user_width == 0)
			return;

		unsigned char* wuser_ptr = trans->get_wuser_ptr();
		if (wuser_ptr == NULL)
			return;

		unsigned int cur_beat_num = trans_state[trans].beat_num;
		unsigned int bit_pos = user_width * (cur_beat_num - 1);

		unsigned int cur_byte = bit_pos / BYTE_WIDTH;
		unsigned int bit_offset = bit_pos % BYTE_WIDTH;
		unsigned int cur_num_bits, bit_high, bit_low = 0;
		unsigned int rem_bits = user_width;
		sc_dt::sc_bv<WUSER_WIDTH> udata = 0;
		do {
			cur_num_bits = BYTE_WIDTH - bit_offset;
			if (cur_num_bits > rem_bits)
				cur_num_bits = rem_bits;

			bit_high = bit_low + cur_num_bits - 1;
			udata.range(bit_high, bit_low) =
					(wuser_ptr[cur_byte] >> bit_offset);

			//next iteration make bit_offset = 0
			bit_offset = 0;
			rem_bits -= cur_num_bits;
			cur_byte += 1;
		} while (rem_bits > 0);

		WUSER.write(udata);
	}

	void update_protocol_extns(aximm_payload* trans) {
		unsigned int burst_type = trans->get_burst_type();

		if (burst_type == XAXI_BURST_FIXED)
			//nothing to update
			return;

		//burst_type == XAXI_BURST_INCR OR XAXI_BURST_WRAP
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

	/************************************************************
	 * 1. SC_METHOD sensitive to event, occur after 1PS of posedge
	 *    of clock
	 * 2. This method is to update the values of Addr Channel
	 ***********************************************************/
	void update_addr_channel() {
		if (m_addr_sampled) {
			AWVALID.write(0);
		}
		if (!skt_util->is_addr_ch_available() || !m_addr_sampled) {
			return;
		}

		aximm_payload* trans = skt_util->get_addr_ch();
		trans->acquire();
		DBG_LOG("Received Write Addres from TLM, Addr = %x\n",
				trans->get_address());

		unsigned int axi_id =
				(if_property.getLongLong("ID_WIDTH") == 0) ?
						0 : trans->get_axi_id();

		trans_list[axi_id].push(trans);
		//store the trans satus in map...
		if(trans_state.find(trans) != trans_state.end())
        {
            XSC_REPORT_FATAL(m_adaptor_log_util.m_report_handler, "xtlm::004",
                    "Transaction with same payload hans't been processed yet");
        }
		trans_state[trans].beat_addr = trans->get_address();
		trans_state[trans].beat_num = 1;

		if(trans->get_burst_size() > DATA_WIDTH/BYTE_WIDTH)
		{
			std::string msg = "Received transaction burst size (Bytes) : " + std::to_string(trans->get_burst_size())
				+ " is more than AXI Bus interface width (Bytes) : " + std::to_string(DATA_WIDTH/BYTE_WIDTH);
			XSC_REPORT_FATAL(m_adaptor_log_util.m_report_handler, "xtlm::006",msg.c_str());
		}
		if (if_property.getString("PROTOCOL") != "AXI4LITE") {
			AWID.write(axi_id);
			AWLEN.write(trans->get_burst_length() - 1);
			AWBURST.write(trans->get_burst_type());
			AWLOCK.write(trans->get_lock());
			AWCACHE.write(trans->get_cache());
			AWPROT.write(trans->get_prot());
			AWQOS.write(trans->get_qos());
			AWREGION.write(trans->get_region());

			int burst_size = trans->get_burst_size();
			int awsize = -1;
			while (burst_size != 0) {
				awsize += 1;
				burst_size >>= 1;
			}

			AWSIZE.write(awsize);

			//Exctract AWUSER from char* and drive on pins...
			unsigned char *awuser_ptr = trans->get_awuser_ptr();
			if (awuser_ptr != NULL
					&& (if_property.getLongLong("AWUSER_WIDTH") != 0)) {
				unsigned int awuser_size = trans->get_awuser_size();

				unsigned int num_bits = 0, rem_bits = awuser_size;
				unsigned int low_bit = 0, high_bit, byte_num = 0;
				sc_dt::sc_bv<AWUSER_WIDTH> udata = 0;
				do {
					num_bits = BYTE_WIDTH;
					if (num_bits > rem_bits)
						num_bits = rem_bits;

					high_bit = low_bit + num_bits - 1;
					udata.range(high_bit, low_bit) = (awuser_ptr[byte_num]);

					low_bit += num_bits;
					byte_num += 1;
					rem_bits -= num_bits;
				} while (rem_bits != 0);
				AWUSER.write(udata);
			}
		}
		AWADDR.write(trans->get_address());
		AWVALID.write(1);
		m_addr_sampled = false;
	}
};
}

#endif /* _XAXIMM_XTLM2PIN_WR_T_H_ */
