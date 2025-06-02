
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

#ifndef _RDWR_CMODEL_H_
#define _RDWR_CMODEL_H_
#include "rwd_tlmmodel_defines.h"
#include "systemc"
#if defined(_WIN32) && defined(__MINGW32__)// if windows
#include<cstddef>
#include<cstdint>

enum cmd {
    CMD_nop         = 0,
    CMD_read        = 1,
    CMD_write       = 2,
};
struct rwd_packet {
    uint8_t CmdType;
    const char *WrData;
    char *RdData; // will be updated by XTLM read data      
    size_t DataLength;
    uint64_t Addr;
    bool rsp; // will be updated as successful read/write response

    rwd_packet() {
        CmdType = CMD_nop;
        WrData = NULL;
        RdData = NULL;
        DataLength = 0;
        Addr = 0;
        rsp = false;
    }
};
class rwd_interface {
    public:
    static rwd_interface& getInstance();
    virtual void requestProcess_cb(struct rwd_packet& pkt)=0;
    virtual ~rwd_interface(){}
    protected:
    rwd_interface(){}

};
#else
#include "rwd_interface.h"
#include "rwd_packet.h"
#endif
#include <mutex>
#include <condition_variable>
#include <iostream>
#include "tlm_utils/peq_with_get.h"
#include "tlm.h"
#include "tlm_utils/simple_initiator_socket.h"
#include<map>
using namespace std;
using namespace sc_core;
using namespace tlm;
class rwd_tlmmodel_impl;
class RWD_TLMMODEL_SC_API rwd_tlmmodel : public rwd_interface, sc_module {
    public:
    tlm_utils::simple_initiator_socket<rwd_tlmmodel> init_sock;
    static rwd_interface& getInstance();
    void requestProcess_cb(struct rwd_packet& pkt);
    ~rwd_tlmmodel();
    private:
    static rwd_tlmmodel* obj;
    rwd_tlmmodel(sc_module_name name, int data_width=128);
    SC_HAS_PROCESS(rwd_tlmmodel);
    //This SC_THREAD is used to make tlm b_transport or transport _dbg call for any processRequest_cb()
    void run_sc_thread();
    rwd_tlmmodel_impl* m_impl;

};
#endif


