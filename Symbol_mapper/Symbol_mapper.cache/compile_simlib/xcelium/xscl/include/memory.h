
// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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
// 
// DO NOT MODIFY THIS FILE.

#ifndef __MEMORY__
#define __MEMORY__

#include <systemc>
#include <typeinfo>
#include "memory_if.h"

namespace xsc{


class memory: public sc_behavior, xtlm::xtlm_aximm_target_base{
public:
 SC_HAS_PROCESS(memory);
 memory(sc_core::sc_module_name, uint64_t, xsc::common_cpp::report_handler*, bool=false);
 ~memory();

 void b_transport(xtlm::aximm_payload&, sc_core::sc_time&);
 tlm::tlm_sync_enum nb_transport_fw(xtlm::aximm_payload&, tlm::tlm_phase&, sc_core::sc_time&);
 unsigned int transport_dbg(xtlm::aximm_payload&);
 bool get_direct_mem_ptr(xtlm::aximm_payload&, tlm::tlm_dmi&);

 std::vector<memory_region*> getMemoryRegion(uint64_t, uint64_t);
 memory_region* getMemoryRegion(std::string);
 memory_region* createNewMemoryRegion(uint64_t, uint64_t, storageEngineType, std::string = std::string());
 bool freeMemoryRegion(memory_region*);
 // interface to directly read and write to memory regions

 // simulation control callbacks
 //void end_of_elaboration();
 void start_of_simulation();
 void end_of_simulation(); 
private:
 uint64_t size;
 std::string configDir;
 std::string configFile;
 bool sharedMemory;
 // vector of memory regions
 std::vector<memory_region*> mRegion;
 bool mPersistence;
 xsc::common_cpp::report_handler* rH;

 tlm_utils::peq_with_cb_and_phase<memory, xtlm::xtlm_aximm_protocol_types> m_peq;
 void peq_cb(xtlm::aximm_payload&, const tlm::tlm_phase&);

 uint64_t getMaxAlignedMemorySize(uint64_t);
 void printMemoryRegionMap(void);

 bool performWrite(std::vector<memory_region*> , uint64_t, std::vector<uint8_t>&, std::vector<uint8_t>&);
 bool performRead(std::vector<memory_region*> , uint64_t, std::vector<uint8_t>&);
};

}

#endif
