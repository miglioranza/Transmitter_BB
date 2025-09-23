
// (c) Copyright(C) 2013 - 2018 by Xilinx, Inc. All rights reserved.
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

#include "utils/xtlm_cmnhdr.h"
#ifdef XTLM_DLL
#define XTLM_AXIMM_TRANSACTION_LOGGER_EXPORT XTLM_EXPORT
#else
#define XTLM_AXIMM_TRANSACTION_LOGGER_EXPORT XTLM_IMPORT
#endif

#include "xtlm_generic_payload/xtlm_aximm_phases.h"
#include "xtlm_generic_payload/aximm_payload.h"

#include "report_handler.h"

#include "xtlm_interfaces/xtlm_aximm_initiator_base.h"
#include "xtlm_interfaces/xtlm_aximm_target_base.h"
#include "xtlm_sockets/xtlm_aximm_initiator_socket.h"
#include "xtlm_sockets/xtlm_aximm_target_socket.h"

//#ifdef XILINX_SIMULATOR
#include "utils/xtlm_aximm_transview.h"
#include "utils/xtlm_log_helper.h"

#ifdef XILINX_SIMULATOR
#include "sysc/xilinx/proxy_object.h"
#elif (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
#include <scv.h>
#endif
#include <queue>
#include <map>
#include <systemc>


//#define __DEBUG_ON__
#define OSShex(...) static_cast<std::ostringstream&&>(std::ostringstream() << "0x" << std::hex << __VA_ARGS__).str()
#define OSS(...) static_cast<std::ostringstream&&>(std::ostringstream() << __VA_ARGS__).str()

#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
class streamContainer{
public:
	std::string startPhase;
	std::string txN;
	//scv_tr_handle mainStrmHndlI;
	//scv_tr_handle mainStrmHndlT;
	sc_core::sc_time beginTS;
	//scv_tr_handle addrStrmHndlI;
	//scv_tr_handle addrStrmHndlT;
	sc_core::sc_time beginAddrTS;
	sc_core::sc_time beginAddrDly;
	//scv_tr_handle dataStrmHndlI;
	//scv_tr_handle dataStrmHndlT;
	std::vector<sc_core::sc_time> beginDataTS;
	std::vector<sc_core::sc_time> beginDataDly;
	//scv_tr_handle respStrmHndlI;
	//scv_tr_handle respStrmHndlT;
	sc_core::sc_time beginRespTS;
	sc_core::sc_time beginRespDly;
  streamContainer():startPhase(""), txN("undefined"), beginTS(SC_ZERO_TIME)
    , beginAddrTS(SC_ZERO_TIME), beginAddrDly(SC_ZERO_TIME)
    , beginRespTS(SC_ZERO_TIME), beginRespDly(SC_ZERO_TIME) {}
};
#endif

class XTLM_AXIMM_TRANSACTION_LOGGER_EXPORT xtlm_aximm_transaction_logger : public sc_core::sc_module, public xtlm::xtlm_aximm_initiator_base, public xtlm::xtlm_aximm_target_base {
  SC_HAS_PROCESS(xtlm_aximm_transaction_logger);
public:
  xtlm_aximm_transaction_logger(sc_core::sc_module_name p_name) :
    sc_core::sc_module(p_name), xtlm_aximm_target_base("conn_target"),
    xtlm_aximm_initiator_base("conn_initiator"), logger("xtlm_aximm_transaction_logger")
  {

    init_wr_skt = new xtlm::xtlm_aximm_initiator_socket("init_wr_skt", 32);
    init_rd_skt = new xtlm::xtlm_aximm_initiator_socket("init_rd_skt", 32);

    tar_wr_skt = new xtlm::xtlm_aximm_target_socket("tar_wr_skt", 32);
    tar_rd_skt = new xtlm::xtlm_aximm_target_socket("tar_rd_skt", 32);

    init_wr_skt->bind(*this);
    tar_wr_skt->bind(*this);
    init_rd_skt->bind(*this);
    tar_rd_skt->bind(*this);
    count = 0;
    cmpltdWrTx = 0;
    cmpltdRdTx = 0;
    pndngWrTx = 0;
    logger.set_actions(xsc::common_cpp::INFO, xsc::common_cpp::LOG);
    //#ifdef XILINX_SIMULATOR
    m_transactionLogger = new xilinx_sc::xil_trace::aximm_virtual_object("VirtualObject");
    //#endif
    m_write_in_progress = false;
    mLogState = getEnvVar("XTLM_LOG_STATE");
    mRunTimeLogState = getEnvVar("ENABLE_XTLM_AXIMM_LOG");

  }

  ~xtlm_aximm_transaction_logger() {
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
     delete initSktStrm;
     delete wrStats;
     delete rdStats;
     delete initSktStrmAW;
     delete wag;
     delete initSktStrmW;
     delete wdg;
     delete initSktStrmB;
     delete wrg;
     //delete wrhs;
     delete initSktStrmAR;
     delete rag;
     delete initSktStrmR;
     delete rdg;
     delete targSktStrm;
     delete targSktStrm;
     delete twrStats;
     delete trdStats;
     delete targSktStrmAW;
     delete twag;
     delete targSktStrmW;
     delete twdg;
     delete targSktStrmB;
     delete twrg;
     delete targSktStrmAR;
     delete trag;
     delete targSktStrmR;
     delete trdg;
#endif
   }

  xtlm::xtlm_aximm_target_socket* tar_wr_skt;
  xtlm::xtlm_aximm_target_socket* tar_rd_skt;

  xtlm::xtlm_aximm_initiator_socket* init_wr_skt;
  xtlm::xtlm_aximm_initiator_socket* init_rd_skt;

//#ifdef XILINX_SIMULATOR
  xilinx_sc::xil_trace::aximm_virtual_object *m_transactionLogger;
//#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
  scv_tr_stream *initSktStrm;
  scv_tr_generator<std::string> *wrStats;
  scv_tr_generator<std::string> *rdStats;

  scv_tr_stream *initSktStrmAW;
  scv_tr_generator<std::string> *wag;

  scv_tr_stream *initSktStrmW;
  scv_tr_generator<std::string> *wdg;

  scv_tr_stream *initSktStrmB;
  scv_tr_generator<std::string> *wrg;
  //scv_tr_generator<> *wrhs;

  scv_tr_stream *initSktStrmAR;
  scv_tr_generator<std::string> *rag;

  scv_tr_stream *initSktStrmR;
  scv_tr_generator<std::string> *rdg;

  scv_tr_stream *targSktStrm;
  scv_tr_generator<std::string> *twrStats;
  scv_tr_generator<std::string> *trdStats;

  scv_tr_stream *targSktStrmAW;
  scv_tr_generator<std::string> *twag;

