
/*  (c) Copyright 2014 - 2018 Xilinx, Inc. All rights reserved.

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
#ifndef __AIE_LOGICAL_H__
#define __AIE_LOGICAL_H__

#include <map>
#include <vector>
#include "xtlm.h"
#include "utils/xtlm_axis_target_stub.h"
#include "utils/xtlm_axis_initiator_stub.h"

#include "aie_axis_bridges.h"
#include "aie_aximm_bridges.h"
#include "aie_config.h"

namespace xsc {
    namespace aie {

        class aie_xtlm;

        class aie_logical : public sc_module
        {
            public:
                SC_HAS_PROCESS(aie_logical);
                aie_logical(sc_module_name nm,  xsc::aie::AieConfig& cfg);
                void add_sc_traces(sc_trace_file *tf);
                ~aie_logical();
                //List of NOC to AIE AXIMM Socket...
                std::vector<xtlm::xtlm_aximm_target_socket*>     S_AXIMM_rd_socket;
                std::vector<xtlm::xtlm_aximm_target_socket*>     S_AXIMM_wr_socket;

                //List of to AIE to NOC AXIMM Socket...
                std::vector<xtlm::xtlm_aximm_initiator_socket*>  M_AXIMM_rd_socket;
                std::vector<xtlm::xtlm_aximm_initiator_socket*>  M_AXIMM_wr_socket;

                //! List of AIE to NOC/PL Logical Stream interfaces...
                std::vector<xtlm::xtlm_axis_initiator_socket*>   M_AXIS_socket;

                //! List of NOC/PL to AIE Logical Stream interfaces...
                std::vector<xtlm::xtlm_axis_target_socket*>      S_AXIS_socket;

                //clock input
                sc_in<bool> clk;

            private:
                void create_noc2aie_mm_interfaces();
                void create_aie2noc_mm_interfaces();

                void create_pl2aie_stream_interfaces();
                void create_aie2pl_stream_interfaces();
                void print_netlist_info();

                xsc::aie::aie_xtlm*  aie_xtlm_inst;
                xsc::aie::AieConfig  aie_cfg;

                //-------------------------------------------------------------
                std::vector<xsc::aie::aie_aximm_bridge*>      aximm_bridge;

                std::vector<xsc::aie::aie2pl_64_128_bridge*>  M_AXIS_64_128;
                std::vector<xsc::aie::aie2pl_64_64_bridge*>   M_AXIS_64_64;
                std::vector<xsc::aie::aie2pl_64_32_bridge*>   M_AXIS_64_32;

                std::vector<xsc::aie::pl2aie_128_64_bridge*>  S_AXIS_128_64;
                std::vector<xsc::aie::pl2aie_64_64_bridge*>   S_AXIS_64_64;
                std::vector<xsc::aie::pl2aie_32_64_bridge*>   S_AXIS_32_64;

                //Stub models to connect un-used ports...
                std::vector<xtlm::xtlm_axis_target_stub*>    axis_slave_stub;
                std::vector<xtlm::xtlm_axis_initiator_stub*> axis_master_stub;
        };
    }
}
#endif //__AIE_LOGICAL_H__
