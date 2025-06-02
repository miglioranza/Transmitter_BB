
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

#pragma once

#include "xtlm.h"
#include <queue>

namespace xtlm
{
/**
 * @class class to handle b_transport & transport_dbg for Read Channel
 */
class xtlm_aximm_targ_rd_b_util: public xtlm_aximm_target_rd_socket_util
{
public:
	xtlm_aximm_targ_rd_b_util(sc_core::sc_module_name p_name,
			aximm::granularity g_hint, int width,
			xtlm_aximm_initiator_rd_socket_util* init_util);

	void b_transport_cb(xtlm::aximm_payload& trans, sc_core::sc_time& delay);

	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans);

private:
	xtlm::xtlm_aximm_initiator_rd_socket_util* m_init_util;
};

/**
 * @class : class to handle b_transport & transport_dbg for Write channel
 */
class xtlm_aximm_targ_wr_b_util: public xtlm_aximm_target_wr_socket_util
{
public:
	xtlm_aximm_targ_wr_b_util(sc_core::sc_module_name p_name,
			aximm::granularity g_hint, int width,
			xtlm_aximm_initiator_wr_socket_util* init_util);

	void b_transport_cb(xtlm::aximm_payload& trans, sc_core::sc_time& delay);

	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans);

private:
	xtlm::xtlm_aximm_initiator_wr_socket_util* m_init_util;
};

/**
 * @class : Class to buffer the transactions.
 * @brief In the current implementation buffer modules accepts all the
 * transactions from target socket.
 * Module will initiates transactions as soon as respective channels becomes free
 */
class xtlm_aximm_fifo: public sc_module
{
public:
	xtlm::xtlm_aximm_target_socket *in_rd_socket;
	xtlm::xtlm_aximm_target_socket *in_wr_socket;
	xtlm::xtlm_aximm_initiator_socket *out_rd_socket;
	xtlm::xtlm_aximm_initiator_socket *out_wr_socket;

	SC_HAS_PROCESS(xtlm_aximm_fifo);

	/**
	 * @brief Constructor
	 * @param name is module instnace name
	 */
	xtlm_aximm_fifo(const sc_core::sc_module_name &name);

	/**
	 * @brief Destructor
	 */
	~xtlm_aximm_fifo();

private:
	xtlm::xtlm_aximm_targ_rd_b_util* in_rd_socket_util;
	xtlm::xtlm_aximm_targ_wr_b_util* in_wr_socket_util;
	xtlm::xtlm_aximm_initiator_rd_socket_util* out_rd_socket_util;
	xtlm::xtlm_aximm_initiator_wr_socket_util* out_wr_socket_util;
	std::queue<xtlm::aximm_payload*> rd_request_queue;
	std::queue<xtlm::aximm_payload*> wr_request_queue;
	std::queue<xtlm::aximm_payload*> rd_response_queue;
	std::queue<xtlm::aximm_payload*> wr_response_queue;

	/**
	 * @brief Buffers Read Responses
	 */
	void read_response_process();

	/**
	 * @brief Buffers Write responses
	 */
	void write_response_process();

	/**
	 * @brief Buffers read request
	 */
	void read_request_process();

	/**
	 * @brief Buffers write request
	 */
	void write_request_process();
};

}