  scv_tr_stream *targSktStrmW;
  scv_tr_generator<std::string> *twdg;

  scv_tr_stream *targSktStrmB;
  scv_tr_generator<std::string> *twrg;

  scv_tr_stream *targSktStrmAR;
  scv_tr_generator<std::string> *trag;

  scv_tr_stream *targSktStrmR;
  scv_tr_generator<std::string> *trdg;


  std::map<xtlm::aximm_payload*, std::unique_ptr<streamContainer>> writeCon;
  std::map<xtlm::aximm_payload*, std::unique_ptr<streamContainer>> readCon;
#endif

  void setProxyRef(::sc_core::sc_object *masterInst, ::sc_core::sc_object *slaveInst,
      std::string masterSktCnt, std::string slaveSktCnt, xilinx_sc::xil_trace::aximm_virtual_object *transactionObj) {

    m_connection_info = masterSktCnt + " <-> " + slaveSktCnt;
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
#if defined MTI_SYSTEMC
    std::string streamKind{"logger"};
#elif defined XM_SYSTEMC
    std::string streamKind{"TRANSACTOR"};
#endif
    initSktStrm = new scv_tr_stream((std::string(masterInst->name()) + "/" + masterSktCnt).c_str(), streamKind.c_str());
    wrStats = new scv_tr_generator<std::string>("WRITE", *initSktStrm, "WriteTxStatistics");
    rdStats = new scv_tr_generator<std::string>("READ",  *initSktStrm, "ReadTxStatistics");

    initSktStrmAW = new scv_tr_stream((std::string(masterInst->name()) + "/" + masterSktCnt + "_AW").c_str(), streamKind.c_str());
    wag = new scv_tr_generator<std::string>("WriteAddr", *initSktStrmAW, "mark");

    initSktStrmW = new scv_tr_stream((std::string(masterInst->name()) + "/" + masterSktCnt + "_W").c_str(), streamKind.c_str());
    wdg = new scv_tr_generator<std::string>("WriteData", *initSktStrmW, "mark");

    initSktStrmB = new scv_tr_stream((std::string(masterInst->name()) + "/" + masterSktCnt + "_B").c_str(), streamKind.c_str());
    wrg = new scv_tr_generator<std::string>("WriteResponse", *initSktStrmB, "mark");
    //wrhs = new scv_tr_generator<>("brespHandShake", *initSktStrmB);

    initSktStrmAR = new scv_tr_stream((std::string(masterInst->name()) + "/" + masterSktCnt + "_AR").c_str(), streamKind.c_str());
    rag = new scv_tr_generator<std::string>("ReadAddr", *initSktStrmAR, "mark");
    initSktStrmR = new scv_tr_stream((std::string(masterInst->name()) + "/" + masterSktCnt + "_R").c_str(), streamKind.c_str());
    rdg = new scv_tr_generator<std::string>("ReadData", *initSktStrmR, "mark");

    targSktStrm = new scv_tr_stream((std::string(slaveInst->name()) + "/" + slaveSktCnt).c_str(), streamKind.c_str());
    twrStats = new scv_tr_generator<std::string>("WRITE", *targSktStrm, "WriteTxStatistics");
    trdStats = new scv_tr_generator<std::string>("READ",  *targSktStrm, "ReadTxStatistics");

    targSktStrmAW = new scv_tr_stream((std::string(slaveInst->name()) + "/" + slaveSktCnt + "_AW").c_str(), streamKind.c_str());
    twag = new scv_tr_generator<std::string>("WriteAddr", *targSktStrmAW, "mark");

    targSktStrmW = new scv_tr_stream((std::string(slaveInst->name()) + "/" + slaveSktCnt + "_W").c_str(), streamKind.c_str());
    twdg = new scv_tr_generator<std::string>("WriteData", *targSktStrmW, "mark");

    targSktStrmB = new scv_tr_stream((std::string(slaveInst->name()) + "/" + slaveSktCnt + "_B").c_str(), streamKind.c_str());
    twrg = new scv_tr_generator<std::string>("WriteResponse", *targSktStrmB, "mark");

    targSktStrmAR = new scv_tr_stream((std::string(slaveInst->name()) + "/" + slaveSktCnt + "_AR").c_str(), streamKind.c_str());
    trag = new scv_tr_generator<std::string>("ReadAddr", *targSktStrmAR, "mark");

    targSktStrmR = new scv_tr_stream((std::string(slaveInst->name()) + "/" + slaveSktCnt + "_R").c_str(), streamKind.c_str());
    trdg = new scv_tr_generator<std::string>("ReadData", *targSktStrmR, "mark");

    //std::string masterSlaveInfo{std::string(masterInst->name()) + "/" + masterSktCnt};
    //masterSlaveInfo += {std::string(" <==> ") + std::string(slaveInst->name()) + "/" + slaveSktCnt};
    //XSC_REPORT_INFO(logger, "xtlm::1115", masterSlaveInfo.c_str());
#endif
#ifdef XILINX_SIMULATOR
    xilinx_sc::xil_trace::proxy_object *proxy_master_inst_0 = new xilinx_sc::xil_trace::proxy_object(masterSktCnt.c_str(), masterInst);
    xilinx_sc::xil_trace::proxy_object *proxy_slave_inst_0 = new xilinx_sc::xil_trace::proxy_object(slaveSktCnt.c_str(), slaveInst);
    proxy_master_inst_0->xsim_set_ref_obj(transactionObj);
    proxy_slave_inst_0->xsim_set_ref_obj(transactionObj);
#endif
  }

