
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
#define XTLM_AXIS_TRANSACTION_LOGGER_EXPORT XTLM_EXPORT
#else
#define XTLM_AXIS_TRANSACTION_LOGGER_EXPORT XTLM_IMPORT
#endif

#include "xtlm_generic_payload/xtlm_axis_phases.h"
#include "xtlm_generic_payload/axis_payload.h"

#include "report_handler.h"

#include "xtlm_interfaces/xtlm_axis_initiator_base.h"
#include "xtlm_interfaces/xtlm_axis_target_base.h"
#include "xtlm_sockets/xtlm_axis_initiator_socket.h"
#include "xtlm_sockets/xtlm_axis_target_socket.h"

#include "utils/xtlm_axis_transview.h"
#include "utils/xtlm_log_helper.h"

#ifdef XILINX_SIMULATOR
#include "sysc/xilinx/proxy_object.h"
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
#include <scv.h>
#endif

#include <queue>
#include <map>

class XTLM_AXIS_TRANSACTION_LOGGER_EXPORT xtlm_axis_transaction_logger : public sc_core::sc_module, public xtlm::xtlm_axis_initiator_base, public xtlm::xtlm_axis_target_base {
  SC_HAS_PROCESS(xtlm_axis_transaction_logger);
public:
  //xtlm_axis_transaction_logger(sc_core::sc_module_name p_name);
  xtlm_axis_transaction_logger(sc_core::sc_module_name p_name) :
    sc_core::sc_module(p_name), xtlm_axis_target_base("conn_target"),
    xtlm_axis_initiator_base("conn_initiator"), logger("xtlm_axis_transaction_logger") {

      init_skt = new xtlm::xtlm_axis_initiator_socket("init_skt", 32);
      tar_skt = new xtlm::xtlm_axis_target_socket("tar_skt", 32);

      init_skt->bind(*this);
      tar_skt->bind(*this);
      //transaction logger object
      m_transactionLogger = new xilinx_sc::xil_trace::axis_virtual_object("AXISVritualObject");

      mLogState = getEnvVar("XTLM_LOG_STATE");
      mRunTimeLogState = getEnvVar("ENABLE_XTLM_AXIS_LOG");

      logger.set_actions(xsc::common_cpp::INFO, xsc::common_cpp::LOG);
      count = 0;
    }
  ~xtlm_axis_transaction_logger() {}

  xtlm::xtlm_axis_target_socket* tar_skt;
  xtlm::xtlm_axis_initiator_socket* init_skt;

#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
  scv_tr_stream *initSktStrm;
  scv_tr_stream *targSktStrm;

  scv_tr_generator<std::string> *axisInit;
  scv_tr_generator<std::string> *axisTarg;
#endif

  xilinx_sc::xil_trace::axis_virtual_object *m_transactionLogger;

  //tlm::tlm_sync_enum nb_transport_fw(xtlm::axis_payload& trans, tlm::tlm_phase& phase, sc_core::sc_time& delay);
  /**
   * nb_transport_fw call from the master
   * @param trans is axis_transaction
   * @param phase is tlm_phase
   * @return type is a integer
   */
  tlm::tlm_sync_enum nb_transport_fw(xtlm::axis_payload& trans,
      tlm::tlm_phase& phase, sc_core::sc_time& delay) {

    log_fw_start(phase, trans, delay);

    tlm::tlm_sync_enum status = (*init_skt)->nb_transport_fw(trans, phase, delay);

    if (status != tlm::TLM_ACCEPTED) {
      log_fw_end(phase, trans, delay);
    }

    return status;
  }
  //tlm::tlm_sync_enum nb_transport_bw(xtlm::axis_payload& trans, tlm::tlm_phase& phase, sc_core::sc_time& delay);
  /**
   * nb_transport_bw call from the slave
   * @param trans is axis_transaction
   * @param phase is tlm_phase
   * @return type is a integer
   */
  tlm::tlm_sync_enum nb_transport_bw(xtlm::axis_payload& trans,
      tlm::tlm_phase& phase, sc_core::sc_time& delay) {

    log_bw_start(phase, trans, delay);

    tlm::tlm_sync_enum status = (*tar_skt)->nb_transport_bw(trans, phase, delay);
    return status;
  }

