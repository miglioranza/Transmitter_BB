
// (c) Copyright(C) 1995 - 2020 by Xilinx, Inc. All rights reserved.
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

#include <systemc>
#include <vector>
#include <utility>
#include "xtlm.h"
#include "report_handler.h"

#define DEBUG(...)                                        \
  {                                                       \
    std::cout<< "@"<<sc_core::sc_time_stamp()<<" : " << __VA_ARGS__ <<std::endl; \
  }

enum class arbAlgo { roundRobin = 0,
                     fixedPriority,
                     trueRoundRobin };
enum class arbEvent { arbOnMaxTxfers = 0,
                      arbOnLowTvalidCyc,
                      arbOnTlast };
enum class state{ REQUEST = 0,
                 GRANT, 
                 BUSY,
                 DONE };

class axi4ss_arbiter;
class xsc_axis_switch : public sc_core::sc_module {
 public:
  SC_HAS_PROCESS(xsc_axis_switch);
  xsc_axis_switch(sc_core::sc_module_name p_name, xsc::common_cpp::properties ppts);
  ~xsc_axis_switch();
  //ports
  sc_core::sc_vector<xtlm::xtlm_axis_target_socket> target_socket;
  sc_core::sc_vector<xtlm::xtlm_axis_initiator_socket> initiator_socket;
  sc_core::sc_vector<sc_core::sc_out<bool> >	dec_err;

  //simulation functions
  void end_of_elaboration();

 private :
  sc_core::sc_vector<xtlm::xtlm_axis_target_socket_util> targ_utils;
  sc_core::sc_vector<xtlm::xtlm_axis_initiator_socket_util> init_utils;
  void reset();

  //properties
  uint32_t numSlaveIfs;
  uint32_t numMasterIfs;
  uint32_t tDataWidth;
  uint32_t tDataWidthSlv;
  uint32_t tDataWidthMst;

  //events
  sc_core::sc_event evtNewTx;

  //data structures
  std::vector<std::pair<uint64_t, uint64_t>> mstIfRouteMap;
  std::map<unsigned int, xtlm::axis_payload*> txMap;
  typedef std::pair<unsigned int, xtlm::axis_payload*> txPair;

 public:
  sc_core::sc_vector<axi4ss_arbiter> arbiter;
  std::vector<state> slvState;

 private:
  //methods
  int32_t getMasterIfIndex(uint32_t);

  //sc_processes
  void slaveCmd(int i);
};

class axi4ss_arbiter : public sc_core::sc_module {
 public:
  SC_HAS_PROCESS(axi4ss_arbiter);
  axi4ss_arbiter(sc_core::sc_module_name, arbAlgo, arbEvent, uint32_t, uint32_t);
  ~axi4ss_arbiter();

  friend class xsc_axis_switch;

 private:
  arbAlgo mode;
  arbEvent evt;
  uint32_t arbEvtCnt;

  std::bitset<16> pendingReqs;
  std::deque<uint32_t> arbPriorityQ;

  void request(uint32_t);
  int curGrantId;
  std::vector<sc_core::sc_event> grant;
  void done(uint32_t);

  void arbitration();
  sc_core::sc_event arbNext;
};