  //forward, backward interface functions
  /**
   * nb_transport_fw call from the master
   * @param trans is aximm_transaction
   * @param phase is tlm_phase
   * @return type is a integer
   */
  tlm::tlm_sync_enum nb_transport_fw(xtlm::aximm_payload& trans,
      tlm::tlm_phase& phase, sc_core::sc_time& delay) {

    //std::string log{" @time" + sc_core::sc_time_stamp().to_string() + "FW PHASE = " + OSS(phase)};
    //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
    tlm::tlm_sync_enum status=tlm::TLM_ACCEPTED;
    if (trans.get_command() == xtlm::XTLM_WRITE_COMMAND) {
#ifdef XILINX_SIMULATOR
      log_fw_write_start(phase, trans, delay);
#endif 
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      if (phase == xtlm::BEGIN_WADDR) {
        log_SCV_writeAddressChannel_start(trans, delay);
      }else if ( phase == xtlm::BEGIN_WDATA || phase == xtlm::BEGIN_WDATA_LAST ) {
        log_SCV_writeDataChannel_start(trans, delay);
      //}else if ( phase == xtlm::BEGIN_WDATA_LAST ) {
      //  std::string id{std::to_string(trans.get_axi_id())};
      //  wDataCTimeMap[id].push_back(sc_core::sc_time_stamp());
      }else if (phase == xtlm::END_WRESP){
        log_SCV_writeRespChannel_end(trans, delay);
      }
#endif
      status = (*init_wr_skt)->nb_transport_fw(trans, phase, delay);
      if (status != tlm::TLM_ACCEPTED) {
#ifdef XILINX_SIMULATOR
        log_fw_write_end(phase, trans, delay);
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
        if (phase == xtlm::END_WADDR) {
          log_SCV_writeAddressChannel_end(trans, delay);
        }else if (phase == xtlm::END_WDATA_LAST) {
          log_SCV_writeDataChannel_end(trans, delay);
        }
#endif
      }
    }else if (trans.get_command() == xtlm::XTLM_READ_COMMAND) {
#ifdef XILINX_SIMULATOR
      log_fw_read_start(phase, trans, delay);
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      if (phase == xtlm::BEGIN_RADDR) {
        log_SCV_readAddressChannel_start(trans, delay);
      }else if (phase == xtlm::END_RDATA_LAST){
        log_SCV_readDataChannel_end(trans, delay);
      }
#endif
      status = (*init_rd_skt)->nb_transport_fw(trans, phase, delay);
      if (status != tlm::TLM_ACCEPTED) {
#ifdef XILINX_SIMULATOR
        log_fw_read_end(phase, trans, delay);
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
        if (phase == xtlm::END_RADDR) {
          log_SCV_readAddressChannel_end(trans, delay);
        }else if (phase == xtlm::END_RDATA) {
        }
#endif
      }
    }
    return status;
  }

  /**
   * nb_transport_bw call from the slave
   * @param trans is aximm_transaction
   * @param phase is tlm_phase
   * @return type is a integer
   */
  tlm::tlm_sync_enum nb_transport_bw(xtlm::aximm_payload& trans,
      tlm::tlm_phase& phase, sc_core::sc_time& delay) {
    //std::string log{" @time" + sc_core::sc_time_stamp().to_string() + "BW PHASE =" + OSS(phase)};
    //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());

    tlm::tlm_sync_enum status=tlm::TLM_ACCEPTED;
    if (trans.get_command() == xtlm::XTLM_WRITE_COMMAND) {
#ifdef XILINX_SIMULATOR
      log_bw_write_start(phase, trans, delay);
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      if (phase == xtlm::END_WADDR) {
        log_SCV_writeAddressChannel_end(trans, delay);
      }else if (phase == xtlm::END_WDATA) {
      }else if (phase == xtlm::END_WDATA_LAST) {
        log_SCV_writeDataChannel_end(trans, delay);
      }else if (phase == xtlm::BEGIN_WRESP) {
        log_SCV_writeRespChannel_start(trans, delay);
        //if (writeCon.find(&trans) != writeCon.end()) {
        //  writeCon[&trans]->beginRespTS = sc_core::sc_time_stamp();
        //  writeCon[&trans]->beginRespDly = delay;
        //}
        //std::string log {"id =" + id + " xtlm::BEGIN_WRESP transaction @time " + wRespCTimeMap[id].to_string()};
        //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
      }
#endif
      status = (*tar_wr_skt)->nb_transport_bw(trans, phase, delay);
      if (status != tlm::TLM_ACCEPTED) {
#ifdef XILINX_SIMULATOR
        log_bw_write_end(phase, trans, delay);
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
        if (phase == xtlm::END_WRESP) {
          //std::string log{" Calling log_SCV_writeRespChannel_end @time" + sc_core::sc_time_stamp().to_string()};
          //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
          log_SCV_writeRespChannel_end(trans, delay);
        }
#endif
      }
    }
    else if (trans.get_command() == xtlm::XTLM_READ_COMMAND) {
#ifdef XILINX_SIMULATOR
      log_bw_read_start(phase, trans, delay);
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      if (phase == xtlm::END_RADDR) {
        log_SCV_readAddressChannel_end(trans, delay);
      }else if (phase == xtlm::BEGIN_RDATA || phase == xtlm::BEGIN_RDATA_LAST){
        log_SCV_readDataChannel_start(trans, delay);
      //}else if (phase == xtlm::BEGIN_RDATA_LAST){
      //  std::string id{std::to_string(trans.get_axi_id())};
      //  readCon[id]->beginDataTS.push_back(sc_core::sc_time_stamp());
      //  rDataCTimeMap[id].push_back(sc_core::sc_time_stamp());
      }
#endif
      status = (*tar_rd_skt)->nb_transport_bw(trans, phase, delay);
      if (status != tlm::TLM_ACCEPTED) {
#ifdef XILINX_SIMULATOR
        log_bw_read_end(phase, trans, delay);
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
        if (phase == xtlm::END_RDATA) {
        }else if (phase == xtlm::END_RDATA_LAST){
          log_SCV_readDataChannel_end(trans, delay);
        }
#endif
      }
    }
    return status;
  }

