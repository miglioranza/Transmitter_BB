
// (c) Copyright(C) 2013 - 2018 by Xilinx, Inc. All rights reserved.
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

#ifndef __XTLM_INITIATOR_WR_SKT_UTIL__
#define __XTLM_INITIATOR_WR_SKT_UTIL__

#include "utils/xtlm_cmnhdr.h"
#ifdef XTLM_DLL
#define XTLM_INITIATOR_WR_SOCKET_UTIL_EXPORT XTLM_EXPORT
#else
#define XTLM_INITIATOR_WR_SOCKET_UTIL_EXPORT XTLM_IMPORT
#endif
#include <tlm_utils/peq_with_cb_and_phase.h>
#include "xtlm_interfaces/xtlm_aximm_initiator_base.h"
#include "xtlm_sockets/xtlm_aximm_initiator_socket.h"
#include "xtlm_generic_payload/xtlm_aximm_phases.h"

namespace xtlm {
struct wr_ini_util_imp;

/*! This class provides Write api's for AXI Master @ 3 different granularity levels
 *   _______________________________________________________________________
 *   |//TRANSACTION Level                                                   |
 *   | bool is_slave_ready();                                               |
 *   | void send_transaction(xtlm::aximm_payload&, sc_core::sc_time&);      |
 *   | bool is_resp_available();                                            | 
 *   | xtlm::aximm_payload* get_resp();                                     |
 *   | xtlm::aximm_payload* peek_resp();                                    |
 *   | sc_events transaction_sampled, resp_available                        |
 *   |______________________________________________________________________|
 *
 *   _______________________________________________________________________
 *   |//CHANNEL Level                                                       |
 *   | bool is_addr_ch_ready();                                             |
 *   | void send_addr_ch(xtlm::aximm_payload&, sc_core::sc_time&);          |
 *   | bool is_data_ch_ready();                                             | 
 *   | xtlm::aximm_payload* send_data_ch();                                 |
 *   | bool is_resp_available();                                            | 
 *   | xtlm::aximm_payload* get_resp();                                     |
 *   | xtlm::aximm_payload* peek_resp();                                    |
 *   | sc_events addr_sampled, data_sampled, resp_available                 |
 *   |______________________________________________________________________|
 *
 *   _______________________________________________________________________
 *   |//HANDSHAKE Level                                                     |
 *   | bool is_addr_ch_ready();                                             |
 *   | void send_addr_ch(xtlm::aximm_payload&, sc_core::sc_time&);          |
 *   | bool is_data_ch_ready();                                             | 
 *   | xtlm::aximm_payload* send_beat_data();                               |
 *   | bool is_resp_available();                                            | 
 *   | xtlm::aximm_payload* get_resp();                                     |
 *   | xtlm::aximm_payload* peek_resp();                                    |
 *   | sc_events addr_sampled, beat_sampled, last_beat_sampled,             |
 *   |  resp_available                                                      |
 *   |______________________________________________________________________|
 */
class XTLM_INITIATOR_WR_SOCKET_UTIL_EXPORT xtlm_aximm_initiator_wr_socket_util: public sc_core::sc_module,
		public xtlm_aximm_initiator_base {
public:
	xtlm_aximm_initiator_wr_socket_util(sc_core::sc_module_name p_name,
			aximm::granularity val, int width_p);

	~xtlm_aximm_initiator_wr_socket_util();

	//! Checks if slave is ready to accept Write Addr
	bool is_slave_ready();

	/*! Api to send a write request to slave
	 *  @param trans aximm_payload containing request details Addr, write data etc...
	 *  @param delay annotated time
	 */
	void send_transaction(xtlm::aximm_payload&, sc_core::sc_time&);

	//! Checks if write response is available
	bool is_resp_available();

	//! Reads the write response and update phases
	xtlm::aximm_payload* get_resp();

	//! Reads the write response and don't update phases
	xtlm::aximm_payload* peek_resp();

	//! Checks if slave is ready to accept write Addr
	bool is_addr_ch_ready();

	//! Checks if slave is ready to accept write data
	bool is_data_ch_ready();

	/*! Api to send a write Addr along with control data to slave
	 *  @param trans aximm_payload containing request details Addr, data length etc...
	 *  @param delay annotated time
	 */
	void send_addr_ch(xtlm::aximm_payload&, sc_core::sc_time&);

	/*! Api to send a write data to slave
	 *  @param trans aximm_payload containing write data
	 *  @param delay annotated time
	 */
	void send_data_ch(xtlm::aximm_payload&, sc_core::sc_time&);

	//! Api to send write data beat by beat
	void send_beat_data(xtlm::aximm_payload&, sc_core::sc_time&);

	//! SystemC events to notify events on write data/addr/resp channels
	sc_core::sc_event resp_available, addr_sampled, data_sampled, beat_sampled,
			last_beat_sampled, transaction_sampled;

	//! TLM backward interface implementation
	tlm::tlm_sync_enum nb_transport_bw(xtlm::aximm_payload& trans,
			tlm::tlm_phase& phase, sc_core::sc_time& time);

	//! Transport debug call
	unsigned int transport_dbg(xtlm::aximm_payload& trans);

	//! b_transport call
	void b_transport(xtlm::aximm_payload& trans, sc_core::sc_time& delay);

	/*!  API to reset state machine
	 *  This will reset the state machine and reset the state of
	 *  all variables to default value
	 */
	void reset();

	/*! To enable tracing logs for communication
	 *  between sockets
	 *  level = 0 : Disabled
	 *  level = 1 : Basic information
	 */
	void enable_logs(const unsigned int& level);

	xtlm_aximm_initiator_socket wr_socket;

private:
	void peq_cb(xtlm::aximm_payload&, const tlm::tlm_phase&);
	tlm_utils::peq_with_cb_and_phase<xtlm_aximm_initiator_wr_socket_util,
			xtlm_aximm_protocol_types> m_peq;

	wr_ini_util_imp* p_imp;
	friend class wr_ini_util_imp;
};
}
#endif


