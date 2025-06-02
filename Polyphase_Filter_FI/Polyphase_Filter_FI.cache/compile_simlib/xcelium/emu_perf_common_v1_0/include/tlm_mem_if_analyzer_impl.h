
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
#include "emdiagcore.h"

namespace ns_tlm_mem_if_analyzer
{

/**
 * @brief Implementation of Memory Interface Analyzer
 */
class tlm_mem_if_analyzer_impl: public sc_module,
		public xtlm::xtlm_aximm_monitor_base
{
public:
	SC_HAS_PROCESS(tlm_mem_if_analyzer_impl);

	xtlm::xtlm_aximm_monitor_socket* rd_monitor; //!< Read Monitor
	xtlm::xtlm_aximm_monitor_socket* wr_monitor; //!< Write Monitor

	/**
	 * @brief Constructor
	 * @param p_name is the name of the module
	 * @param ppts is model properties
	 */
	tlm_mem_if_analyzer_impl(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& ppts);

	/**
	 * @brief Destructor
	 */
	~tlm_mem_if_analyzer_impl();

	/**
	 * @brief This function is used to calculate Statistics
	 */
	void end_of_simulation();

private:
	/**
	 * @brief Non-blocking transport call
	 * @param payload XTLM AXI MM payload
	 * @param phase is phase of AXI
	 * @param delay is delay of the transaction
	 */
	void register_nb_call(const xtlm::aximm_payload& payload,
			const tlm::tlm_phase& phase, const sc_core::sc_time& delay);
	/**
	 * @brief Non-blocking Return transport call
	 * @param payload XTLM AXI MM payload
	 * @param phase is phase of AXI
	 * @param delay is delay of the transaction
	 * @param status is status of XTLM
	 */
	void register_nb_return_call(const xtlm::aximm_payload& payload,
			const tlm::tlm_phase& phase, const sc_core::sc_time& delay,
			const tlm::tlm_sync_enum& status);

	/**
	 * @brief Blocking transport call
	 * @param payload XTLM AXI MM payload
	 * @param delay is delay of the transaction
	 */
	void register_b_call(const xtlm::aximm_payload& payload,
			const sc_core::sc_time& delay);

	/**
	 * @brief Blocking transport Return call
	 * @param payload XTLM AXI MM payload
	 * @param delay is delay of the transaction
	 */
	void register_b_return_call(const xtlm::aximm_payload& payload,
			const sc_core::sc_time& delay);

	void register_transport_dbg_call(const xtlm::aximm_payload& payload);
	void register_transport_dbg_return_call(const xtlm::aximm_payload& payload);
	/**
	 * @brief
	 * @param payload
	 */
	void start_rd_txn(const xtlm::aximm_payload& payload);
	void start_wr_txn(const xtlm::aximm_payload& payload);
	void end_rd_txn(const xtlm::aximm_payload& payload);
	void end_wr_txn(const xtlm::aximm_payload& payload);

	typedef std::pair<uint64_t, uint64_t> adr_range;

	/**
	 * @brief Function to merge vector pairs for given vector & address range
	 * @param p_vector is vector on which processing done
	 * @param buffer_range is range to be merged to vector
	 * @return true, if address range is updated , false if it is duplicate
	 */
	bool merge_vector_pair(std::vector<adr_range*> * p_vector,
			adr_range* buffer_range);

	void add_to_vector_pair(std::vector<adr_range*> * p_vector,
			adr_range* buffer_range);

	bool remove_vector_pair(std::vector<adr_range*> * p_vector,
			adr_range* buffer_range);

	enum MEM_ACCESS_TYPE
	{
		VALID_ACCESS, UNALLOCATED_ACCESS, EXCEEDED_BUFFER_BOUNDARY
	};

	/**
	 * @brief Function to check validity of  memory access
	 * 			Checks- Unallocated Mem Access & Access beyond buffer boundary
	 * @param mem_range is the range of memory locations being accessed
	 * @return returns memory access type
	 */
	MEM_ACCESS_TYPE get_mem_access_type(const xtlm::aximm_payload& payload);

	/**
	 * @brief Function to calculate Statistics
	 */
	void calculate_stats();

	void delete_vector(std::vector<adr_range*>* p_vector);

private:
	std::vector<adr_range*> m_allocated_mem;
	std::vector<adr_range*> m_wrote_mem;
	std::vector<adr_range*> m_read_mem;
	std::vector<adr_range*> m_wr_not_followed_by_read;

	xsc::common_cpp::report_handler m_logger;
};

}  // namespace ns_tlm_mem_if_analyzer
