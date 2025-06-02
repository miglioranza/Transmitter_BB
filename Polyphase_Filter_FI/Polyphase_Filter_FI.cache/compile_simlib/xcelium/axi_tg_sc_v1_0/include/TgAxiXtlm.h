
//**********************************************************************
// Copyright (c) 2016-2018 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//  Top module for xtlm based perf axi traffic generators
//
//**********************************************************************
#ifndef _xsc_axitg_TgXtlm_h_
#define _xsc_axitg_TgXtlm_h_

#include "TgAxiBase.h"
#include "properties.h"
#include "extensions/xtlm_axis_side_band_extensions.h"
#define NOC_NMU_USR_DST_WIDTH 12
#define NOC_XTLM_AXIS_SIDE_2_WIDTH 64

namespace xsc    {
namespace axi_tg {
template <typename TlmProtTraits> class TgAxiXtlm {};
template <> class TgAxiXtlm<xtlm::xtlm_aximm_protocol_types> : public TgAxiBase {
public:
  using TlmTraits  = TlmProtTraits<xtlm::xtlm_aximm_protocol_types>;

  TgAxiXtlm( sc_core::sc_module_name, const xsc::common_cpp::properties& );
  virtual ~TgAxiXtlm();
  virtual void start_of_simulation();
  
  // AXI sockets - separate for rd and wr
  xtlm::xtlm_aximm_initiator_socket arr_socket; // AR/R: Read   channels of AXIMM
  xtlm::xtlm_aximm_initiator_socket awb_socket; // AW/B: Write  channels of AXIMM

  // synchronization pins - names to match IP module
  sc_core::sc_in < bool > trigger_in;
  sc_core::sc_out< bool > trigger_out;
  sc_core::sc_in < bool > axi_tg_start;
  sc_core::sc_out< bool > axi_tg_done;

  // noc dest id - names to match IP module
  sc_core::sc_out< sc_dt::sc_bv<12> > nmu_wr_usr_dst;
  sc_core::sc_out< sc_dt::sc_bv<12> > nmu_rd_usr_dst;

  xsc::common_cpp::properties m_props;
  uint32_t m_dicMismatches = 0;
  
  bool checkData( const TlmTraits::TxnType* ) const;
  void end_of_simulation  () override;

 private:
  std::shared_ptr<DataIntegritySparseStorage> m_dic;

  void cxt_dckr() override;
  DataIntegritySparseStorage* get_dckr() override;
  DataIntegritySparseStorage const* get_dckr() const override;
  
};

template <> class TgAxiXtlm<xtlm::xtlm_axis_protocol_types> : public TgAxiBase {
public:
  using TlmTraits  = TlmProtTraits<xtlm::xtlm_axis_protocol_types>;

  TgAxiXtlm( sc_core::sc_module_name, const xsc::common_cpp::properties& );

  // AXI socket
  xtlm::xtlm_axis_initiator_socket at_socket; // T  channel of AXI-STRM

  // synchronization pins - names to match IP module
  sc_core::sc_in < bool > trigger_in;
  sc_core::sc_out< bool > trigger_out;
  sc_core::sc_in < bool > axi_tg_start;
  sc_core::sc_out< bool > axi_tg_done;

  // noc dest id - names to match IP module
  sc_core::sc_out< sc_dt::sc_bv<12> > nmu_wr_usr_dst;
  sc_core::sc_out< sc_dt::sc_bv<12> > nmu_rd_usr_dst;

  xsc::common_cpp::properties m_props;

  void end_of_simulation  () override;
 private:
  void cxt_dckr() override;
  DataIntegritySparseStorage* get_dckr() override;
  DataIntegritySparseStorage const* get_dckr() const override;
};

}
}

#endif


