
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

#ifndef TRANSACTOR_XAXIMM_PIN2XTLM_WR_T_H_
#define TRANSACTOR_XAXIMM_PIN2XTLM_WR_T_H_
#include <queue>
#include <map>
#include "utils/debug.h"
#include "utils/xtlm_cmnhdr.h"
#include "xtlm_sockets/xtlm_aximm_initiator_socket.h"
#include "utils/xtlm_aximm_initiator_wr_socket_util.h"
#include "xtlm_interfaces/xtlm_aximm_mem_manager.h"
#include "properties.h"
#include "report_handler.h"
#include "xtlm_adaptors/xtlm_adaptors_utils.h"


namespace xtlm {

template<unsigned int DATA_WIDTH, unsigned int ADDR_WIDTH,
		unsigned int ID_WIDTH, unsigned int AWUSER_WIDTH,
		unsigned int WUSER_WIDTH, unsigned int BUSER_WIDTH>
class xaximm_pin2xtlm_wr_t: public sc_core::sc_module {

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

	SC_HAS_PROCESS(xaximm_pin2xtlm_wr_t);
public:
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
	sc_core::sc_out<bool> AWREADY;

	//Write Data Channel
	sc_core::sc_in<sc_dt::sc_bv<DATA_WIDTH> > WDATA;
	sc_core::sc_in<sc_dt::sc_bv<DATA_WIDTH / 8> > WSTRB;
	sc_core::sc_in<bool> WLAST;
	sc_core::sc_in<sc_dt::sc_bv<WUSER_WIDTH> > WUSER;
	sc_core::sc_in<bool> WVALID;
	sc_core::sc_out<bool> WREADY;

	//Write Resp Channel
	sc_core::sc_out<sc_dt::sc_bv<ID_WIDTH> > BID;
	sc_core::sc_out<sc_dt::sc_bv<2> > BRESP;
	sc_core::sc_out<sc_dt::sc_bv<BUSER_WIDTH> > BUSER;
	sc_core::sc_out<bool> BVALID;
	sc_core::sc_in<bool> BREADY;

	//TLM Socket
	xtlm_aximm_initiator_socket* wr_socket;

	xaximm_pin2xtlm_wr_t(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& _if_property) :
			sc_core::sc_module(p_name), CLK("CLK"), RST("RST"), AWID("AWID"), AWADDR(
					"AWADDR"), AWLEN("AWLEN"), AWSIZE("AWSIZE"), AWBURST(
					"AWBURST"), AWLOCK("AWLOCK"), AWCACHE("AWCACHE"), AWPROT(
					"AWPROT"), AWREGION("AWREGION"), AWQOS("AWQOS"), AWUSER(
					"AWUSER"), AWVALID("AWVALID"), AWREADY("AWREADY"), WDATA(
					"WDATA"), WSTRB("WSTRB"), WLAST("WLAST"), WUSER("WUSER"), WVALID(
					"WVALID"), WREADY("WREADY"), BID("BID"), BRESP("BRESP"), BUSER(
					"BUSER"), BVALID("BVALID"), BREADY("BREADY"), 
                    m_adaptor_log_util(this, "PIN->TLM")
    {

		if_property = _if_property;

		wr_socket = new xtlm::xtlm_aximm_initiator_socket(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) p_name)
								+ std::string("wr_skt")).c_str()), DATA_WIDTH);

		skt_util = new xtlm_aximm_initiator_wr_socket_util(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) p_name)
								+ std::string("_skt_util")).c_str()),
				aximm::HANDSHAKE, DATA_WIDTH);

		((skt_util->wr_socket))(*wr_socket);

		SC_METHOD(sample_channels);
		//sensitive_pos << CLK;
		//dont_initialize();

		SC_METHOD(update_channels);
		sensitive << update_channels_event;
		dont_initialize();

		m_num_trans_in_progress = 0;
		m_reset_cycles = 0;
		m_resp_sampled = false;
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
    ~xaximm_pin2xtlm_wr_t()
    {
        delete mem_manager;
        delete skt_util;
        delete wr_socket;
    }
