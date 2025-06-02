
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

#ifndef XTLM
#define XTLM

//common_cpp
#include "report_handler.h"
#include "properties.h"

//utils
#include "utils/xtlm_cmnhdr.h"
#include "utils/debug.h"

//xtlm_adaptors
#include "xtlm_adaptors/xaxi_decls.h"

//xtlm_generic_payload
#include "xtlm_generic_payload/xtlm_axis_phases.h"
#include "xtlm_generic_payload/xtlm_aximm_phases.h"
#include "xtlm_generic_payload/aximm_payload.h"
#include "xtlm_generic_payload/xtlm_extension.h"
#include "xtlm_generic_payload/aximm_decls.h"
#include "xtlm_interfaces/xtlm_fw_bw_ifs.h"
#include "xtlm_interfaces/xtlm_aximm_initiator_base.h"
#include "xtlm_interfaces/xtlm_aximm_initiator_tagged_base.h"
#include "xtlm_interfaces/xtlm_aximm_target_tagged_base.h"
#include "xtlm_interfaces/xtlm_aximm_target_base.h"
#include "xtlm_generic_payload/axis_payload.h"
#include "xtlm_interfaces/xtlm_axis_initiator_base.h"
#include "xtlm_interfaces/xtlm_axis_target_base.h"
#include "xtlm_interfaces/xtlm_axis_mem_manager.h"
#include "xtlm_interfaces/xtlm_axis_mm_interface.h"
#include "xtlm_interfaces/xtlm_axis_protocol_type.h"
#include "xtlm_interfaces/xtlm_aximm_mem_manager.h"
#include "xtlm_interfaces/xtlm_aximm_mm_interface.h"
#include "xtlm_interfaces/xtlm_aximm_simple_initiator_socket_tagged_base.h"
#include "xtlm_interfaces/xtlm_aximm_passthrough_target_socket_tagged_base.h"
#include "xtlm_interfaces/xtlm_axis_simple_initiator_socket_tagged_base.h"
#include "xtlm_interfaces/xtlm_axis_passthrough_target_socket_tagged_base.h"
#include "xtlm_interfaces/xtlm_aximm_monitor_base.h"
#include "xtlm_interfaces/xtlm_axis_monitor_base.h"

//xtlm_sockets
#include "xtlm_sockets/xtlm_aximm_initiator_socket.h"
#include "xtlm_sockets/xtlm_axis_initiator_socket.h"
#include "xtlm_sockets/xtlm_aximm_target_socket.h"
#include "xtlm_sockets/xtlm_axis_target_socket.h"
#include "xtlm_sockets/xtlm_aximm_simple_initiator_socket_tagged.h"
#include "xtlm_sockets/xtlm_aximm_passthrough_target_socket_tagged.h"
#include "xtlm_sockets/xtlm_axis_simple_initiator_socket_tagged.h"
#include "xtlm_sockets/xtlm_axis_passthrough_target_socket_tagged.h"
#include "xtlm_sockets/xtlm_aximm_monitor_socket.h"
#include "xtlm_sockets/xtlm_aximm_sockets_base.h"
#include "xtlm_sockets/xtlm_axis_monitor_socket.h"
#include "xtlm_sockets/xtlm_axis_sockets_base.h"

//utils
#include "utils/xtlm_aximm_initiator_rd_socket_util.h"
#include "utils/xtlm_aximm_initiator_wr_socket_util.h"
#include "utils/xtlm_aximm_target_rd_socket_util.h"
#include "utils/xtlm_aximm_target_wr_socket_util.h"
#include "utils/xtlm_axis_initiator_socket_util.h"
#include "utils/xtlm_axis_target_socket_util.h"
#include "utils/xtlm_logger.h"
#include "utils/xsc_sim_manager.h"
#include "utils/xsc_sim_conn_base.h"
#include "utils/scalar2vector_converter.h"
#include "utils/vector2scalar_converter.h"
#include "utils/vector2vector_converter.h"
#include "utils/xtlm_aximm_tracer.h"
#include "utils/xtlm_log_helper.h"
#include "utils/xsc_stub_port.h"
#include "utils/xsc_initiator_socket.h"
#include "utils/xsc_target_socket.h"
#include "utils/xtlm_aximm_master_if.h"
#include "utils/xtlm_aximm_slave_if.h"
#include "utils/xtlm_axis_master_if.h"
#include "utils/xtlm_axis_slave_if.h"

//xtlm_adaptors
#include "xtlm_adaptors/xaximm_pin2xtlm_t.h"
#include "xtlm_adaptors/xaximm_pin2xtlm_rd_t.h"
#include "xtlm_adaptors/xaximm_pin2xtlm_wr_t.h"
#include "xtlm_adaptors/xaximm_xtlm2pin_t.h"
#include "xtlm_adaptors/xaximm_xtlm2pin_rd_t.h"
#include "xtlm_adaptors/xaximm_xtlm2pin_wr_t.h"
#include "xtlm_adaptors/xaxis_xtlm2pin_t.h"
#include "xtlm_adaptors/xaxis_pin2xtlm_t.h"
#include "xtlm_adaptors/xaxis_monitor_t.h"
#include "xtlm_adaptors/xaximm_tlm2xtlm_t.h"
#include "xtlm_adaptors/xaximm_xtlm2tlm_t.h"
#include "xtlm_adaptors/xaximm_monitor_t.h"
#include "xtlm_adaptors/xaximm_monitor_rd_t.h"
#include "xtlm_adaptors/xaximm_monitor_wr_t.h"

#include "utils/xsc_split.h"
#include "utils/xsc_concatenator.h"

#endif

