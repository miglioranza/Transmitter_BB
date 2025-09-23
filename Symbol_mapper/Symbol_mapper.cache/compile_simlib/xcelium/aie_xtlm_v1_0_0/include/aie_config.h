
/*  (c) Copyright 2014 - 2016 Xilinx, Inc. All rights reserved.

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

#ifndef __AIE_CONFIG__
#define __AIE_CONFIG__

#include <string>
#include <vector>
#include "aie_shim_sol_parser.h"

namespace xsc {
    namespace aie {

        enum StreamType {
            PL_STREAM = 0,
            NOC_STREAM
        };

        //!-----------------Aie Logical configuration----------------//
        struct AieNetlistConfig
        {
            struct AieMmCfg
            {
                AieMmCfg():num_interfaces(0) {}

                unsigned int num_interfaces;
                std::vector<unsigned int>  column_list;
            };

            struct AieStreamLogicalCfg
            {
                AieStreamLogicalCfg():stream_width(0) {}

                StreamType   stream_type; //! PL/NOC Stream
                unsigned int stream_width;

                //! logicl to physical port mapping
                unsigned int logical_indx;
                unsigned int intf_indx;
            };

            struct AieStreamPhysicalCfg
            {
                unsigned int intf_indx;
                unsigned int physical_indx;
                unsigned int stream_width;
            };

            AieNetlistConfig():
                num_aie2pl_event_trig(0), num_pl2aie_event_trig(0), is_npi(0)
            {}

            AieMmCfg  aie2noc_mm_cfg;
            AieMmCfg  noc2aie_mm_cfg;
            bool      is_npi;

            std::vector<AieStreamLogicalCfg>  aie2pl_stream_lg_cfg;   
            std::vector<AieStreamPhysicalCfg> aie2pl_stream_ph_cfg;   

            std::vector<AieStreamLogicalCfg>  pl2aie_stream_lg_cfg;   
            std::vector<AieStreamPhysicalCfg> pl2aie_stream_ph_cfg;   

            std::vector<AieStreamLogicalCfg>  noc2shim_stream_lg_cfg;   
            std::vector<AieStreamPhysicalCfg> noc2shim_stream_ph_cfg;   

            std::vector<AieStreamLogicalCfg>  shim2noc_stream_lg_cfg;   
            std::vector<AieStreamPhysicalCfg> shim2noc_stream_ph_cfg;   

            //! Number of Event triggers from aie to pl and vica-versa...
            unsigned int  num_aie2pl_event_trig;
            unsigned int  num_pl2aie_event_trig;
        };

        //!-----------------Aie simulation configuration----------------//
        struct AieSimConfig 
        {
            std::string  json_device_file;
            std::string  aiesol_file;

            //! cluster library for different simulators (fst/dbg)
            std::string  cluster_lib_dir;
            std::string  cluster_lib_path;
            std::string  aie_xtlm_lib_path;

            bool is_aie1;
            bool is_fast_pm;
            bool is_fast_dm;
            bool is_aie_dbg_trace;
            bool is_aie_profiling;
            bool is_vcd_trace_enabled;

            AieSimConfig(bool _is_aie1);
         };

        class aie_xtlm; 
        class aie_logical;

        class AieConfig
        {
            private:
                bool is_aie1;
                AieSimConfig      sim_cfg;

                //! Logical number of interfaces...
                unsigned int      num_s_axis_interfaces;
                unsigned int      num_m_axis_interfaces;

            public:
                AieShimSolParser* shim_sol_parser;
                AieConfig(bool _is_aie1 = true);
                bool is_aie1_instance() { return is_aie1; }
                void set_fast_pm_dm(const bool is_fast_pm, const bool is_fast_dm);

                void set_aie2noc_mm_cfg(int num_interfaces);
                void set_noc2aie_mm_cfg(int num_interfaces);

                void push_pl2aie_stream_cfg(int logical_indx, int physical_indx, int stream_width);
                void push_aie2pl_stream_cfg(int logical_indx, int physical_indx, int stream_width);

                void set_pl2aie_stream_width(int logical_indx, int stream_width);
                void set_aie2pl_stream_width(int logical_indx, int stream_width);

                void push_noc2shim_stream_cfg(int logical_indx, int physical_indx, int stream_width);
                void push_shim2noc_stream_cfg(int logical_indx, int physical_indx, int stream_width);

                //----------------------simulation config settings----------------------------------

                void set_device_file(const std::string file);
                void set_aie_shim_sol_file(const std::string file);
                void set_vcd_trace(bool value);
                void set_debug_trace(bool value);
                void set_aie_profiling(bool value);
                bool is_shim_empty();

                AieNetlistConfig  nl_cfg;
                void set_cluster_lib_path(std::string lib_path)
                {
                	sim_cfg.cluster_lib_path = lib_path.c_str();
                }

                void set_aie_xtlm_lib_path(std::string lib_path)
                {
                	sim_cfg.aie_xtlm_lib_path = lib_path.c_str();
                }

                void set_is_npi(bool value)
                {
                	nl_cfg.is_npi = value;
                }

            friend class aie_xtlm;
            friend class aie_logical;
        };

        namespace env {

            std::string get_device_file();
            std::string get_shim_sol_file();
            std::string get_cluster_lib_dir(bool _is_aie1);
            std::string get_aie_xtlm_lib_path(bool _is_aie1);
            std::string get_aiesim_config_file();
            std::string get_aie_model_path();

            bool  is_vcd_trace_enabled();
            bool  is_debug_trace_enabled();
            bool  is_aie_profiling_enabled();
            bool  is_aiesim_config_available();
        }

    } //aie namespace 
} //xsc namespace


#endif
