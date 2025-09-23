
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

#ifndef _XTLM_STREAM_INITIATOR_SOCKET_UTIL_H_
#define _XTLM_STREAM_INITIATOR_SOCKET_UTIL_H_
#include "utils/xtlm_cmnhdr.h"
#ifdef XTLM_DLL
#define XTLM_INITIATOR_SOCKET_UTIL_EXPORT XTLM_EXPORT
#else
#define XTLM_INITIATOR_SOCKET_UTIL_EXPORT XTLM_IMPORT
#endif
#include "xtlm_generic_payload/axis_payload.h"
#include "xtlm_interfaces/xtlm_axis_initiator_base.h"
#include "tlm_utils/peq_with_cb_and_phase.h"
#include "xtlm_sockets/xtlm_axis_initiator_socket.h"
namespace xtlm {

class xtlm_axis_initiator_socket_util_imp;
class XTLM_INITIATOR_SOCKET_UTIL_EXPORT xtlm_axis_initiator_socket_util: public sc_core::sc_module,
		public xtlm_axis_initiator_base {
public:
	xtlm_axis_initiator_socket_util(sc_core::sc_module_name p_name,
			xtlm::axis::granularity g_hint, int width_p);
	~xtlm_axis_initiator_socket_util();

	/*!
	 * **********************************
	 * To check if last transaction is
	 * completed
	 ***********************************/
	bool is_transfer_done();

	/*!
	 * ***********************************
	 * To send data to connected module.
	 * Return value true indicates
	 * if transfer finished
	 ************************************/
	bool transport(axis_payload* l_trans, sc_core::sc_time delay =
			sc_core::SC_ZERO_TIME);

	/*!
	 * ***********************************
	 * Event on finish of each transfer
	 ************************************/
	sc_core::sc_event transfer_done;

	/*! API to reset state machine
	 *  This will reset the state machine and reset the state of
	 *  all variables to default value
	 */
	void reset();

	tlm::tlm_sync_enum nb_transport_bw(xtlm::axis_payload& trans,
			tlm::tlm_phase& phase, sc_core::sc_time& delay);

	//! Transport dbg call
	unsigned int transport_dbg(xtlm::axis_payload& trans);

	//! b_transport call
	void b_transport(xtlm::axis_payload& trans, sc_core::sc_time& delay);
	void enable_logs(const unsigned int& level);

	xtlm_axis_initiator_socket stream_socket;
	tlm_utils::peq_with_cb_and_phase<xtlm_axis_initiator_socket_util,
			xtlm_axis_protocol_types> m_peq;
private:
	void peq_cb(xtlm::axis_payload& trans, const tlm::tlm_phase& phase);
	xtlm_axis_initiator_socket_util_imp* p_imp;
};
}

#endif /* _XTLM_STREAM_INITIATOR_SOCKET_UTIL_H_ */