  void b_transport(xtlm::aximm_payload & trans, sc_core::sc_time& delay) {
    //Translate in user layer calls
    std::string socketName, log;
    if (trans.get_command() == xtlm::XTLM_WRITE_COMMAND) {

      socketName =  m_connection_info;
      if ( enableTLMTransactionLogMsgs() ) {
        log = "[inst:: " + socketName + "] b_transport|";
        log += "Time:: " + sc_core::sc_time_stamp().to_string() + "";
        xtlm::get_b_transport_log(trans, delay, log, 2);
        XSC_REPORT_INFO(logger, "xtlm::1110", log.c_str());
      }
#ifdef __DEBUG_ON__
      std::cout << __func__ << " before log_writes in b_transport" << std::endl;
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      sc_core::sc_time zDelay{SC_ZERO_TIME};
      log_SCV_writeAddressChannel_start(trans, zDelay);
      log_SCV_writeAddressChannel_end(trans, zDelay);
      log_SCV_writeDataChannel_start(trans, zDelay);
      log_SCV_writeDataChannel_end(trans, zDelay);
#endif
      log_writes(trans);
      (*init_wr_skt)->b_transport(trans, delay);
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      log_SCV_writeRespChannel_start(trans, zDelay);
      log_SCV_writeRespChannel_end(trans, zDelay);
#endif
    }
    else if (trans.get_command() == xtlm::XTLM_READ_COMMAND) {
      socketName =  m_connection_info;

      if ( enableTLMTransactionLogMsgs() ) {
        log = "[inst:: " + socketName + "] b_transport|";
        log += "Time:: " + sc_core::sc_time_stamp().to_string() + "";
        xtlm::get_b_transport_log(trans, delay, log, 2);
        XSC_REPORT_INFO(logger, "xtlm::1110", log.c_str());
      }
#ifdef __DEBUG_ON__
      std::cout << __func__ << " before log_reads in b_transport" << std::endl;
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      sc_core::sc_time zDelay{SC_ZERO_TIME};
      log_SCV_readAddressChannel_start(trans, zDelay);
      log_SCV_readAddressChannel_end(trans, zDelay);
#endif
      log_reads(trans);
      (*init_rd_skt)->b_transport(trans, delay);
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      log_SCV_readDataChannel_start(trans, zDelay);
      log_SCV_readDataChannel_end(trans, zDelay);
#endif
    }

    if ( enableTLMTransactionLogMsgs() ) {
      log = "[inst:: " + socketName + "] b_transport (Return path) ";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "";
      xtlm::get_b_transport_log(trans, delay, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1110", log.c_str());
    }
  }

  unsigned int transport_dbg(xtlm::aximm_payload& trans) {
    //Translate in user layer calls
    unsigned int status = 0;
    std::string socketName, log;

    if (trans.get_command() == xtlm::XTLM_WRITE_COMMAND) {
      socketName =  m_connection_info;

      if ( enableTLMTransactionLogMsgs() ) {
        log += "[inst:: " + socketName + "] transport_dbg|";
        log += "Time:: " + sc_core::sc_time_stamp().to_string() ;
        xtlm::get_transport_dbg_log(trans, log, 2);
        XSC_REPORT_INFO(logger, "xtlm::1111", log.c_str());
      }
#ifdef __DEBUG_ON__
      std::cout << __func__ << " before log_writes in transport_dbg" << std::endl;
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      sc_core::sc_time zDelay{SC_ZERO_TIME};
      log_SCV_writeAddressChannel_start(trans, zDelay);
      log_SCV_writeAddressChannel_end(trans, zDelay);
      log_SCV_writeDataChannel_start(trans, zDelay);
      log_SCV_writeDataChannel_end(trans, zDelay);
#endif
      log_writes(trans);
      status = (*init_wr_skt)->transport_dbg(trans);
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      log_SCV_writeRespChannel_start(trans, zDelay);
      log_SCV_writeRespChannel_end(trans, zDelay);
#endif
    }
    else if (trans.get_command() == xtlm::XTLM_READ_COMMAND) {
      socketName =  m_connection_info;

      if ( enableTLMTransactionLogMsgs() ) {
        log += "[inst:: " + socketName + "] transport_dbg|";
        log += "Time:: " + sc_core::sc_time_stamp().to_string() ;
        xtlm::get_transport_dbg_log(trans, log, 2);
        XSC_REPORT_INFO(logger, "xtlm::1111", log.c_str());
      }
#ifdef __DEBUG_ON__
      std::cout << __func__ << " before log_reads in transport_dbg" << std::endl;
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      sc_core::sc_time zDelay{SC_ZERO_TIME};
      log_SCV_readAddressChannel_start(trans, zDelay);
      log_SCV_readAddressChannel_end(trans, zDelay);
#endif
      log_reads(trans);
      status = (*init_rd_skt)->transport_dbg(trans);    
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
      log_SCV_readDataChannel_start(trans, zDelay);
      log_SCV_readDataChannel_end(trans, zDelay);
#endif
    }

    if ( enableTLMTransactionLogMsgs() ) {
      log += "[inst:: " + socketName + "] transport_dbg (Return Path)|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "";
      xtlm::get_transport_dbg_log(trans, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1111", log.c_str());
    }

    return status;
  }

private:
  //std::string getEnvVar(std::string const & key);
  std::string getEnvVar(std::string const & key) {
    char *val = std::getenv(key.c_str());
    return val == NULL ? std::string("") : std::string(val);
  }
  //bool enableTLMTransactionLogMsgs();
  bool enableTLMTransactionLogMsgs()
  {
    std::transform(mRunTimeLogState.begin(), mRunTimeLogState.end(),
        mRunTimeLogState.begin(), ::tolower);
    if (mRunTimeLogState == "1" || mRunTimeLogState == "true")
    {
      return (mLogState == "WAVEFORM_AND_LOG" || mLogState == "LOG");
    }
    return false;
  }

  //bool enableTLMTransactionWaveForm();
  bool enableTLMTransactionWaveForm() {
    return (mLogState == "WAVEFORM_AND_LOG" || mLogState == "WAVEFORM");
  }

  //void log_fw_write_start(tlm::tlm_phase& phase, xtlm::aximm_payload& trans, sc_core::sc_time& delay);
  void log_fw_write_start(tlm::tlm_phase& phase,
      xtlm::aximm_payload& trans, sc_core::sc_time& delay) {

#ifdef XILINX_SIMULATOR
    if ( enableTLMTransactionWaveForm() ) {
      if (phase == xtlm::BEGIN_WADDR) {

#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " <<  "New write transaction started " << &trans << std::endl;
        trans_list[&trans] = count++;
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " BEGIN_WADDR" << std::endl;
#endif
        m_transactionLogger->log_write_address_start(&trans);
      }
      else if ( (phase == xtlm::BEGIN_WDATA_LAST || phase == xtlm::BEGIN_WDATA) && (!m_write_in_progress) ) {
        m_write_in_progress = true; 
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = "<< phase << std::endl;
#endif
        m_transactionLogger->log_write_data_start(&trans);
      }
      else if (phase == xtlm::END_WRESP) {
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_write_response_end(&trans);
      }
    }
#endif
    if ( enableTLMTransactionLogMsgs() ) {
      std::string log = "[inst:: " +  m_connection_info + "] nb_transport_fw|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "|";
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1114", log.c_str());
    }
  }
  

  //void log_fw_write_end(tlm::tlm_phase& phase, xtlm::aximm_payload& trans, sc_core::sc_time& delay);
  void log_fw_write_end(tlm::tlm_phase& phase,
      xtlm::aximm_payload& trans, sc_core::sc_time& delay) {

#ifdef XILINX_SIMULATOR
    if ( enableTLMTransactionWaveForm() ) {
      if (phase == xtlm::END_WADDR) {
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " << "New write transaction Ended " << &trans << std::endl;
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_write_address_end(&trans);
      }
      else if (phase == xtlm::END_WDATA_LAST /*|| phase == xtlm::END_WDATA*/) {
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_write_data_end(&trans);
        m_write_in_progress = false;
      }
      else if (phase == xtlm::BEGIN_WRESP) { //TODO:  In case of skip we should ensure whether the END_WDATA/LAST is called
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_write_response_start(&trans);
      }
    }
#endif

    if ( enableTLMTransactionLogMsgs() ) {
      std::string log = "[inst:: " +  m_connection_info + "] nb_transport_fw (Return Path)|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() ;
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1114", log.c_str());
    }
  }


  //void log_fw_read_start(tlm::tlm_phase& phase, xtlm::aximm_payload& trans, sc_core::sc_time& delay);
  void log_fw_read_start(tlm::tlm_phase& phase,
      xtlm::aximm_payload& trans, sc_core::sc_time& delay) {

#ifdef XILINX_SIMULATOR
    if ( enableTLMTransactionWaveForm() ) {
      if (phase == xtlm::BEGIN_RADDR) {
#ifdef __DEBUG_ON__
        std::cout << __func__ << " " << "New read transaction started " << &trans << std::endl;
        std::cout << __func__ << " " << trans_list[&trans] << " phase = " << phase << std::endl;
        trans_list[&trans] = count++;
#endif
        m_transactionLogger->log_read_address_start(&trans);
      }
      else if (phase == xtlm::END_RDATA_LAST || phase == xtlm::END_RDATA) {
#ifdef __DEBUG_ON__
        std::cout << __func__ << " " << trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_read_data_end(&trans);
      }
    }
#endif

    if ( enableTLMTransactionLogMsgs() ) {
      std::string log = "[inst:: " +  m_connection_info + "] nb_transport_fw|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() ;
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
    }
  }


  //void log_fw_read_end(tlm::tlm_phase& phase, xtlm::aximm_payload& trans, sc_core::sc_time& delay);
  void log_fw_read_end(tlm::tlm_phase& phase,
      xtlm::aximm_payload& trans, sc_core::sc_time& delay) {

#ifdef XILINX_SIMULATOR
    if ( enableTLMTransactionWaveForm() ) {
      if (phase == xtlm::END_RADDR) {
#ifdef __DEBUG_ON__
        std::cout << __func__ << " " << "New read transaction ended " << &trans << std::endl;
        std::cout << __func__ << " " << trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_read_address_end(&trans);
      }
      else if (phase == xtlm::BEGIN_RDATA_LAST || phase == xtlm::BEGIN_RDATA) { //TODO: If END_RADDR is skipped, we should make sure to call the address_end even
#ifdef __DEBUG_ON__
        std::cout << __func__ << " " << trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_read_data_start(&trans);
      }
    }
#endif

    if ( enableTLMTransactionLogMsgs() ) {
      std::string log = "[inst:: " +  m_connection_info + "] nb_transport_fw (Return Path)|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "";
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
    }
  }

  //void log_bw_write_start(tlm::tlm_phase& phase, xtlm::aximm_payload& trans, sc_core::sc_time& delay);
  void log_bw_write_start(tlm::tlm_phase& phase,
      xtlm::aximm_payload& trans, sc_core::sc_time& delay) {

#ifdef XILINX_SIMULATOR
    if ( enableTLMTransactionWaveForm() ) {
      if (phase == xtlm::END_WADDR) {
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " << "New bw write transaction ended " << &trans << std::endl;
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_write_address_end(&trans);
      }
      else if (phase == xtlm::END_WDATA_LAST /*|| phase == xtlm::END_WDATA*/) {
        m_write_in_progress = true;
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_write_data_end(&trans);
      }
      else if (phase == xtlm::BEGIN_WRESP) {
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_write_response_start(&trans);
      }
    }
#endif

    if ( enableTLMTransactionLogMsgs() ) {
      std::string log = "[inst:: " +  m_connection_info + "] nb_transport_bw|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "";
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1116", log.c_str());
    }
  }

  //void log_bw_write_end(tlm::tlm_phase& phase, xtlm::aximm_payload& trans, sc_core::sc_time& delay);
  void log_bw_write_end(tlm::tlm_phase& phase,
      xtlm::aximm_payload& trans, sc_core::sc_time& delay) {

#ifdef XILINX_SIMULATOR
    if ( enableTLMTransactionWaveForm() ) {
      if ((phase == xtlm::BEGIN_WDATA_LAST || phase == xtlm::BEGIN_WDATA) && (!m_write_in_progress) ) {
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_write_data_start(&trans);
        m_write_in_progress = true; 
      }
      else if (phase == xtlm::END_WRESP) {
#ifdef __DEBUG_ON__
        std::cout << __func__ <<  " " <<  trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_write_response_end(&trans);
      }
    }
#endif

    if ( enableTLMTransactionLogMsgs() ) {
      std::string log = "[inst:: " +  m_connection_info + "] nb_transport_bw (Return Path)|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "";
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1116", log.c_str());
    }
  }

  //void log_bw_read_start(tlm::tlm_phase& phase, xtlm::aximm_payload& trans, sc_core::sc_time& delay);
  void log_bw_read_start(tlm::tlm_phase& phase,
      xtlm::aximm_payload& trans, sc_core::sc_time& delay) {

#ifdef XILINX_SIMULATOR
    if ( enableTLMTransactionWaveForm() ) {
      if (phase == xtlm::END_RADDR) {
#ifdef __DEBUG_ON__
        std::cout << __func__ << " " << trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_read_address_end(&trans);
      }
      else if (phase == xtlm::BEGIN_RDATA_LAST || phase == xtlm::BEGIN_RDATA) {
#ifdef __DEBUG_ON__
        std::cout << __func__ << " " << trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_read_data_start(&trans);
      }
    }
#endif

    if ( enableTLMTransactionLogMsgs() ) {
      std::string log = "[inst:: " +  m_connection_info + "] nb_transport_bw|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "";
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1117", log.c_str());
    }
  }

  //void log_bw_read_end(tlm::tlm_phase& phase, xtlm::aximm_payload& trans, sc_core::sc_time& delay);
  void log_bw_read_end(tlm::tlm_phase& phase,
      xtlm::aximm_payload& trans, sc_core::sc_time& delay) {

#ifdef XILINX_SIMULATOR
    if ( enableTLMTransactionWaveForm() ) {
      if (phase == xtlm::END_RDATA_LAST || phase == xtlm::END_RDATA) {
#ifdef __DEBUG_ON__
        std::cout << __func__ << " " << trans_list[&trans] << " phase = " << phase << std::endl;
#endif
        m_transactionLogger->log_read_data_end(&trans);
      }
    }
#endif

    if ( enableTLMTransactionLogMsgs() ) {
      std::string log = "[inst:: " +  m_connection_info + "] nb_transport_bw (Return Path)|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "";
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      XSC_REPORT_INFO(logger, "xtlm::1117", log.c_str());
    }
  }

  //Log functions for b_transport and transport_dbg
  //void log_writes(xtlm::aximm_payload& trans);
  void log_writes( xtlm::aximm_payload& trans ) {
#ifdef XILINX_SIMULATOR
    if (enableTLMTransactionWaveForm()) {
      trans_list[&trans] = count++;
#ifdef __DEBUG_ON__
      std::cout << __func__ <<  " " << trans_list[&trans] << std::endl;
#endif
      m_transactionLogger->log_write_address_start(&trans);
      m_transactionLogger->log_write_address_end(&trans);
      m_transactionLogger->log_write_data_start(&trans);
      m_transactionLogger->log_write_data_end(&trans);
      m_transactionLogger->log_write_response_start(&trans);
      m_transactionLogger->log_write_response_end(&trans);
    }
#endif
  }
  //void log_reads(xtlm::aximm_payload& trans);
  void log_reads(xtlm::aximm_payload& trans) {
#ifdef XILINX_SIMULATOR
    if (enableTLMTransactionWaveForm()) {
      trans_list[&trans] = count++;
#ifdef __DEBUG_ON__
      std::cout << __func__ << " " << trans_list[&trans] << std::endl;
#endif
      m_transactionLogger->log_read_address_start(&trans);
      m_transactionLogger->log_read_address_end(&trans);
      m_transactionLogger->log_read_data_start(&trans);
      m_transactionLogger->log_read_data_end(&trans);
    }
#endif
  }

  //logging functions using SCV transaction objects
  void log_SCV_writeAddressChannel_start(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    std::string id{std::to_string(trans.get_axi_id())};
    std::string startAddr{static_cast<std::ostringstream&&>(std::ostringstream() << "0x" << std::hex << trans.get_address() ).str()};

    //std::string log{"@time" + sc_core::sc_time_stamp().to_string() + " phase begin addr Addr " + startAddr + "|" + std::string(name()) + "/WriteAddressChannel"};
    writeCon[&trans] = std::unique_ptr<streamContainer>(new streamContainer());
    writeCon[&trans]->beginTS = sc_core::sc_time_stamp();
    writeCon[&trans]->beginAddrTS = sc_core::sc_time_stamp();
    writeCon[&trans]->beginAddrDly = delay;
    writeCon[&trans]->startPhase = "BEGIN_WADDR";
    writeCon[&trans]->txN = "#" + std::to_string(cmpltdWrTx);

    pndngWrTx++;

    //scv_tr_db* wd = scv_tr_db::get_default_db();
    //log += "| recording enabled for scv_tr_db" + std::string((wd->get_recording())?"true":"false");
    //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
#endif
  }

  void log_SCV_writeAddressChannel_end(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    //std::string log{"@time" + sc_core::sc_time_stamp().to_string() +  "phase end addr Addr 0x" + std::to_string(trans.get_address())};
    //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());

    std::string id{std::to_string(trans.get_axi_id())};
    std::string startAddr{static_cast<std::ostringstream&&>(std::ostringstream() << "0x" << std::hex << trans.get_address() ).str()};
    std::string bSize{OSShex(trans.get_burst_size())};
    std::string bLen{std::to_string(trans.get_burst_length()) + " bytes"};
    std::string bType{[&]()->std::string{ uint32_t bt = trans.get_burst_type();
      switch(bt){
        case 0: return "FIXED"; break;
        case 1: return "INCR";  break;
        case 2: return "WRAP";  break;
        default: return "UNKNOWN"; break;
      }
    }()};

    std::string awlock{((trans.get_lock() == 0)?"Normal Access" : "Exclusive Access")};

    
    scv_tr_handle trhI = wag->begin_transaction(writeCon[&trans]->txN,  writeCon[&trans]->beginAddrTS);
    scv_tr_handle trhT = twag->begin_transaction(writeCon[&trans]->txN, writeCon[&trans]->beginAddrTS);
    trhI.record_attribute("AWID", id);
    trhI.record_attribute("AWADDR", startAddr);
    trhI.record_attribute("AWLEN",  bLen);
    trhI.record_attribute("AWSIZE", bSize);
    trhI.record_attribute("AWBURST", bType);
    trhI.record_attribute("AWLOCK", awlock);
    trhT.record_attribute("AWID", id);
    trhT.record_attribute("AWADDR", startAddr);
    trhT.record_attribute("AWLEN",  bLen);
    trhT.record_attribute("AWSIZE", bSize);
    trhT.record_attribute("AWBURST", bType);
    trhT.record_attribute("AWLOCK", awlock);

    //below compensates for zero time transactions, so that transaction don't start and end at same time
    sc_core::sc_time endDelay = [&]()->sc_core::sc_time{
      if( (sc_time_stamp() == writeCon[&trans]->beginAddrTS)){
        if (delay == writeCon[&trans]->beginAddrDly){
          return sc_time(1, SC_PS);    //zerotime TX, replace time with 1 clock cycle? as atleast 1 clock is consumed even if awready is asserted before awvalid
        }else {
          return (delay - writeCon[&trans]->beginAddrDly);
        }
      }else { //END_RESP was on bw path & simulation has advanced so no delay compensation required
        return SC_ZERO_TIME;
      }
    }();

    //consume delay before ending transaction
    sc_core::sc_spawn(
        [this, trhI, trhT, endDelay]() {
        wait(endDelay);
        wag->end_transaction(trhI, sc_core::sc_time_stamp());
        twag->end_transaction(trhT, sc_core::sc_time_stamp());
        }
        );
#endif
  }

  void log_SCV_writeDataChannel_start(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    sc_core::sc_time curSimTime = sc_core::sc_time_stamp();
    if (writeCon.find(&trans) != writeCon.end()) {
      writeCon[&trans]->beginDataTS.push_back(curSimTime);
      writeCon[&trans]->beginDataDly.push_back(delay);
    }else {
      writeCon[&trans] = std::unique_ptr<streamContainer>(new streamContainer());
      writeCon[&trans]->beginTS = curSimTime;
      writeCon[&trans]->beginAddrTS = curSimTime;
      writeCon[&trans]->beginAddrDly = delay;
      writeCon[&trans]->startPhase = "BEGIN_WDATA_LAST";
      writeCon[&trans]->txN = "#" + std::to_string(cmpltdWrTx);
      writeCon[&trans]->beginDataTS.push_back(curSimTime);
      writeCon[&trans]->beginDataDly.push_back(delay);
    }
#endif
  }

  void log_SCV_writeDataChannel_end(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    if(writeCon[&trans]->startPhase == "BEGIN_WDATA_LAST"){
      log_SCV_writeAddressChannel_end(trans, delay);
    }
    
    std::string id{std::to_string(trans.get_axi_id())};
    //writeCon[&trans]->beginDataTS.push_back(sc_core::sc_time_stamp());
    //std::string log{"phase is xtlm:BEGIN_WDATA_LAST"};
    //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
    //std::string logt;
    //trans.get_log(logt, 3);
    //XSC_REPORT_INFO(logger, "xtlm::1115", logt.c_str());
    uint8_t *data = trans.get_data_ptr();
    unsigned dataLen = trans.get_data_length();
    uint8_t *byt = trans.get_byte_enable_ptr();
    unsigned byteLen = trans.get_byte_enable_length();

    std::vector<uint8_t> dataWordV;
    std::vector<uint8_t> dataByteV;
    for(unsigned byte=0; byte<dataLen; byte++){
      //std::string log{"accessing data byte " + std::to_string(byte) + " | value= " + std::to_string(*(data+byte))};
      //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
      dataWordV.push_back(*(data+byte));
    }
    for(unsigned byte=0; byte<byteLen; byte++){
      dataByteV.push_back(*(byt+byte));
    }
    std::stringstream dataW;
    std::for_each(dataWordV.begin(), dataWordV.end(), [&](uint8_t i){dataW << std::hex <<(unsigned)i << " ";});
    std::stringstream dataB;
    std::for_each(dataByteV.begin(), dataByteV.end(), [&](uint8_t i){dataB << std::hex <<(unsigned)i << " ";});

    std::string dataWord{dataW.str()};
    std::string dataEn{dataB.str()};
    sc_core::sc_time absStart = writeCon[&trans]->beginDataTS.front();
    sc_core::sc_time absStartDly = writeCon[&trans]->beginDataDly.front();

    scv_tr_handle dhI = wdg->begin_transaction(writeCon[&trans]->txN, absStart);
    scv_tr_handle dhT = twdg->begin_transaction(writeCon[&trans]->txN, absStart);
    dhI.record_attribute("WDATA", dataWord);
    dhI.record_attribute("WSTRB", dataEn);
    dhT.record_attribute("WDATA", dataWord);
    dhT.record_attribute("WSTRB", dataEn);

    //below compensates for zero time transactions, so that transaction don't start and end at same time
    sc_core::sc_time endDelay = [&]()->sc_core::sc_time{
      if(sc_time_stamp() == absStart){   //no delay was consumed in END_REQ
        if (delay == absStartDly){
          return sc_time(1, SC_PS);    //zerotime TX, replace time with 1 clock cycle? as atleast 1 clock is consumed even if awready is asserted before awvalid
        }else {
          return (delay - absStartDly);
        }
      }else { //END_RESP was on bw path & simulation has advanced so no delay compensation required
        return SC_ZERO_TIME;
      }
    }();

    //wait delay before ending transaction
    sc_core::sc_spawn(
      [this, dhI, dhT, endDelay]() {
        wait(endDelay);
        wdg->end_transaction(dhI, sc_core::sc_time_stamp());
        twdg->end_transaction(dhT, sc_core::sc_time_stamp());
      }
    );
#endif
  }

  void log_SCV_writeRespChannel_start(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    if (writeCon.find(&trans) != writeCon.end()) {
      writeCon[&trans]->beginRespTS = sc_core::sc_time_stamp();
      writeCon[&trans]->beginRespDly = delay;
    }
#endif
  }

  void log_SCV_writeRespChannel_end(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    sc_core::sc_time curTS = sc_core::sc_time_stamp();
    std::string log{"@time" + sc_core::sc_time_stamp().to_string() +  "phase end_wresp 0x" + std::to_string(trans.get_address())};
    XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
    std::string id{std::to_string(trans.get_axi_id())};
    log.clear();
    log += "id =" + id + " begin Bresp transaction @time " + writeCon[&trans]->beginRespTS.to_string();
    XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
    std::string  responseString = trans.get_response_string();
    scv_tr_handle tI = wrg->begin_transaction(writeCon[&trans]->txN, writeCon[&trans]->beginRespTS);
    scv_tr_handle tT = twrg->begin_transaction(writeCon[&trans]->txN,writeCon[&trans]->beginRespTS);

    //scv_tr_handle ths = wrhs->begin_transaction(wRespCTimeMap[id], "mti_phase", tI);
    //ths.record_attribute("BVALID", 1);
    //if( (curTS -  wRespCTimeMap[id]) <= sc_time(1,SC_PS) ){
    //  ths.record_attribute("BREADY", 1);
    //  wrhs->end_transaction(ths, curTS);
    //}else {
    //  ths.record_attribute("BREADY", 0);
    //  wrhs->end_transaction(ths, curTS-sc_time(1,SC_PS));
    //  scv_tr_handle thse = wrhs->begin_transaction( (curTS-sc_time(1,SC_PS)) , "mti_phase", tI);
    //  thse.record_attribute("BVALID", 1);
    //  thse.record_attribute("BREADY", 1);
    //  wrhs->end_transaction(ths, curTS);
    //}

    //log.clear();
    //log += "ending Bresp transaction @time " + sc_core::sc_time_stamp().to_string();
    //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
    tI.record_attribute("BID", id);
    tI.record_attribute("BRESP", responseString);
    tT.record_attribute("BID", id);
    tT.record_attribute("BRESP", responseString);

    scv_tr_handle sktI = wrStats->begin_transaction("mark"+writeCon[&trans]->txN, writeCon[&trans]->beginTS);
    scv_tr_handle sktT = twrStats->begin_transaction("mark"+writeCon[&trans]->txN, writeCon[&trans]->beginTS);

    //below compensates for zero time transactions, so that transaction don't start and end at same time
    sc_core::sc_time endDelay = [&]()->sc_core::sc_time{
      if( (sc_time_stamp() == writeCon[&trans]->beginRespTS)){
        if (delay == writeCon[&trans]->beginRespDly){
          return sc_time(1, SC_PS);    //zerotime TX, replace time with 1 clock cycle? as atleast 1 clock is consumed even if awready is asserted before awvalid
        }else {
          return (delay - writeCon[&trans]->beginRespDly);
        }
      }else { //END_RESP was on bw path & simulation has advanced so no delay compensation required
        return SC_ZERO_TIME;
      }
    }();

    //consume delay before ending transaction
    sc_core::sc_spawn(
      [this, sktI, sktT, tI, tT, endDelay]() {
        wait(endDelay);
        wrg->end_transaction(tI, sc_core::sc_time_stamp());
        twrg->end_transaction(tT, sc_core::sc_time_stamp());
        wrStats->end_transaction(sktI, sc_core::sc_time_stamp());
        twrStats->end_transaction(sktT, sc_core::sc_time_stamp());
      }
    );
    pndngWrTx--;
    cmpltdWrTx++;
    writeCon.erase(&trans);
#endif
  }

  void log_SCV_readAddressChannel_start(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    //std::string log{"@time" + sc_core::sc_time_stamp().to_string() + " phase begin addr Addr " + startAddr + "|" + std::string(name()) + "/WriteAddressChannel"};
    readCon[&trans] = std::unique_ptr<streamContainer>(new streamContainer());
    readCon[&trans]->beginTS = sc_core::sc_time_stamp();
    readCon[&trans]->beginAddrTS = sc_core::sc_time_stamp();
    readCon[&trans]->beginAddrDly = delay;
    readCon[&trans]->startPhase = "BEGIN_RADDR";
    readCon[&trans]->txN = "#" + std::to_string(cmpltdRdTx);
#endif
  }

  void log_SCV_readAddressChannel_end(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    //std::string log{"@time" + sc_core::sc_time_stamp().to_string() +  "phase end addr Addr 0x" + std::to_string(trans.get_address())};
    //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());

    std::string id{std::to_string(trans.get_axi_id())};
    std::string startAddr{static_cast<std::ostringstream&&>(std::ostringstream() << "0x" << std::hex << trans.get_address() ).str()};
    std::string bSize{OSShex(trans.get_burst_size())};
    std::string bLen{std::to_string(trans.get_burst_length()) + " bytes"};
    std::string bType{[&]()->std::string{ uint32_t bt = trans.get_burst_type();
      switch(bt){
        case 0: return "FIXED"; break;
        case 1: return "INCR";  break;
        case 2: return "WRAP";  break;
        default: return "UNKNOWN"; break;
      }
    }()};
    std::string arlock{((trans.get_lock() == 0)?"Normal Access" : "Exclusive Access")};

    scv_tr_handle trhI = rag->begin_transaction(readCon[&trans]->txN, readCon[&trans]->beginAddrTS);
    scv_tr_handle trhT = trag->begin_transaction(readCon[&trans]->txN, readCon[&trans]->beginAddrTS);
    trhI.record_attribute("ARID", id);
    trhI.record_attribute("ARADDR", startAddr);
    trhI.record_attribute("ARLEN",  bLen);
    trhI.record_attribute("ARSIZE", bSize);
    trhI.record_attribute("ARBURST", bType);
    trhI.record_attribute("ARLOCK", arlock);
    trhT.record_attribute("ARID", id);
    trhT.record_attribute("ARADDR", startAddr);
    trhT.record_attribute("ARLEN",  bLen);
    trhT.record_attribute("ARSIZE", bSize);
    trhT.record_attribute("ARBURST", bType);
    trhT.record_attribute("ARLOCK", arlock);


    //below compensates for zero for write transactions, so that transaction don't start and end at same time
    sc_core::sc_time endDelay = [&]()->sc_core::sc_time{
      if( (sc_time_stamp() == readCon[&trans]->beginAddrTS)){
        if (delay == readCon[&trans]->beginAddrDly){
          return sc_time(1, SC_PS);    //replace time with 1 clock cycle, as atleast 1 clock is consumed even if awready is asserted before awvalid
        }else {
          return (delay - readCon[&trans]->beginAddrDly);
        }
      }else { //END_RESP was on bw path & simulation has advanced so no delay compensation required
        return SC_ZERO_TIME;
      }
    }();

    //consume delay before ending transaction
    sc_core::sc_spawn(
      [this,trhI, trhT, endDelay]() {
        wait(endDelay);
        rag->end_transaction(trhI, sc_core::sc_time_stamp());
        trag->end_transaction(trhT, sc_core::sc_time_stamp());
      }
    );

#endif
  }

  void log_SCV_readDataChannel_start(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    sc_core::sc_time curSimTime = sc_core::sc_time_stamp();
    //std::string logA{"phase is xtlm:BEGIN_RDATA"};
    //logA += OSS("@ time " << curSimTime);
    //XSC_REPORT_INFO(logger, "xtlm::1115", logA.c_str());
    if (readCon.find(&trans) != readCon.end()) {
      readCon[&trans]->beginDataTS.push_back(curSimTime);
      readCon[&trans]->beginDataDly.push_back(delay);
    }
#endif
  }

  void log_SCV_readDataChannel_end(xtlm::aximm_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    std::string id{std::to_string(trans.get_axi_id())};
    //std::string log{"@time" + sc_core::sc_time_stamp().to_string() +"inside log_SCV_readDataChannel"};
    //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
    //std::string logt;
    //trans.get_log(logt, 3);
    //XSC_REPORT_INFO(logger, "xtlm::1115", logt.c_str());
    uint8_t *data = trans.get_data_ptr();
    unsigned dataLen = trans.get_data_length();
    std::vector<uint8_t> dataWordV;
    for(unsigned byte=0; byte<dataLen; byte++){
      dataWordV.push_back(*(data+byte));
    }
    std::stringstream dataW;
    std::for_each(dataWordV.begin(), dataWordV.end(), [&](uint8_t i){dataW << std::hex <<(unsigned)i << " ";});
    std::string dataWord{OSShex(dataW.str())};
    sc_core::sc_time absStart    = readCon[&trans]->beginDataTS.front();
    sc_core::sc_time absStartDly = readCon[&trans]->beginDataDly.front();

    scv_tr_handle dhI = rdg->begin_transaction(readCon[&trans]->txN,  absStart);
    scv_tr_handle dhT = trdg->begin_transaction(readCon[&trans]->txN, absStart);
    dhI.record_attribute("RDATA", dataWord);
    dhT.record_attribute("RDATA", dataWord);

    scv_tr_handle sktI = rdStats->begin_transaction(readCon[&trans]->txN, readCon[&trans]->beginTS);
    scv_tr_handle sktT = trdStats->begin_transaction(readCon[&trans]->txN, readCon[&trans]->beginTS);

    //below compensates for zero time transactions, so that transaction don't start and end at same time
    sc_core::sc_time endDelay = [&]()->sc_core::sc_time{
      if(sc_time_stamp() == absStart){   //no delay was consumed in END_REQ
        if (delay == absStartDly){
          return sc_time(1, SC_PS);    //zerotime TX, replace time with 1 clock cycle? as atleast 1 clock is consumed even if awready is asserted before awvalid
        }else {
          return (delay - absStartDly);
        }
      }else { //END_RESP was on bw path & simulation has advanced so no delay compensation required
        return SC_ZERO_TIME;
      }
    }();

    //wait delay before ending transaction
    sc_core::sc_spawn(
      [this, sktI, sktT, dhI, dhT, endDelay]() {
        wait(endDelay);
        rdg->end_transaction(dhI, sc_core::sc_time_stamp());
        trdg->end_transaction(dhT, sc_core::sc_time_stamp());
        rdStats->end_transaction(sktI, sc_core::sc_time_stamp());
        trdStats->end_transaction(sktT, sc_core::sc_time_stamp());
      }
    );
    
    cmpltdRdTx++;
    readCon.erase(&trans);
#endif
  }

  xsc::common_cpp::report_handler logger;
  std::string mLogState, mRunTimeLogState;
  std::map<xtlm::aximm_payload*, int> trans_list;
  std::string m_connection_info;
  bool m_write_in_progress;
  int count;
  unsigned int cmpltdWrTx;
  unsigned int cmpltdRdTx;
  unsigned int pndngWrTx;
};
