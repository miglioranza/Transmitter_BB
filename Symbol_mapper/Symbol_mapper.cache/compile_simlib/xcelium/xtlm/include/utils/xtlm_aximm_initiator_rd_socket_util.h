
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

#ifndef __XTLM_INITIATOR_RD_SOCKET_UTIL__
#define __XTLM_INITIATOR_RD_SOCKET_UTIL__

#include "utils/xtlm_cmnhdr.h"
#ifdef XTLM_DLL
#define XTLM_INITIATOR_RD_SOCKET_UTIL_EXPORT XTLM_EXPORT
#else
#define XTLM_INITIATOR_RD_SOCKET_UTIL_EXPORT XTLM_IMPORT
#endif
#include <tlm_utils/peq_with_cb_and_phase.h>
#include "xtlm_interfaces/xtlm_aximm_initiator_base.h"
#include "xtlm_generic_payload/aximm_payload.h"

#include "xtlm_sockets/xtlm_aximm_initiator_socket.h"
#include "xtlm_generic_payload/xtlm_aximm_phases.h"

namespace xtlm {

struct rd_ini_util_imp;

/*! This class provides Read api's for AXI Master @ 3 different granularity levels
 *   _______________________________________________________________________
 *   |//TRANSACTION Level                                                   |
 *   | bool is_slave_ready();                                               |
 *   | void send_transaction(xtlm::aximm_payload&, sc_core::sc_time&);      |
 *   | bool is_data_available();                                            | 
 *   | xtlm::aximm_payload* get_data();                                     |
 *   | xtlm::aximm_payload* peek_data();                                    |
 *   | sc_event transaction_sampled, data_available                         |
 *   |______________________________________________________________________|
 *
 *   _______________________________________________________________________
 *   |//CHANNEL Level                                                       |
 *   | bool is_addr_ch_ready();                                             |
 *   | void send_addr_ch(xtlm::aximm_payload&, sc_core::sc_time&);          |
 *   | bool is_data_ch_available();                                         | 
 *   | xtlm::aximm_payload* get_data_ch();                                  |
 *   | xtlm::aximm_payload* peek_data_ch();                                 |
 *   | sc_event addr_sampled, data_available                                |
 *   |______________________________________________________________________|
 *
 *   _______________________________________________________________________
 *   |//HANDSHAKE Level                                                     |
 *   | bool is_addr_ch_ready();                                             |
 *   | void send_addr_ch(xtlm::aximm_payload&, sc_core::sc_time&);          |
 *   | bool is_beat_available();                                            | 
 *   | xtlm::aximm_payload* get_beat_data();                                |
 *   | xtlm::aximm_payload* peek_data_beat();                               |
 *   | bool is_last_beat();                                                 |
 *   | sc_event addr_sampled, beat_available, last_beat_available           |
 *   |______________________________________________________________________|
 */
class XTLM_INITIATOR_RD_SOCKET_UTIL_EXPORT xtlm_aximm_initiator_rd_socket_util: public sc_core::sc_module,
		public xtlm_aximm_initiator_base {
public:
	xtlm_aximm_initiator_rd_socket_util(sc_core::sc_module_name p_name,
			aximm::granularity g_hint, int width_p);

	~xtlm_aximm_initiator_rd_socket_util();

	//! Checks if slave is ready to accept Read Addr
	bool is_slave_ready();

	/*! Api to send a read request to slave
	 *  @param trans aximm_payload containing request details Addr, data length etc...
	 *  @param delay annotated time
	 */
	void send_transaction(xtlm::aximm_payload& trans, sc_core::sc_time& delay);

	//! Checks if data is available to read
	bool is_data_available();

	//! Reads the complete data/read response and update phases
	xtlm::aximm_payload* get_data();

	//! Reads the complete data/read response and don't update phases
	xtlm::aximm_payload* peek_data();

	//! Checks if slave is ready to accept Read Addr
	bool is_addr_ch_ready();

	/*! Api to send a read Addr along with control data to slave
	 *  @param trans aximm_payload containing request details Addr, data length etc...
	 *  @param delay annotated time
	 */
	void send_addr_ch(xtlm::aximm_payload& trans, sc_core::sc_time& delay);

	//! Reads the complete data/read response and updates phases
	xtlm::aximm_payload* get_data_ch();

	//! Reads the complete data/read response and don't updates phases
	xtlm::aximm_payload* peek_data_ch();

	//! Checks if data is available to read
	bool is_data_ch_available();

	//! Checks if beat data is available to read
	bool is_beat_available();

	//! Reads the beat by beat data and updates phases
	xtlm::aximm_payload* get_beat_data();

	//! Reads the beat by beat data and don't updates phases
	xtlm::aximm_payload* peek_beat_data();

	//! To check if last beat is available
	bool is_last_beat();

	//! SystemC events to notify the data availability & Addr channel availablity
	sc_core::sc_event data_available, beat_available, last_beat_available,
			addr_sampled, transaction_sampled;

	//! TLM backward interface implementation
	tlm::tlm_sync_enum
	nb_transport_bw(xtlm::aximm_payload& trans, tlm::tlm_phase& phase,
			sc_core::sc_time& delay);

	//! Transport dbg call
	unsigned int transport_dbg(xtlm::aximm_payload& trans);

	//! b_transport call
	void b_transport(xtlm::aximm_payload& trans, sc_core::sc_time& delay);

	/*! API to reset state machine
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

	xtlm_aximm_initiator_socket rd_socket;

private:
	tlm_utils::peq_with_cb_and_phase<xtlm_aximm_initiator_rd_socket_util,
			xtlm_aximm_protocol_types> m_peq;

	void peq_cb(xtlm::aximm_payload& trans, const tlm::tlm_phase& phase);

	friend class rd_ini_util_imp;
	rd_ini_util_imp* p_imp;
};
}
#endif


