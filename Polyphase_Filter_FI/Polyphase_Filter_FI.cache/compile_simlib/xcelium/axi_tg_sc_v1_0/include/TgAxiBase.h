
//**********************************************************************
// Copyright (c) 2016-2018 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//  Base class for perf axi traffic generators
//
//**********************************************************************
#ifndef _xsc_axitg_TgBase_h_
#define _xsc_axitg_TgBase_h_

#include "xtlm.h"
#include <memory>
#include <functional>
#include "tlm_utils/simple_initiator_socket.h"
#include "report_handler.h"

namespace xsc    {
namespace axi_tg {

enum class Dckr_status {
  ENABLED, DISABLED
};

class DataIntegritySparseStorage;
class TgAxiBase;
class TgAxiTlm;
class TgAxiTxnIntf {
public:
  virtual ~TgAxiTxnIntf();
  virtual void init()    = 0; // make a new transaction
  virtual void setAddress   ( uint64_t ) = 0;
  virtual void setAxiSize   ( uint32_t ) = 0;
  virtual void setAxiId     ( uint32_t ) = 0;
  virtual void setAxiBurst  ( uint32_t ) = 0;
  virtual void setByteLength( uint32_t ) = 0;
  virtual void setDestId    ( uint32_t ) = 0;
  virtual void setData      ( uint8_t const*, int numBytes ) = 0;
  virtual void sendReq() = 0; // sends to underlying socket
};

class TgAxiSyncIntf {
public:
  virtual void signalEnd() = 0;
  virtual void waitTrig () = 0;
  virtual void sendTrig () = 0;
};

template <typename ProtocolT> class TgAxiTxnHandler;
template <typename ProtocolT> struct TlmProtTraits;
template <> struct TlmProtTraits<xtlm::xtlm_aximm_protocol_types> {
  using SktType = xtlm::xtlm_aximm_initiator_socket;
  using TxnType = xtlm::xtlm_aximm_protocol_types::tlm_payload_type;
};
template <> struct TlmProtTraits<xtlm::xtlm_axis_protocol_types> {
  using SktType = xtlm::xtlm_axis_initiator_socket;
  using TxnType = xtlm::xtlm_axis_protocol_types::tlm_payload_type;
};
template <> struct TlmProtTraits<tlm::tlm_base_protocol_types> {
  using SktType = tlm_utils::simple_initiator_socket<TgAxiTlm, 512>;
  using TxnType = tlm::tlm_base_protocol_types::tlm_payload_type;
};

struct Generic_barrier {
  
  //Constructors
  Generic_barrier() = default;
  Generic_barrier(
      uint64_t thld, uint64_t curv, std::function<bool (bool, bool)>&& lg);
  //Returns true if barrier must be release, i.e. systemC event must be triggered
  bool operator()(bool reqNRsp, bool rdNWr);
  explicit operator bool() const noexcept;

 private:
  uint64_t barrier_thld{0};
  uint64_t cur_cnt{0};
  std::function<bool (bool, bool)> trg_lg;
  bool is_enabled{false};
};

class TgAxiBase : public sc_core::sc_module
{
  friend class TgAxiUniform;
  friend class TgAxiVideo;
  friend class TgAxiCsv;
  template <typename ProtocolT> friend class TgAxiTxnHandler;
  friend class TgAxiXtlmWrStrmTxnHandler;
  friend class TgAxiXtlmWrTxnHandler;
  friend class TgAxiXtlmRdTxnHandler;
public:
  using TlmTraits  = TlmProtTraits<xtlm::xtlm_aximm_protocol_types>;
  enum Protocol{ PROT_AXI3, PROT_AXI4, PROT_AXIS };
  TgAxiBase( sc_core::sc_module_name nm, Protocol, uint16_t width );

  //static boost::random::mt19937     s_rndGen;
  const Protocol                    m_protocol;
  const uint16_t                    m_sktWidth;
  uint32_t                          m_tgId = 0;
  static common_cpp::report_handler s_report;
  sc_core::sc_in_clk   clk;         // mandated name to match IP pin
  sc_core::sc_in<bool> tg_rst_n;    // mandated name to match IP pin
  sc_core::sc_event m_genericEvent; 
  
  class RunPolicy {
  public:
    virtual void start( TgAxiBase& ) = 0;
    virtual void stop ( TgAxiBase& ) = 0;
    virtual void reset( TgAxiBase& ) = 0;
    virtual void get_resp( 
        bool,
        TlmTraits::TxnType const*)   = 0;

    virtual ~RunPolicy() = 0;
  };

  template <typename PolT, typename ...Args>
  void addTrafficPolicy( Args&&...args ) { // Pol must be a RunPolicy
    m_pol.reset( new PolT( std::forward<Args>(args)... ) );
  }

  //total BW for a master (aggregate from this master's traffic)
  float             m_readExpBw, m_writeExpBw;
  float             m_bwErrMargin;
  sc_core::sc_mutex m_rdMutex, m_wrMutex;

  std::string const& get_name() const;
  void construct_data_checker();
  void set_data_checker_status(Dckr_status e);
  Dckr_status get_data_checker_status() const;
  DataIntegritySparseStorage* get_data_checker_ptr();
  DataIntegritySparseStorage const* get_data_checker_ptr() const;
  double agents_clk_freq();
  bool create_generic_event(
      uint64_t nreq, std::function<bool (bool, bool)>&& lg);

  std::shared_ptr<TgAxiTxnIntf> get_rdtxn_socket() const;
  std::shared_ptr<TgAxiTxnIntf> get_wrtxn_socket() const;
  void waitNClk( int n=1 );

private:
  std::string       m_nm;
  uint64_t          m_readByteCount, m_writeByteCount;
  sc_core::sc_event m_writeCompleteEvent   , m_readCompleteEvent;
  sc_core::sc_event m_writeRespEvent       , m_readRespEvent;  
  sc_core::sc_time  m_lastWriteCompleteTime, m_lastReadCompleteTime; 
  std::unique_ptr<RunPolicy> m_pol; 
  Dckr_status                s_dckr;
  Generic_barrier            m_gbarer;

  void reset();
  uint64_t cur_req_rsp_cnt(std::function<bool (bool, bool)> const& lg) const;
  void    disp_if_error_rsp(xtlm::aximm_payload const* payload) const;
  virtual void cxt_dckr() = 0;
  virtual DataIntegritySparseStorage* get_dckr() = 0;
  virtual DataIntegritySparseStorage const* get_dckr() const = 0;

protected:
  uint64_t          m_readTxnCount{0} , m_writeTxnCount{0};
  uint64_t          m_readRespCount{0}, m_writeRespCount{0};
  sc_core::sc_event m_writeReadyEvent;
  sc_core::sc_event m_readReadyEvent; 

  void issuedReq( bool rdNWr, uint16_t numBytes );
  void receivedResp( bool rdNWr, TlmTraits::TxnType const* rsp_ptr);
  std::shared_ptr<TgAxiTxnIntf>  m_rdTxn, m_wrTxn;
  std::shared_ptr<TgAxiSyncIntf> m_sync;

  virtual void before_end_of_elaboration();
  virtual void start_of_simulation();
  virtual void end_of_simulation  ();

  // return pair is read first, write second
  std::pair<float, float>    getFinalBandwidths() const;
};

}
}


#endif