private:
	sc_dt::sc_bv<BUSER_WIDTH> m_buser_var;

	sc_core::sc_event update_channels_event;

	xtlm_aximm_initiator_wr_socket_util* skt_util;

	xsc::common_cpp::properties if_property;
	std::map<xtlm::aximm_payload*, trans_info> trans_state;

	unsigned int m_num_trans_in_progress;
	std::queue<xtlm::aximm_payload*> data_queue;
	std::queue<xtlm::aximm_payload*> resp_queue;
	xtlm_aximm_mem_manager* mem_manager;
	xtlm::xtlm_adaptor::xtlm_adaptor_log_utils m_adaptor_log_util; //!<Util for logging


	bool m_resp_sampled;
	bool m_reset_stage;
    bool m_disable_transactor;
	unsigned m_reset_cycles;

    //Function to initialize output pin interface with default values
    void start_of_simulation()
    {
	    AWREADY.write(0);
	    WREADY.write(0);
	    BID.write(0);
	    BRESP.write(0);
	    BUSER.write(0);
	    BVALID.write(0);
    }
	
    /****************************************************************
	 *  1. SC_METHOD sensitive to positive edge of clk
	 *  2. Take action on all channel in a single method because, actions
	 *     for each channel depends on state of the other channel. For e.g
	 *     m_num_trans_in_progress decides whether to accept more transactions
	 *     and is updated by response channel.
	 *  3. In reset stage keep reset_cycles = 8;
	 *  4. start decrementing reset cycles, once reset is de-asserted
	 *  5. System should be in reset stage atleast upto 8 cycles after reset
	 ****************************************************************/
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
		sample_resp_channel();
		sample_addr_channel();
		sample_data_channel();

	}

	void reset() {
		//Reset all variables & drive all output pins to reset state...
		m_num_trans_in_progress = 0;
		m_resp_sampled = false;

		BVALID.write(0);
		AWREADY.write(0);

		while (!data_queue.empty())
			data_queue.pop();
		while (!resp_queue.empty())
			resp_queue.pop();

	}

	void update_channels() {
		if (m_reset_stage)
			reset();
		update_resp_channel();
		update_addr_channel();
		update_data_channel();
	}

	/*****************************************************************
	 * 1. SC_METHOD sensitive to positive edge of clock.
	 * 2. Sample all the signals of Address Channel
	 * 3. Create XLTM Generic Payload to pass it on to the IP Module
	 * 4. Comments inside function
	 *    A. If in reset just return. Don't take any action
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
	 *    L. If number of transactions in progress are greater than
	 *       "NUM_WRITE_OUTSTANDING" then de-assert awready otherwise
	 *       always keep it asserted
	 *****************************************************************/

	void sample_addr_channel() {
		if (m_reset_stage) {
			//A
			return;
		}

		if (AWVALID.read() && AWREADY.read()) {  //B
			std::string l_protocol = if_property.getString("PROTOCOL");

			aximm_payload* l_addr_trans = mem_manager->get_payload();
			l_addr_trans->acquire();

			//E
			l_addr_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
			l_addr_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
			//l_addr_trans->set_dmi_allowed(false);

			sc_dt::uint64 addr = AWADDR.read().to_uint64(); //TODO::Replace with Messaging system
			xtlm_log(1,"XTLM Info-001::PIN2XTLM:: Write Transaction started at ");xtlm_log(1,sc_time_stamp());xtlm_log(1,"\n");
			l_addr_trans->set_address(addr);
			xtlm_log(1,D_TAB);xtlm_log(1,"Write Address:: ");xtlm_log(1,addr);xtlm_log(1,"\n");

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("ID_WIDTH") != 0)) {
				l_addr_trans->set_axi_id(AWID.read().to_uint());
				xtlm_log(1,D_TAB);xtlm_log(1,"AWID:: ");xtlm_log(1,l_addr_trans->get_axi_id());xtlm_log(1,"\n");
			}

			//F
			if (l_protocol != "AXI4LITE") {
				l_addr_trans->set_burst_length(AWLEN.read().to_uint() + 1);

				if ( (if_property.getLongLong("SUPPORTS_NARROW_BURST") == 1) && if_property.getLongLong("HAS_SIZE") ) {
					l_addr_trans->set_burst_size(
							0x1 << AWSIZE.read().to_uint());
				} else {
					l_addr_trans->set_burst_size(DATA_WIDTH / 8);
				}
			} else {
				l_addr_trans->set_burst_length(1);

				l_addr_trans->set_burst_size(DATA_WIDTH / 8);
			}xtlm_log(1,D_TAB);xtlm_log(1,"AWLEN:: ");xtlm_log(1,l_addr_trans->get_burst_length());xtlm_log(1,"\n");xtlm_log(1,D_TAB);xtlm_log(1,"AWSIZE:: ");xtlm_log(1,l_addr_trans->get_burst_size());xtlm_log(1,"\n");

			//G
			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_BURST"))) {
				l_addr_trans->set_burst_type(AWBURST.read().to_uint());
				xtlm_log(1,D_TAB);xtlm_log(1,"AWBURST:: ");xtlm_log(1,l_addr_trans->get_burst_type());xtlm_log(1,"\n");
			} else {
				l_addr_trans->set_burst_type(1);
				xtlm_log(1,D_TAB);xtlm_log(1,"AWBURST:: ");xtlm_log(1,l_addr_trans->get_burst_type());xtlm_log(1,"\n");
			}

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_CACHE"))) {
				l_addr_trans->set_cache(AWCACHE.read().to_uint());
				xtlm_log(2,D_TAB);xtlm_log(2,"AWCACHE:: ");xtlm_log(2,l_addr_trans->get_cache());xtlm_log(2,"\n");
			}

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_PROT"))) {
				l_addr_trans->set_prot(AWPROT.read().to_uint());
				xtlm_log(2,D_TAB);xtlm_log(2,"AWPROT:: ");xtlm_log(2,l_addr_trans->get_prot());xtlm_log(2,"\n");
			}

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_QOS"))) {
				l_addr_trans->set_qos(AWQOS.read().to_uint());
				xtlm_log(2,D_TAB);xtlm_log(2,"AWQOS:: ");xtlm_log(2,l_addr_trans->get_qos());xtlm_log(2,"\n");
			}

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("HAS_REGION"))) {
				l_addr_trans->set_region(AWREGION.read().to_uint());
				xtlm_log(2,D_TAB);xtlm_log(2,"AWREGION:: ");xtlm_log(2,l_addr_trans->get_region());xtlm_log(2,"\n");
			}

			if ((l_protocol != "AXI4LITE")
					&& (if_property.getLongLong("AWUSER_WIDTH") != 0)) {
				unsigned int l_width = if_property.getLongLong("AWUSER_WIDTH");
				unsigned int l_usr_size = ceil((double) l_width / 8);
				unsigned char* l_awuser_ptr = new unsigned char[l_usr_size];

				unsigned int _l_i;
				for (_l_i = 0; _l_i < (l_width >> 3); _l_i++) {
					unsigned char l_val =
							static_cast<unsigned char>(AWUSER.read().range(
									(_l_i << 3) + 7, _l_i << 3).to_uint());
					l_awuser_ptr[_l_i] = l_val;
				}

				if (l_width % 8) {
					unsigned char l_val =
							static_cast<unsigned char>(AWUSER.read().range(
									(_l_i << 3) + (l_width % 8) - 1,
									(_l_i << 3)).to_uint());
					l_awuser_ptr[_l_i] = l_val;
				}
				l_addr_trans->set_awuser_ptr(l_awuser_ptr, l_usr_size);
			}

			//H
			m_num_trans_in_progress += 1;

			//I
			trans_state[l_addr_trans].beat_addr = (l_addr_trans->get_address());

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
			//allocate data & byte enable pointers...
			l_addr_trans->create_and_get_data_ptr(
					l_addr_trans->get_data_length());
			l_addr_trans->create_and_get_byte_enable_ptr(
					l_addr_trans->get_byte_enable_length());

			//J
			//l_addr_trans->set_streaming_width(l_addr_trans->get_data_length());

			//K
			data_queue.push(l_addr_trans);
			sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
			skt_util->send_addr_ch(*l_addr_trans, delay);
		}
	}

	/************************************************************
	 * 1. SC_METHOD sensitive to event, occur after 1PS of posedge
	 *    of clock
	 * 2. This method is to update the values of Addr Channel
	 * 3. Keep READY low if outstanding transactions are more than
	 *    NUM_WRITE_OUTSTANDING or C-Model has not yet sampled last
	 *    transaction
	 ***********************************************************/

	void update_addr_channel() {
		if (m_num_trans_in_progress
				> if_property.getLongLong("NUM_WRITE_OUTSTANDING")
				|| (skt_util->is_addr_ch_ready() == false) || m_reset_stage) {
			AWREADY.write(0);
		} else {
			AWREADY.write(1);
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
		if (m_reset_stage) {
			return;
		}

		if (WVALID.read() && WREADY.read()) {
			if (data_queue.empty()) {
				std::cerr
						<< "XTLM Error-003:: Data is available before Address\n";
				return;
			}

			xtlm_log(1,"XTLM Info-013::PIN2XTLM:: Write Data Sampled at ");xtlm_log(1,sc_core::sc_time_stamp());xtlm_log(1,"\n");

			aximm_payload* l_trans = data_queue.front();
			if (l_trans == NULL) {
				std::cerr
						<< "XTLM Error-004:: Write TLM transaction is empty\n";
				return;
			}

			unsigned char* l_data_ptr = l_trans->get_data_ptr();
			if (l_data_ptr == NULL) {
				std::cerr << "XTLM Error-007:: Data Pointer is null\n";
				return;
			}

			unsigned char* l_byte_en_ptr = l_trans->get_byte_enable_ptr();
			if (l_byte_en_ptr == NULL) {
				std::cerr << "XTLM Error-008:: Byte Enable Pointer is null\n";
				return;
			}

			trans_state[l_trans].beat_num += 1;
			if (trans_state[l_trans].beat_num > l_trans->get_burst_length()) {
                XSC_REPORT_FATAL(m_adaptor_log_util.m_report_handler, "xtlm::000",
                        std::string( "AXI Protocol violation detected. Expected Number of beats: "
                        + std::to_string(l_trans->get_burst_length()) 
                        + " Received Number of beats: "
                        + std::to_string(trans_state[l_trans].beat_num)).c_str()
                        );
			}

			//xtlm_log(1,D_TAB);xtlm_log(1,"Beat Number:: ");xtlm_log(1,trans_state[l_trans].beat_num);xtlm_log(1,"\n");

			//B
			unsigned int l_data_bus_bytes = DATA_WIDTH / 8;
			unsigned int l_addr = trans_state[l_trans].beat_addr;
			unsigned int l_dtsize = trans_state[l_trans].trans_size;
			unsigned int l_number_bytes = l_trans->get_burst_size();

			unsigned int l_lower_wrap_boundary, l_upper_wrap_boundary;
			unsigned int l_lower_byte_lane, l_upper_byte_lane;
			unsigned int l_low_byte, l_high_byte = 0;

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

				const sc_dt::uint64 _l_data = WDATA.read().range(_l_hbit,
						_l_lbit).to_uint64();
				memcpy(l_trans->get_data_ptr() + _l_byte_loc, (char*) &_l_data,
						_l_num_bytes);

				_l_hbit = l_lower_byte_lane + _l_byte_offset + _l_num_bytes - 1;
				_l_lbit = l_lower_byte_lane + _l_byte_offset;

				unsigned char _l_byte_en =
						static_cast<unsigned char>(WSTRB.read().range(_l_hbit,
								_l_lbit).to_uint());

				for (unsigned int _l_index = 0; _l_index < _l_num_bytes; _l_index++) {
					(l_trans->get_byte_enable_ptr())[_l_byte_loc + _l_index] =
							(_l_byte_en & (1 << _l_index)) ? 0xFF : 0x0;
				}
			}xtlm_log(1,D_TAB);xtlm_log(1,"Write Data:: ");xtlm_log(1,WDATA.read().to_string(SC_HEX));xtlm_log(1,"\n")
			xtlm_log(1,D_TAB);xtlm_log(1,"Write STRB:: ");xtlm_log(1,WSTRB.read().to_string(SC_HEX));
			xtlm_log(1,"\n")

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

			//WUSER
			if ((if_property.getString("PROTOCOL") != "AXI4LITE")
					&& (if_property.getLongLong("WUSER_WIDTH") > 0)) {

				/****************************************************************
				 * NOTES:
				 * 1. Figure out total size of wuser pin by multiplying
				 *    wuser_width with number of beats.
				 *
				 * 2. WUSER is not byte alligned. It requires to keep track
				 *    of number of bits already filled in for last updated byte
				 *    location
				 *
				 *  3. l_active_byte : Present active byte to fill in extension
				 *  4. l_bit_offset : Starting bit in the active byte
				 *****************************************************************/
				unsigned int l_width = if_property.getLongLong("WUSER_WIDTH");
				if (trans_state[l_trans].beat_num == 1) {
					unsigned int l_size_bit = l_width
							* l_trans->get_burst_length();
					unsigned int l_size_byte = (l_size_bit >> 3)
							+ ((l_size_bit % 8) ? 1 : 0);
					unsigned char* l_wuser_ptr =
							new unsigned char[l_size_byte]();
					l_trans->set_wuser_ptr(l_wuser_ptr, l_size_byte);
				}

				unsigned char* l_wuser_ptr = l_trans->get_wuser_ptr();

				unsigned int l_active_byte =
						trans_state[l_trans].user_active_byte;

				unsigned int l_bit_offset = trans_state[l_trans].user_bit_offset;

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
								(l_low_bit + l_width - 1) : 7 - l_bit_offset;

				while (l_bits_left > 0) {

					unsigned int l_val = WUSER.read().range(l_high_bit,
							l_low_bit).to_uint();

					l_wuser_ptr[l_active_byte] =
							static_cast<unsigned char>((unsigned int) (l_wuser_ptr[l_active_byte])
									| (l_val << l_bit_offset));

					l_active_byte =
							(l_bit_offset + (l_high_bit - l_low_bit + 1) == 8) ?
									l_active_byte + 1 : l_active_byte;

					l_bits_left = l_bits_left - (l_high_bit - l_low_bit + 1);

					l_low_bit = l_high_bit + 1;
					l_high_bit =
							(l_high_bit + 8) >= l_width ?
									l_width - 1 : l_high_bit + 8;

					l_bit_offset = 0;
				}xtlm_log(1,D_TAB);xtlm_log(1,"WUSER:: ");xtlm_log(1,WUSER.read().to_string(SC_HEX));
				xtlm_log(1,"\n")

				l_bit_offset = (l_width * trans_state[l_trans].beat_num) % 8;

				trans_state[l_trans].user_active_byte = l_active_byte;
				trans_state[l_trans].user_bit_offset = l_bit_offset;
			}
			//Send transaction
			sc_core::sc_time l_t(0, sc_core::SC_NS);

			skt_util->send_beat_data(*l_trans, l_t);
			if ((if_property.getString("PROTOCOL") != "AXI4LITE")) {
				if (WLAST.read()) {
					//Generate log
					m_adaptor_log_util.print_txn_log(l_trans, l_t, xtlm::BEGIN_WDATA_LAST);
					data_queue.pop();
				}
			} else { //AXILITE
				//Generate log
				m_adaptor_log_util.print_txn_log(l_trans, l_t, xtlm::BEGIN_WDATA_LAST);
				data_queue.pop();
			}
		}
	}

	/***********************************************************
	 * 1. SC_METHOD sensitive to event, occur after 1PS of posedge
	 *    of clock.
	 * 2. This method to update Data Channel
	 * 3. Keep Ready low, if Address channel is not sampled yet.
	 *    This is to support DATA_BEFORE_ADDRESS condition in Write.
	 *    Or Keep Ready low, if C-Model has not yet sampled last
	 *    transaction
	 ***********************************************************/
	void update_data_channel() {
		if ((data_queue.empty() || (skt_util->is_data_ch_ready() == false))
				|| m_reset_stage) {
			WREADY.write(0);
		} else {
			WREADY.write(1);
		}
	}

	void sample_resp_channel() {

		if (m_reset_stage) {
			return;
		}

		if (BVALID->read() && BREADY->read()) {
			m_num_trans_in_progress -= 1;

			aximm_payload* l_trans = resp_queue.front();
			trans_state.erase(l_trans);
			l_trans->release();

			resp_queue.pop();
			m_resp_sampled = true;
		}
	}

	/*******************************************************
	 *  1. SC_METHOD sensitive to event, occur after 1PS of
	 *      posedge of clock
	 *  2. This method to update Response Channel
	 ******************************************************/
	void update_resp_channel() {

		if (m_resp_sampled) {
			BVALID.write(0);
		}

		if (resp_queue.empty() && skt_util->is_resp_available()) {
			resp_queue.push((skt_util->get_resp()));
			aximm_payload* l_trans = resp_queue.front();

			xtlm::xtlm_aximm_response_status l_axi_resp =
					l_trans->get_axi_response_status();

			BRESP.write(l_axi_resp);

			if (if_property.getString("PROTOCOL") != "AXI4LITE") {
				BID.write(l_trans->get_axi_id());
			}

			//BUSER
			if (if_property.getString("PROTOCOL") != "AXI4LITE"
					&& (if_property.getLongLong("BUSER_WIDTH") != 0)) {
				if (l_trans->get_buser_ptr() != NULL) {
					unsigned int l_width = if_property.getLongLong(
							"BUSER_WIDTH");
					unsigned char* l_buser_ptr = l_trans->get_buser_ptr();

					unsigned int _l_i;
					m_buser_var = 0;
					for (_l_i = 0; _l_i < (l_width >> 3); _l_i++) {
						m_buser_var.range((_l_i << 3) + 7, _l_i << 3) =
								(unsigned int) l_buser_ptr[_l_i];
					}

					if (l_width % 8) {
						m_buser_var.range((_l_i << 3) + (l_width % 8) - 1,
								(_l_i << 3)) = (unsigned int) l_buser_ptr[_l_i];
					}
					BUSER.write(m_buser_var);
				}
			}

			BVALID.write(1);
			m_adaptor_log_util.print_txn_log(l_trans, SC_ZERO_TIME, xtlm::BEGIN_WRESP);
			m_resp_sampled = false;
		}

	}
};
}

#endif /* TRANSACTOR_XAXIMM_PIN2XTLM_WR_T_H_ */