  //void b_transport(xtlm::axis_payload&  trans, sc_core::sc_time& delay);
  void b_transport(xtlm::axis_payload&  trans, sc_core::sc_time& delay) {

    //Translate in user layer calls

    std::string log;

    if ( enableTLMTransactionLogMsgs () ) {
      log = "[inst:: " + mConnectionInfo + "] b_transport|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "|";
      xtlm::get_b_transport_log(trans, delay, log, 2);
      log += "|";
      XSC_REPORT_INFO(logger, "xtlm::1010", log.c_str());
    }
#ifdef XILINX_SIMULATOR
    if(enableTLMTransactionWaveForm())
    {
      m_transactionLogger->log_start_data_transfer(&trans, delay);
    }
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    log_SCV_start(trans, delay);
#endif
    (*init_skt)->b_transport(trans, delay);

#ifdef XILINX_SIMULATOR
    if(enableTLMTransactionWaveForm())
    {
      m_transactionLogger->log_end_data_transfer(&trans, delay);
    }
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    log_SCV_StreamTX(trans,delay);
#endif
  }

  //unsigned int transport_dbg(xtlm::axis_payload& trans);
  unsigned int transport_dbg(xtlm::axis_payload& trans) {
    //Translate in user layer calls
    std::string log;

    if ( enableTLMTransactionLogMsgs () ) {
      log = "[inst:: " + mConnectionInfo + "] transport_dbg|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "|";
      xtlm::get_transport_dbg_log(trans, log, 2);
      log += "|";
      XSC_REPORT_INFO(logger, "xtlm::1011", log.c_str());
    }
#ifdef XILINX_SIMULATOR
    if(enableTLMTransactionWaveForm())
    {
      m_transactionLogger->log_start_data_transfer(&trans);

    }
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    sc_core::sc_time delay = SC_ZERO_TIME;
    log_SCV_start(trans, delay);
#endif

    unsigned int status = (*init_skt)->transport_dbg(trans);
#ifdef XILINX_SIMULATOR
    if(enableTLMTransactionWaveForm())
    {
      m_transactionLogger->log_start_data_transfer(&trans);
    }
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    log_SCV_StreamTX(trans,delay);
#endif
    return status;
  }

  //bool get_direct_mem_ptr(xtlm::axis_payload& trans, tlm::tlm_dmi& dmi_data);
    bool get_direct_mem_ptr(xtlm::axis_payload& trans, tlm::tlm_dmi& dmi_data) {
      //Translate in user layer calls

      std::string log;

      if ( enableTLMTransactionLogMsgs () ) {
        log = "[inst:: " + mConnectionInfo + "] direct_mem_ptr|";
        log += "Time:: " + sc_core::sc_time_stamp().to_string() + "|";
        xtlm::get_direct_mem_ptr_log(trans, dmi_data, log, 2);
        log += "|";
        XSC_REPORT_INFO(logger, "xtlm::1012", log.c_str());
      }

      bool status = (*init_skt)->get_direct_mem_ptr(trans, dmi_data);

      if ( enableTLMTransactionLogMsgs () ) {
        log = "[inst:: " + mConnectionInfo + "] direct_mem_ptr (Return Path)|";
        log += "Time:: " + sc_core::sc_time_stamp().to_string() + "|";
        xtlm::get_direct_mem_ptr_log(trans, dmi_data, log, 2);
        log += "|";
        XSC_REPORT_INFO(logger, "xtlm::1012", log.c_str());
      }

      return status;
    }

  //void setProxyRef(::sc_core::sc_object *masterInst, ::sc_core::sc_object *slaveInst, std::string masterSktCnt, std::string slaveSktCnt, xilinx_sc::xil_trace::axis_virtual_object *transactionObj);
    void setProxyRef(::sc_core::sc_object *masterInst, ::sc_core::sc_object *slaveInst,
        std::string masterSktCnt, std::string slaveSktCnt, xilinx_sc::xil_trace::axis_virtual_object *transactionObj) {
      mConnectionInfo = masterSktCnt + " <-> " + slaveSktCnt;
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
#if defined MTI_SYSTEMC
    std::string streamKind{"logger"};
#elif defined XM_SYSTEMC
    std::string streamKind{"TRANSACTOR"};
#endif
      initSktStrm = new scv_tr_stream((std::string(masterInst->name()) + "/" + masterSktCnt).c_str(), streamKind.c_str());
      targSktStrm = new scv_tr_stream((std::string(slaveInst->name())  + "/" + slaveSktCnt).c_str(), streamKind.c_str());

      axisInit = new scv_tr_generator<std::string>("STREAM", *initSktStrm, "AxiStreamStatistics");
      axisTarg = new scv_tr_generator<std::string>("STREAM", *targSktStrm, "AxiStreamStatistics");
#endif
#ifdef XILINX_SIMULATOR
      xilinx_sc::xil_trace::proxy_object *proxy_master_inst_0 = new xilinx_sc::xil_trace::proxy_object(masterSktCnt.c_str(), masterInst);
      xilinx_sc::xil_trace::proxy_object *proxy_slave_inst_0 = new xilinx_sc::xil_trace::proxy_object(slaveSktCnt.c_str(), slaveInst);
      proxy_master_inst_0->xsim_set_ref_obj(transactionObj);
      proxy_slave_inst_0->xsim_set_ref_obj(transactionObj);
#endif
    }

private:

