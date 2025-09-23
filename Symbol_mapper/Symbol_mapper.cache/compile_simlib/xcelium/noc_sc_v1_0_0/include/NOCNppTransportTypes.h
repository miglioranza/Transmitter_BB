
//**********************************************************************
// Copyright (c) 2013-2017 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   NPP tlm protocol types
//
//**********************************************************************
#ifndef _NocNppTransportTypes_h_
#define _NocNppTransportTypes_h_

#include "NOCNppTypes.h"
#include "NOCPktTypes.h"
#include <tlm>

namespace SimHrdIP {
namespace SC  {

struct NppTlmProtocolFw
{
  typedef ::SimHrdIP::FuncSim::NppFlitAttr<void> tlm_payload_type;
  //typedef tlm::tlm_generic_payload tlm_payload_type;
  typedef tlm::tlm_phase                         tlm_phase_type;
};
struct NppTlmProtocolBw
{
  typedef ::SimHrdIP::FuncSim::VcTraits<>::type  tlm_payload_type;
  typedef tlm::tlm_phase                         tlm_phase_type;
};

} // namespace SC

// Functional Packet traits implementation
namespace FuncSim {
/*
template <> template <> // double specialization Traits class + static function
inline VcTraits<>::type VcTraits<>::get( const tlm::tlm_generic_payload& txn ) {
  return ::SimHrdIP::SC::VcTlmExt::getVal( txn );
}
template <> template <>
inline void VcTraits<>::set( tlm::tlm_generic_payload& txn, VcTraits<>::type vc ) {
  ::SimHrdIP::SC::VcTlmExt::setVal( txn, vc );
}
*/
} // namespace FuncSim

} // namespace SimHrdIP

#endif



