
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

#ifndef XTLM_IFS_H
#define XTLM_IFS_H
#include "utils/xtlm_cmnhdr.h"
#include "xtlm_interfaces/xtlm_aximm_protocol_type.h"
namespace xtlm {
template<typename TYPES>
class xtlm_fw_transport_if: public virtual sc_core::sc_interface {
public:
	virtual void b_transport(int socket_id,
			typename TYPES::tlm_payload_type & trans, sc_core::sc_time& t) = 0;
	virtual unsigned int transport_dbg(int socket_id,
			typename TYPES::tlm_payload_type & trans) = 0;
	virtual bool get_direct_mem_ptr(int socket_id,
			typename TYPES::tlm_payload_type & trans,
			tlm::tlm_dmi& dmi_data) = 0;
	virtual tlm::tlm_sync_enum
	nb_transport_fw(int socket_id, typename TYPES::tlm_payload_type & trans,
			typename TYPES::tlm_phase_type & phase, sc_core::sc_time & t) = 0;
protected:
private:
};
template<typename TYPES >
class xtlm_bw_transport_if: public virtual sc_core::sc_interface {
public:
	virtual void
	invalidate_direct_mem_ptr(int socket_id, sc_dt::uint64 start_range,
			sc_dt::uint64 end_range) = 0;

	virtual tlm::tlm_sync_enum
	nb_transport_bw(int socket_id, typename TYPES::tlm_payload_type & trans,
			typename TYPES::tlm_phase_type & phase, sc_core::sc_time & t) = 0;
private:
};
}
#endif