    //std::string getEnvVar(std::string const & key);
    std::string getEnvVar(std::string const & key) {
      char *val = std::getenv(key.c_str());
      return val == NULL ? std::string("") : std::string(val);
    }

    //bool enableTLMTransactionLogMsgs();
    bool enableTLMTransactionLogMsgs() {
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
      return (mLogState == "WAVEFORM_AND_LOG"|| mLogState == "WAVEFORM");
    }

  //void log_fw_start(tlm::tlm_phase& phase, xtlm::axis_payload& trans, sc_core::sc_time& delay);
  void log_fw_start(tlm::tlm_phase& phase, xtlm::axis_payload& trans, sc_core::sc_time& delay) {
    std::string log;
    if (enableTLMTransactionLogMsgs()) {
      log = "[inst:: " + mConnectionInfo + "] nb_transport_fw|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "|";
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      log += "|";
      XSC_REPORT_INFO(logger, "xtlm::1013", log.c_str());
    }
#ifdef XILINX_SIMULATOR
    if(enableTLMTransactionWaveForm())
    {
      m_transactionLogger->log_start_data_transfer(&trans, delay);
    }
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    log_SCV_start(trans, delay);
#endif
  }

  //void log_fw_end(tlm::tlm_phase& phase, xtlm::axis_payload& trans, sc_core::sc_time& delay);
  void log_fw_end(tlm::tlm_phase& phase,
      xtlm::axis_payload& trans, sc_core::sc_time& delay) {

    std::string log;
    if ( enableTLMTransactionLogMsgs () ) {
      log = "[inst:: " + mConnectionInfo + "] nb_transport_fw (Return Path)|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "|";
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      log += "|";
      XSC_REPORT_INFO(logger, "xtlm::1013", log.c_str());
    }
#ifdef XILINX_SIMULATOR
    if(enableTLMTransactionWaveForm())
    {
      m_transactionLogger->log_end_data_transfer(&trans, delay);
    }
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    log_SCV_StreamTX(trans,delay);
#endif
  }

  //void log_bw_start(tlm::tlm_phase& phase, xtlm::axis_payload& trans, sc_core::sc_time& delay);
  void log_bw_start(tlm::tlm_phase& phase, xtlm::axis_payload& trans, sc_core::sc_time& delay) {

    std::string log;
    if ( enableTLMTransactionLogMsgs () ) {
      log = "[inst:: " + mConnectionInfo + "] nb_transport_bw|";
      log += "Time:: " + sc_core::sc_time_stamp().to_string() + "|";
      xtlm::get_nb_transport_log(trans, phase, delay, log, 2);
      log += "|";
      XSC_REPORT_INFO(logger, "xtlm::1014", log.c_str());
    }
#ifdef XILINX_SIMULATOR
    if(enableTLMTransactionWaveForm())
    {
      m_transactionLogger->log_end_data_transfer(&trans, delay);
    }
#endif
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    log_SCV_StreamTX(trans,delay);
#endif
  }

  void log_SCV_start(xtlm::axis_payload& trans, sc_core::sc_time& delay){
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    std::string tId{std::to_string(trans.get_tid())};
    streamStartTimeMap[&trans] = sc_core::sc_time_stamp();
    streamFwdelayMap[&trans] = delay;
#endif
  }

