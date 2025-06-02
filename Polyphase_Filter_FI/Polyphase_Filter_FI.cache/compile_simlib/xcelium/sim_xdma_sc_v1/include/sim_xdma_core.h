
/*  (c) Copyright 2014 - 2019 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.                       */

#ifndef SIM_XDMA_CORE_H_
#define SIM_XDMA_CORE_H_

#include "xtlm.h"
#include <fstream>
#include <list>
#include <sys/types.h>
#include "xcl_api.h"
#include "sk_client.h"
#include "sim_xdma_helper.h"
#include "sim_xdma_base.h"
#include "report_handler.h"

namespace xdma {
enum xdma_intf {
	XDMA_CTRL = 0, XDMA_MM = 1, XDMA_MAUX = 2, XDMA_MSTR = 3, XDMA_SSTR = 4
};

typedef struct xdma_itf_prop {
	uint64_t addr_width;
	uint64_t data_width;
	uint64_t user_width;
	uint64_t id_width;
	bool support_burst;
	bool support_backdoor_access;
	bool enable;
	xdma_itf_prop() {
		addr_width = 32;
		data_width = 32;
		user_width = 32;
		id_width = 32;
		support_burst = true;
		support_backdoor_access = true;
		enable = true;
	}
} xdma_itf_prop_type;
}
class sim_xdma_core: public sc_core::sc_module, public sim_xdma_base {
public:
	sim_xdma_core(sc_core::sc_module_name, xsc::common_cpp::properties&,
			xsc::common_cpp::report_handler *);
	//Exposed Interfaces
	xtlm::xtlm_aximm_initiator_socket* initiator_ctrl_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* initiator_ctrl_wr_socket;

	xtlm::xtlm_aximm_initiator_socket* initiator_mm_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* initiator_mm_wr_socket;

	xtlm::xtlm_aximm_initiator_socket* initiator_mm_aux_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* initiator_mm_aux_wr_socket;

	xtlm::xtlm_axis_initiator_socket* initiator_stm_stream_socket;
	xtlm::xtlm_axis_target_socket* target_stm_stream_socket;SC_HAS_PROCESS(sim_xdma_core);
	sc_core::sc_in_clk m_axi_mm_aclk;
	sc_core::sc_in_clk m_axictrl_aclk;
	sc_core::sc_in<bool> m_axictrl_aresetn;
	sc_core::sc_in<bool> m_aximm_aresetn;
	sc_core::sc_in_clk m_aximm_aux_aclk;
	sc_core::sc_in<bool> m_aximm_aux_aresetn;
	sc_core::sc_in_clk m_axis_aclk;
	sc_core::sc_in<bool> m_axis_aresetn;
	sc_core::sc_in_clk s_axis_aclk;
	sc_core::sc_in<bool> s_axis_aresetn;
	// Callbacks to be invoked by underlying handler
	bool xclWrite(AddressSpace space, uint64_t offset, const void *hostBuf,
			size_t size);
	bool xclRead(AddressSpace space, uint64_t offset, void *hostBuf,
			size_t size);
	void ddrRead(unsigned int ddrNum, uint64_t offset, void* dest,
			unsigned int size);

	~sim_xdma_core();
private:

	xsc::common_cpp::report_handler* m_report_handler;
	xtlm::xtlm_aximm_initiator_rd_socket_util* ini_ctrl_rd_socket_util;
	xtlm::xtlm_aximm_initiator_wr_socket_util* ini_ctrl_wr_socket_util;
	xtlm::xtlm_aximm_initiator_rd_socket_util* ini_mm_rd_socket_util;
	xtlm::xtlm_aximm_initiator_wr_socket_util* ini_mm_wr_socket_util;
	xtlm::xtlm_aximm_initiator_rd_socket_util* ini_mm_aux_rd_socket_util;
	xtlm::xtlm_aximm_initiator_wr_socket_util* ini_mm_aux_wr_socket_util;
	xtlm::xtlm_axis_initiator_socket_util* ini_stm_stream_socket_util;
	xtlm::xtlm_axis_target_socket_util* tar_stm_stream_socket_util;

	size_t methodProcessRdCommand(xdma::xdma_intf intf, uint64_t offset,
			const void *hostBuf, size_t size);
	size_t methodProcessWrCommand(xdma::xdma_intf intf, uint64_t offset,
			const void *hostBuf, size_t size);
	size_t methodProcessIniStreamQueue(xdma::xdma_intf intf, uint64_t offset,
			const void *hostBuf, size_t size);
	size_t methodProcessTargetStreamRequest(xdma::xdma_intf intf);

	void end_of_elaboration();

	void read_properties(xsc::common_cpp::properties& properties);
	size_t send_dbg_transport_rd_call(xdma::xdma_intf intf, uint64_t offset,
			const void *hostBuf, size_t size);
	size_t send_dbg_transport_wr_call(xdma::xdma_intf intf, uint64_t offset,
			const void *hostBuf, size_t size);

	bool m_is_aux_enable;
	bool m_is_stm_enable;
	std::stringstream m_ss;

	xtlm::xtlm_aximm_mem_manager m_mem_manager;
	std::map<xdma::xdma_intf, xdma::xdma_itf_prop*> m_itf_prop_map;

	uint32_t m_axi_wr_tbuf_no_serviced;
	uint32_t m_axi_rd_tbuf_no_serviced;
	unsigned char* m_xcl_read_req_data_ptr;
	unsigned char* m_xcl_write_req_data_ptr;
	size_t m_read_req_copied_size;
	size_t m_write_req_copied_size;
	xdma::xdma_intf m_activeIntf;

};

//Global Functions to support XSim GDB debug of Kernel
void registerDdrRead();
extern "C" void WEAKFUNC iki_register_DDR_read(int (*fp)(int, int));
int ddrRead(int ddrNum, int offset);
DPI_LINKER_DECL
extern "C" size_t get_sc_time_stamp();
DPI_LINKER_DECL
double get_sc_time_insec();
DPI_LINKER_DECL
void weak_sc_stop();
#endif /* SIM_XDMA_CORE_H_ */


