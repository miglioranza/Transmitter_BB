
#ifndef __AIE_AXIS_SOCKET_BRIDGES_H__
#define __AIE_AXIS_SOCKET_BRIDGES_H__

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

#include "xtlm_sockets/xtlm_axis_simple_initiator_socket_tagged.h"
#include "xtlm_sockets/xtlm_axis_passthrough_target_socket_tagged.h"
#include "aie_logger.h"

namespace xsc {
namespace aie {

///////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                       //
// Bridge for PL to AIE, 128 to 64 bit AXIS stream socket conversion                                      //
//                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////

    class pl2aie_128_64_bridge : 
        public sc_core::sc_module, public xtlm::xtlm_axis_target_base,  
        public xtlm::xtlm_axis_simple_initiator_socket_tagged_base
    {
        enum {
            INPUT_DATA_WIDTH = 128,
            OUTPUT_DATA_WIDTH = 64,
        };
        public:
            SC_HAS_PROCESS(pl2aie_128_64_bridge);
            pl2aie_128_64_bridge(sc_core::sc_module_name name);

            //! TLM farward interface implementation
            tlm::tlm_sync_enum nb_transport_fw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            

            tlm::tlm_sync_enum nb_transport_bw(int i, xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            
            void enable_log(const std::string name) { logger = aie_logger::get_logger(name); }

            //!target socket of 128 bit width
            xtlm::xtlm_axis_target_socket target_socket;
      
            //! Pair of 64 bit initiator sockets...
            xtlm::xtlm_axis_simple_initiator_socket_tagged* initiator_socket[2];

        private:
            bool resp_in[2]; //! flags to keep track of responses from two sockets
            xtlm::axis_payload* in_payload;
            xtlm::xtlm_axis_mem_manager* mem_manager;            
            aie_logger* logger;
    };

///////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                       //
// Bridge for AIE to PL, 128 to 64 bit AXIS stream socket conversion                                      //
//                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////

    class aie2pl_64_128_bridge 
        : public sc_core::sc_module,  public xtlm::xtlm_axis_initiator_base,  
        public xtlm::xtlm_axis_passthrough_target_socket_tagged_base
    {
        enum {
            INPUT_DATA_WIDTH = 64,
            OUTPUT_DATA_WIDTH = 128,
        };

        public:
            SC_HAS_PROCESS(aie2pl_64_128_bridge);
            aie2pl_64_128_bridge(sc_core::sc_module_name name);

            tlm::tlm_sync_enum nb_transport_fw(int i, xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            

            //! TLM backward interface implementation
            tlm::tlm_sync_enum nb_transport_bw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            
            void enable_log(const std::string name) { logger = aie_logger::get_logger(name); }

            //!initiator socket (128 bit width)...
            xtlm::xtlm_axis_initiator_socket initiator_socket;

            //! Pair of 64 bit target sockets...
            xtlm::xtlm_axis_passthrough_target_socket_tagged* target_socket[2];

        private:
            xtlm::axis_payload* in_payload[2];

            bool req_in[2]; //! flag to keep track of input requests
            xtlm::xtlm_axis_mem_manager* mem_manager;            
            aie_logger* logger;
    };

///////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                       //
// Bridge for PL to AIE, 64 to 64 bit AXIS stream socket conversion                                       //
//                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////

    class pl2aie_64_64_bridge : 
        public sc_core::sc_module, public xtlm::xtlm_axis_target_base,  
        public xtlm::xtlm_axis_initiator_base
    {
        enum {
            INPUT_DATA_WIDTH = 64,
            OUTPUT_DATA_WIDTH = 64,
        };
        public:
            SC_HAS_PROCESS(pl2aie_64_64_bridge);
            pl2aie_64_64_bridge(sc_core::sc_module_name name);
                
            //! TLM farward interface implementation
            tlm::tlm_sync_enum nb_transport_fw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            

            tlm::tlm_sync_enum nb_transport_bw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            
            void enable_log(const std::string name) { logger = aie_logger::get_logger(name); }

            //!target socket of 64 bit width
            xtlm::xtlm_axis_target_socket target_socket;
      
            //! 64 bit initiator sockets...
            xtlm::xtlm_axis_initiator_socket initiator_socket;

        private:
            xtlm::axis_payload* in_payload;
            xtlm::xtlm_axis_mem_manager* mem_manager;            
            aie_logger* logger;
    };

///////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                       //
// Bridge for AIE to PL, 64 to 64 bit AXIS stream socket conversion                                      //
//                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////

    class aie2pl_64_64_bridge 
        : public sc_core::sc_module
          ,public xtlm::xtlm_axis_initiator_base
          ,public xtlm::xtlm_axis_target_base
    {
        enum {
            INPUT_DATA_WIDTH = 64,
            OUTPUT_DATA_WIDTH = 64,
        };

        public:
            SC_HAS_PROCESS(aie2pl_64_64_bridge);
            aie2pl_64_64_bridge(sc_core::sc_module_name name);

            tlm::tlm_sync_enum nb_transport_fw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            
            //! TLM backward interface implementation
            tlm::tlm_sync_enum nb_transport_bw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            
            void enable_log(const std::string name) { logger = aie_logger::get_logger(name); }

            //!initiator socket (128 bit width)...
            xtlm::xtlm_axis_initiator_socket initiator_socket;

            //! Pair of 64 bit target sockets...
            xtlm::xtlm_axis_target_socket target_socket;
        private:
            aie_logger* logger;
    };

///////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                       //
// Bridge for PL to AIE, 32 to 64 bit AXIS stream socket conversion                                       //
//                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////

    class pl2aie_32_64_bridge : 
        public sc_core::sc_module, public xtlm::xtlm_axis_target_base,  
        public xtlm::xtlm_axis_initiator_base
    {
        enum {
            INPUT_DATA_WIDTH = 32,
            OUTPUT_DATA_WIDTH = 64,
        };
        public:
            SC_HAS_PROCESS(pl2aie_32_64_bridge);
            pl2aie_32_64_bridge(sc_core::sc_module_name name);

            //! TLM farward interface implementation
            tlm::tlm_sync_enum nb_transport_fw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            

            tlm::tlm_sync_enum nb_transport_bw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            
            void enable_log(const std::string name) { logger = aie_logger::get_logger(name); }

            //!target socket of 64 bit width
            xtlm::xtlm_axis_target_socket target_socket;
      
            //! 64 bit initiator sockets...
            xtlm::xtlm_axis_initiator_socket initiator_socket;

        private:
            xtlm::axis_payload* in_payload;
            xtlm::xtlm_axis_mem_manager* mem_manager;            
            aie_logger* logger;
    };

///////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                       //
// Bridge for AIE to PL, 64 to 32 bit AXIS stream socket conversion                                      //
//                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////

    class aie2pl_64_32_bridge 
        : public sc_core::sc_module
          ,public xtlm::xtlm_axis_initiator_base
          ,public xtlm::xtlm_axis_target_base
    {
        enum {
            INPUT_DATA_WIDTH = 64,
            OUTPUT_DATA_WIDTH = 32,
        };

        public:
            SC_HAS_PROCESS(aie2pl_64_32_bridge);
            aie2pl_64_32_bridge(sc_core::sc_module_name name);

            tlm::tlm_sync_enum nb_transport_fw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);
            

            //! TLM backward interface implementation
            tlm::tlm_sync_enum nb_transport_bw(xtlm::axis_payload& trans,
                    tlm::tlm_phase& phase, sc_core::sc_time& delay);

            void enable_log(const std::string name) { 
                logger = aie_logger::get_logger(name); 
                logger->set_narror_trans(true);
            }

            //!initiator socket (32 bit width)...
            xtlm::xtlm_axis_initiator_socket initiator_socket;

            //! 64 bit target socket...
            xtlm::xtlm_axis_target_socket target_socket;
        private:
            aie_logger* logger;
    };


} // namespace aie
} // namespace xsc
#endif


