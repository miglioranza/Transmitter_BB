
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

#ifndef __XTLM_MM_TARGET_RD_SOCKET_UTIL__
#define __XTLM_MM_TARGET_RD_SOCKET_UTIL__

#include "utils/xtlm_cmnhdr.h"
#ifdef XTLM_DLL
#define XTLM_TARGET_RD_SOCKET_UTIL_EXPORT XTLM_EXPORT
#else
#define XTLM_TARGET_RD_SOCKET_UTIL_EXPORT XTLM_IMPORT
#endif

#include <tlm_utils/peq_with_cb_and_phase.h>
#include "xtlm_interfaces/xtlm_aximm_target_base.h"
#include "xtlm_sockets/xtlm_aximm_target_socket.h"
#include "xtlm_generic_payload/xtlm_aximm_phases.h"
#include "utils/xtlm_logger.h"

namespace xtlm {
struct rd_trg_util_imp;

/*! This class provides Read api's for AXI Slave @ 3 different granularity levels
 *   _______________________________________________________________________
 *   |//TRANSACTION Level                                                   |
 *   | bool is_trans_available();                                           |
 *   | xtlm::aximm_payload* get_transaction();                              |
 *   | xtlm::aximm_payload* peek_transaction();                             |
 *   | bool is_master_ready();                                              | 
 *   | xtlm::aximm_payload* send_data();                                    |
 *   | sc_event transaction_available, data_sampled                         |
 *   |______________________________________________________________________|
 *
 *   _______________________________________________________________________
 *   |//CHANNEL Level                                                       |
 *   | bool is_addr_ch_available();                                         |
 *   | xtlm::aximm_payload* get_addr_ch();                                  |
 *   | xtlm::aximm_payload* peek_addr_ch();                                 |
 *   | bool is_data_ch_ready();                                             | 
 *   | xtlm::aximm_payload* send_data_ch();                                 |
 *   | sc_event addr_available, data_sampled                                |
 *   |______________________________________________________________________|
 *
 *   _______________________________________________________________________
 *   |//HANDSHAKE Level                                                     |
 *   | bool is_addr_ch_available();                                         |
 *   | xtlm::aximm_payload* get_addr_ch();                                  |
 *   | xtlm::aximm_payload* peek_addr_ch();                                 |
 *   | bool is_data_ch_ready();                                             | 
 *   | xtlm::aximm_payload* send_beat_data();                               |
 *   | sc_event addr_available, beat_sampled, last_beat_sampled             |
 *   |______________________________________________________________________|
 */
class XTLM_TARGET_RD_SOCKET_UTIL_EXPORT xtlm_aximm_target_rd_socket_util: public sc_core::sc_module,
		public xtlm_aximm_target_base {
public:
	xtlm_aximm_target_rd_socket_util(sc_core::sc_module_name p_name,
			aximm::granularity g_hint, int width_p);

	virtual ~xtlm_aximm_target_rd_socket_util();

	//! Checks if there is any read request
	bool is_trans_available();

	//! Get read request payload and update phase
	xtlm::aximm_payload* get_transaction();

	//! Get read request payload and don't update phase
	xtlm::aximm_payload* peek_transaction();

	//! Checks if master is ready to accept read response
	bool is_master_ready();

	/*! Api to send a read data to master
	 *  @param trans aximm_payload containing read data
	 *  @param delay annotated time
	 */
	virtual void send_data(xtlm::aximm_payload& trans, sc_core::sc_time& delay);

	//! Checks if there is any read address
	bool is_addr_ch_available();

	//! Get read address payload and update phase
	xtlm::aximm_payload* get_addr_ch();

	//! Get read address payload and don't update phase
	xtlm::aximm_payload* peek_addr_ch();

	//! Checks if master is ready to accept read data
	bool is_data_ch_ready();

	/*! Api to send a read data to master
	 *  @param trans aximm_payload containing read data
	 *  @param delay annotated time
	 */
	virtual void send_data_ch(xtlm::aximm_payload&, sc_core::sc_time&);

	/*! Api to send a read data to master beat by beat
	 *  @param trans aximm_payload containing read beat data
	 *  @param delay annotated time
	 */
	virtual void send_beat_data(xtlm::aximm_payload&, sc_core::sc_time&);

	//! TLM farward interface implementation
	tlm::tlm_sync_enum nb_transport_fw(xtlm::aximm_payload& trans,
			tlm::tlm_phase& phase, sc_core::sc_time& delay);

	//! Transport Debug Call
	unsigned int transport_dbg(xtlm::aximm_payload& trans) {
		return transport_dbg_cb(trans);
	}

	//! Call Back to implement transport debug
	virtual unsigned int transport_dbg_cb(xtlm::aximm_payload& trans) {
		//throw error
		//TODO::Replace with error
		//ERROR_LOG(logger, "No transport_dbg call registered\n");
		return 0;
	}

	//! b_transport call
	void b_transport(xtlm::aximm_payload& trans, sc_core::sc_time& delay) {
		b_transport_cb(trans, delay);
	}

	//! Callback function to implement b_transport
	virtual void b_transport_cb(xtlm::aximm_payload& trans,
			sc_core::sc_time& delay);

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

	xtlm_aximm_target_socket rd_socket;
	sc_core::sc_event addr_available, data_sampled, beat_sampled,
			last_beat_sampled, transaction_available;

private:

	void peq_cb(xtlm::aximm_payload& trans, const tlm::tlm_phase& phase);
	tlm_utils::peq_with_cb_and_phase<xtlm_aximm_target_rd_socket_util,
			xtlm_aximm_protocol_types> m_peq;
	friend class rd_trg_util_imp;
	rd_trg_util_imp* p_imp;
};
}
#endif


