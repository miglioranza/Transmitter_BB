
//**********************************************************************
// Copyright (c) 2016-2018 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//  Top module for tlm--based perf axi traffic generators
//
//**********************************************************************
#ifndef _xsc_axitg_TgTlm_h_
#define _xsc_axitg_TgTlm_h_

#include "TgAxiBase.h"
#include "properties.h"

namespace xsc    {
namespace axi_tg {
class TgAxiTlm : public TgAxiBase {
public:
  using TlmTraits = TlmProtTraits<tlm::tlm_base_protocol_types>;
  TgAxiTlm( sc_core::sc_module_name, const xsc::common_cpp::properties& );
  TlmTraits::SktType axi_socket; // unified socket axi-mm, axi-strm

  tlm::tlm_sync_enum axiTransportBw( TlmTraits::TxnType&,
                                     tlm::tlm_phase&, sc_core::sc_time& );
private:
  void end_of_simulation() override;
  void cxt_dckr() override;
  DataIntegritySparseStorage* get_dckr() override;
  DataIntegritySparseStorage const* get_dckr() const override;
};

}
}

#endif