  //void log_SCV_StreamTX(xtlm::axis_payload& trans, sc_core::sc_time& delay);
  void log_SCV_StreamTX(xtlm::axis_payload& trans, sc_core::sc_time& delay) {
#if (defined MTI_SYSTEMC || defined XM_SYSTEMC) && defined(XSC_ENABLE_TLM_WAVEFORM)
    std::string tId{std::to_string(trans.get_tid())};
    std::string tDest{static_cast<std::ostringstream&&>(std::ostringstream() << "0x" << std::hex << trans.get_tdest() ).str()};
    std::string tLast{(trans.get_tlast() == true)?"true":"false"};

    uint8_t *tdata = trans.get_tdata_ptr();
    unsigned tdataLen = trans.get_tdata_length();

    uint8_t *tkeep = trans.get_tkeep_ptr();
    unsigned tkeepLen = trans.get_tkeep_length();

    uint8_t *tstrb = trans.get_tstrb_ptr();
    unsigned tstrbLen = trans.get_tstrb_length();

    uint8_t *tuser = trans.get_tuser_ptr();
    unsigned tuserLen = trans.get_tuser_length();

    std::vector<uint8_t> dataV;
    std::vector<uint8_t> keepV;
    std::vector<uint8_t> strbV;
    std::vector<uint8_t> userV;
    for(unsigned byte=0; byte<tdataLen; byte++){
      //std::string log{"accessing data byte " + std::to_string(byte) + " | value= " + std::to_string(*(data+byte))};
      //XSC_REPORT_INFO(logger, "xtlm::1115", log.c_str());
      dataV.push_back(*(tdata+byte));
    }
    for(unsigned byte=0; byte<tkeepLen; byte++){
      keepV.push_back(*(tkeep+byte));
    }
    for(unsigned byte=0; byte<tstrbLen; byte++){
      strbV.push_back(*(tstrb+byte));
    }
    for(unsigned byte=0; byte<tuserLen; byte++){
      userV.push_back(*(tuser+byte));
    }
    std::stringstream dataW;
    std::for_each(dataV.begin(), dataV.end(), [&](uint8_t i){dataW << std::hex <<(unsigned)i << " ";});
    std::stringstream dataK;
    std::for_each(keepV.begin(), keepV.end(), [&](uint8_t i){dataK << std::hex <<(unsigned)i << " ";});
    std::stringstream dataS;
    std::for_each(strbV.begin(), strbV.end(), [&](uint8_t i){dataS << std::hex <<(unsigned)i << " ";});
    std::stringstream dataU;
    std::for_each(userV.begin(), userV.end(), [&](uint8_t i){dataU << std::hex <<(unsigned)i << " ";});

    count++;
    std::string stat{"#" + count};

    scv_tr_handle dhi = axisInit->begin_transaction(stat, streamStartTimeMap[&trans]);
    scv_tr_handle dht = axisTarg->begin_transaction(stat, streamStartTimeMap[&trans]);
    dhi.record_attribute("TID", tId);
    dhi.record_attribute("TDEST", tDest);
    dhi.record_attribute("TLAST", tLast);
    dhi.record_attribute("TDATA", dataW.str());
    dhi.record_attribute("TLAST", dataK.str());
    dhi.record_attribute("TLAST", dataS.str());
    dhi.record_attribute("TLAST", dataU.str());

    dht.record_attribute("TID", tId);
    dht.record_attribute("TDEST", tDest);
    dht.record_attribute("TLAST", tLast);
    dht.record_attribute("TDATA", dataW.str());
    dht.record_attribute("TLAST", dataK.str());
    dht.record_attribute("TLAST", dataS.str());
    dht.record_attribute("TLAST", dataU.str());

    sc_core::sc_time endDelay = [&]()->sc_core::sc_time{
      if( (sc_time_stamp() == streamStartTimeMap[&trans])){
        if (delay == streamStartTimeMap[&trans]){
          return sc_time(1, SC_PS);    //replace time with 1 clock cycle, as atleast 1 clock is consumed even if awready is asserted before awvalid
        }else {
          return (delay - streamFwdelayMap[&trans]);
        }
      }else { //END_WADDR was on bw path, simulation has advanced so no delay compensation required
        return SC_ZERO_TIME;
      }
    }();

    //consume delay before ending transaction
    sc_core::sc_spawn(
        [this,dhi,dht,endDelay]() {
        wait(endDelay);
        axisInit->end_transaction(dhi, sc_core::sc_time_stamp());
        axisTarg->end_transaction(dht, sc_core::sc_time_stamp());
        });
#endif
  }

  xsc::common_cpp::report_handler logger;
  std::string mLogState, mRunTimeLogState;
  std::string mConnectionInfo;
  unsigned int count;
  std::map<xtlm::axis_payload*, sc_core::sc_time> streamStartTimeMap;
  std::map<xtlm::axis_payload*, sc_core::sc_time> streamFwdelayMap;
};
