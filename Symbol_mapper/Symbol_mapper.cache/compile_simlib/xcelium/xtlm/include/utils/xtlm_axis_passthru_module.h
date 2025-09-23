
// (c) Copyright(C) 2013 - 2019 by  Xilinx, Inc. All rights reserved.
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


#ifndef XTLM_AXIS_PASSTHRU_MODULE_H_
#define XTLM_AXIS_PASSTHRU_MODULE_H_
#ifdef XTLM_DLL
#define XTLM_AXIS_PASSTHROUGH_EXPORT XTLM_EXPORT
#else
#define XTLM_AXIS_PASSTHROUGH_EXPORT XTLM_IMPORT
#endif
#include <sstream>
#include <map>

#include "xtlm_interfaces/xtlm_axis_initiator_base.h"
#include "xtlm_interfaces/xtlm_axis_target_base.h"
#include "xtlm_sockets/xtlm_axis_initiator_socket.h"
#include "xtlm_sockets/xtlm_axis_target_socket.h"
#include "xtlm_generic_payload/axis_payload.h"
#include "xtlm_generic_payload/xtlm_axis_phases.h"

namespace xtlm {

class XTLM_AXIS_PASSTHROUGH_EXPORT xtlm_axis_passthru_module: public sc_core::sc_module,
		public xtlm_axis_target_base,
		public xtlm_axis_initiator_base {
public:
	SC_HAS_PROCESS(xtlm_axis_passthru_module);
	xtlm_axis_passthru_module(sc_core::sc_module_name, unsigned int width = 32);

	//forward, backward interface functions
	tlm::tlm_sync_enum nb_transport_fw(axis_payload&, tlm::tlm_phase&,
			sc_core::sc_time&);
	tlm::tlm_sync_enum nb_transport_bw(axis_payload&, tlm::tlm_phase&,
			sc_core::sc_time&);
	bool get_direct_mem_ptr(axis_payload &, tlm::tlm_dmi &);
	void invalidate_direct_mem_ptr(sc_dt::uint64, sc_dt::uint64);
	~xtlm_axis_passthru_module();

	//xtlm target and initiator sockets
	xtlm_axis_target_socket *target_socket;
	xtlm_axis_initiator_socket *initiator_socket;

private:
	void b_transport(xtlm::axis_payload& trans, sc_core::sc_time& delay);
	unsigned int transport_dbg(xtlm::axis_payload& trans);

};
}




#endif /* XTLM_AXIS_PASSTHRU_MODULE_H_ */
