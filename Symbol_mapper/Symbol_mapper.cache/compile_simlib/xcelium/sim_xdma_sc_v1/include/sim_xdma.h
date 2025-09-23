
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

#ifndef SIM_XDMA_H_
#define SIM_XDMA_H_

#include "xtlm.h"
#include <fstream>
#include <list>
#include <sys/types.h>
#include "xcl_api.h"
#include "sk_client.h"
#include "sim_xdma_helper.h"
#include "sim_xdma_base.h"
#include "report_handler.h"
#include "sim_xdma_core.h"
#include <sstream>

class sim_xdma: public sc_core::sc_module, public sim_xdma_base {
public:
	sim_xdma(sc_core::sc_module_name name, xsc::common_cpp::properties&);SC_HAS_PROCESS(sim_xdma);
	//Exposed Interfaces
	xtlm::xtlm_aximm_initiator_socket* initiator_ctrl_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* initiator_ctrl_wr_socket;

	xtlm::xtlm_aximm_initiator_socket* initiator_mm_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* initiator_mm_wr_socket;

	xtlm::xtlm_aximm_initiator_socket* initiator_mm_aux_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* initiator_mm_aux_wr_socket;

	xtlm::xtlm_axis_initiator_socket* initiator_stm_stream_socket;
	xtlm::xtlm_axis_target_socket* target_stm_stream_socket;

	sc_core::sc_in_clk m_aximm_aclk;
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
	static sim_xdma* getInstance() {
		return m_instance;
	}
	// Infrastructure used by XSIM for DDR backdoor access
	void ddrRead(unsigned int ddrNum, uint64_t offset, void* dest,
			unsigned int size);
	~sim_xdma();
private:

	xsc::common_cpp::report_handler* m_report_handler;
	sim_xdma_core* m_sim_xdma_core;
	sim_xdma_helper* m_sim_xdma_helper;
	sc_core::sc_signal<bool> m_aximm_aux_aclk_signal;
	sc_core::sc_signal<bool> m_aximm_aux_aresetn_signal;
	sc_core::sc_signal<bool> s_axis_aclk_signal;
	sc_core::sc_signal<bool> s_axis_aresetn_signal;
	sc_core::sc_signal<bool> m_axis_aclk_signal;
	sc_core::sc_signal<bool> m_axis_aresetn_signal;
	void initModel();
	std::stringstream m_ss;
	void simulate_single_cycle();
	void end_of_elaboration();
	void start_of_simulation();
	void calculate_clk_period();
	//Singleton instance
	sc_core::sc_time m_clk_period;
	static sim_xdma* m_instance;

};

//Global Functions to support XSim GDB debug of Kernel
void registerDdrRead();
extern "C" void WEAKFUNC iki_register_DDR_read(int (*fp)(int, int));
int ddrRead(int ddrNum, int offset);
DPI_LINKER_DECL
extern "C" size_t get_sc_time_stamp();
DPI_LINKER_DECL
double get_sc_time_insec();

#endif /* sim_xdma_H_ */


