
/*  (c) Copyright 2018 - 2016 Xilinx, Inc. All rights reserved.

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

#ifndef __AIE_XTLM_H__
#define __AIE_XTLM_H__

#include <map>
#include <vector>
#include "xtlm.h"
#include "me_axi_stream.h"
#include "aie_config.h"

class MathEngineBase;

namespace xsc {
namespace aie {

class aie_xtlm_stub;

class aie_xtlm: public sc_module 
{
    typedef  sc_vector<xtlm::xtlm_aximm_initiator_socket > xtlm_aximm_initiator_vector;
    typedef  sc_vector<xtlm::xtlm_axis_initiator_socket >  xtlm_axis_initiator_vector;
    typedef  sc_vector<xtlm::xtlm_axis_target_socket >     xtlm_axis_target_vector;

    typedef  sc_vector<xtlm::xtlm_axis_initiator_socket_util >  xtlm_axis_initiator_util_vector;
    typedef  sc_vector<xtlm::xtlm_axis_target_socket_util >     xtlm_axis_target_util_vector;

    enum {
        PL_STREAM_WIDTH = 64,
        NOC_STREAM_WIDTH = 128,
        NOC_MM_WIDTH = 128
    };

public:
	SC_HAS_PROCESS (aie_xtlm);
	aie_xtlm(sc_module_name nm, xsc::aie::AieConfig& cfg);
	void add_sc_traces(sc_trace_file *tf);
	~aie_xtlm();
    //NOC to AIE AXIMM Socket...
    std::vector<xtlm::xtlm_aximm_target_socket*>     noc_me_aximm_rd_socket;
    std::vector<xtlm::xtlm_aximm_target_socket*>     noc_me_aximm_wr_socket;

    //AIE(shim) to NOC AXIMM Sockets
    std::vector<xtlm::xtlm_aximm_initiator_socket*>  shim_noc_aximm_rd_socket;
    std::vector<xtlm::xtlm_aximm_initiator_socket*>  shim_noc_aximm_wr_socket;

    //AIE to PL AXIS Stream Sockets
    xtlm_axis_initiator_vector      me_pl_axis_socket;
    xtlm_axis_initiator_util_vector me_pl_axis_util;

    //PL to AIE AXIS Stream Sockets
    xtlm_axis_target_vector         pl_me_axis_socket;
    xtlm_axis_target_util_vector    pl_me_axis_util;

    //SHIM to NOC AXIS Stream Sockets
    xtlm_axis_initiator_vector      shim_noc_axis_socket;
    xtlm_axis_initiator_util_vector shim_noc_axis_util;
    sc_vector<NoCStream128_fifo>    fifo_noc_to_me;

    //NOC to SHIM AXIS Stream Sockets
    xtlm_axis_target_vector         noc_shim_axis_socket;
    xtlm_axis_target_util_vector    noc_shim_axis_util;

    // Clock
    sc_in<bool> clk;

private:
    //SystemC Processes for AIE2PL & PL2AIE Communication
    void aie2pl_process(int intf_indx, int physical_indx);
    void pl2aie_process(int intf_indx, int physical_indx);

    //SystemC Processes for AIE2NOC & NOC2AIE Communication
    void shim2noc_process(int intf_indx, int physical_indx);
    void noc2shim_process(int intf_indx, int physical_indx);

    // Which version of cluster model(libaie_cluster/libaie_cluster_dbg) 
    // library to be loaded is descided during runtime...
    void create_cluster();

    void noc2aie_mm_config();
    void aie2noc_mm_config();

    void aie2pl_stream_config();
    void pl2aie_stream_config();

    void shim2noc_stream_config();
    void noc2shim_stream_config();

    void bind_child_interfaces();

    void before_end_of_elaboration();
    void stub_unused_ports();

    //Creates a list of AXIS Stream Initiator sockets and binds to the util sockets...
    void create_stream_initiator(
            xtlm_axis_initiator_vector&, 
            xtlm_axis_initiator_util_vector&, int num_streams, int stream_width);

    //Creates a list of AXIS Stream Target sockets and binds to the util sockets...
    void create_stream_target(
            xtlm_axis_target_vector&, 
            xtlm_axis_target_util_vector&, int num_streams, int stream_width);

    //------------------------------------------------------------------
    MathEngineBase   *me_inst;
    aie_xtlm_stub*   aie_stub;

    xsc::aie::AieConfig aie_cfg;
    xtlm::xtlm_axis_mem_manager axis_mem_manager;
};

} //namespace aie
} //namespace xsc

#endif // __AIE_XTLM_H__
