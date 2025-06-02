
//**********************************************************************
// Copyright (c) 2013-2017 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   NPP tlm protocol types
//
//**********************************************************************
#ifndef _NocPktTransportTypes_h_
#define _NocPktTransportTypes_h_

#include "xtlm.h"
#include "NOCPktTypes.h"
#include "NOCNppTypes.h"

// Functional Packet traits implementation
namespace SimHrdIP {

namespace SC  {

struct UniqPktId {
  typedef uint64_t type;
  static type gen() { static type s_val = 0; return s_val++; }
};

template <typename TlmProtocolT> struct TlmExtTraits;
template <> struct TlmExtTraits<tlm::tlm_base_protocol_types> {
  template <typename T> using TlmExt = tlm::tlm_extension<T>;
};
template <> struct TlmExtTraits<xtlm::xtlm_aximm_protocol_types> {
  template <typename T> using TlmExt = xtlm::xtlm_extension<T>;
};
template <> struct TlmExtTraits<xtlm::xtlm_axis_protocol_types> {
  template <typename T> using TlmExt = xtlm::xtlm_extension<T>;
};

// TLM extensions: a generic type with a single value defined by a traits class
template<typename T, typename TlmProtocolT=tlm::tlm_base_protocol_types>
struct SingleValTlmExt :
    public TlmExtTraits<TlmProtocolT>::template TlmExt <SingleValTlmExt<T, TlmProtocolT>>
{
  using value_type = T;
  using TlmPayload = typename TlmProtocolT::tlm_payload_type;
  using TlmExt     = typename TlmExtTraits<TlmProtocolT>
                     ::template TlmExt <SingleValTlmExt<T>>;
  using TlmExtBase = typename std::remove_pointer
                     <decltype(std::declval<TlmExt>().clone())>::type;

  value_type value;
  SingleValTlmExt()
    : value( T() )
  {}
  SingleValTlmExt( T value_ )
    : value( value_ )
  {}
  virtual TlmExtBase* clone() const {
    SingleValTlmExt* pClone = new SingleValTlmExt();
    pClone->value = value;
    return pClone;
  }
  virtual void copy_from( TlmExtBase const &ext ) {
    value = (static_cast<const SingleValTlmExt&>( ext )).value;
  }
  static T getVal( const TlmPayload& cTxn ) {
    SingleValTlmExt* pExt = NULL;
    // tlm_gp extension mechanism is not const friendly. Do this here so
    // argument may be const
    auto& txn = const_cast<TlmPayload&>( cTxn );
    txn.get_extension( pExt );
    return pExt->value;
  }
  static void setVal( TlmPayload& txn, T value ) {
    SingleValTlmExt* pExt = NULL;
    txn.get_extension( pExt );
    pExt->value = value;
  }
  static SingleValTlmExt* addIfNotPresent( TlmPayload& txn ) {
    SingleValTlmExt* pExt = NULL;
    txn.get_extension( pExt );
    if ( !pExt ) {
      // Note that extensions added by set_extension are sticky (see Systemc LRM)
      // This means as generic_payload objects are allocated and recycled by the
      // mm pool they come with an existing ext. The extension will be deleted
      // when the txn is destructed. No delete necessary in this class.
      pExt = new SingleValTlmExt();
      txn.set_extension( pExt );
    }
    return pExt;
  }
  // overload with a value to set atomically
  static SingleValTlmExt* addIfNotPresent( TlmPayload& txn, T val ) {
    auto pExt = addIfNotPresent( txn );
    pExt->value = val;
    return pExt;
  }
  // overload with a functor to set atomically (functor not called if present)
  template <typename GenT>
  static SingleValTlmExt* addIfNotPresent( TlmPayload& txn, GenT f) {
    SingleValTlmExt* pExt = nullptr;
    txn.get_extension( pExt );
    if ( !pExt ) {
      pExt = new SingleValTlmExt( f() );
      txn.set_extension( pExt );
    }
    return pExt;
  }  
};
// by definition don't copy a unique ID
template <> inline void SingleValTlmExt<UniqPktId, tlm::tlm_base_protocol_types>
::copy_from( tlm::tlm_extension_base const& ) { return; }
template <> inline void SingleValTlmExt<UniqPktId, xtlm::xtlm_aximm_protocol_types>
::copy_from( xtlm::xtlm_extension_base const& ) { return; }
template <> inline void SingleValTlmExt<UniqPktId, xtlm::xtlm_axis_protocol_types>
::copy_from( xtlm::xtlm_extension_base const& ) { return; }

// Would have liked to define the chop extension as a "private" nested class in
// the ChopPolicy (specialized in the .cxx file) but that would cheat the tlm
// extension static initialization and accessing this extension would crash...
typedef struct { tlm::tlm_generic_payload* pParent; uint16_t pos; } ChopInfo;
typedef struct { uint16_t axId; uint16_t axSizeBytes; uint32_t axUser; } AxiInfo;
extern template class SingleValTlmExt< FuncSim::VcTraits<>::type, tlm::tlm_base_protocol_types>;
extern template class SingleValTlmExt< FuncSim::DestIdTraits<>::type, tlm::tlm_base_protocol_types>;
extern template class SingleValTlmExt< UniqPktId::type, tlm::tlm_base_protocol_types>              ;
extern template class SingleValTlmExt< ChopInfo,tlm::tlm_base_protocol_types >;
extern template class SingleValTlmExt< AxiInfo, tlm::tlm_base_protocol_types>;
extern template class SingleValTlmExt< FuncSim::VcTraits<>::type, xtlm::xtlm_aximm_protocol_types>;
extern template class SingleValTlmExt< FuncSim::DestIdTraits<>::type, xtlm::xtlm_aximm_protocol_types>;
extern template class SingleValTlmExt< UniqPktId::type, xtlm::xtlm_aximm_protocol_types>;
extern template class SingleValTlmExt< ChopInfo, xtlm::xtlm_aximm_protocol_types>;
extern template class SingleValTlmExt< AxiInfo, xtlm::xtlm_aximm_protocol_types>;
extern template class SingleValTlmExt< FuncSim::VcTraits<>::type, xtlm::xtlm_axis_protocol_types>;
extern template class SingleValTlmExt< FuncSim::DestIdTraits<>::type, xtlm::xtlm_axis_protocol_types>;
extern template class SingleValTlmExt< UniqPktId::type, xtlm::xtlm_axis_protocol_types>;
extern template class SingleValTlmExt< ChopInfo, xtlm::xtlm_axis_protocol_types>;
extern template class SingleValTlmExt< AxiInfo, xtlm::xtlm_axis_protocol_types>;

typedef SingleValTlmExt< ::SimHrdIP::FuncSim::VcTraits<>::type    > VcTlmExt;
typedef SingleValTlmExt< ::SimHrdIP::FuncSim::DestIdTraits<>::type> DestIdTlmExt;
typedef SingleValTlmExt< ChopInfo>  ChopInfoTlmExt;
typedef SingleValTlmExt< AxiInfo >  AxiInfoTlmExt;

} // namespace SC
} // namespace SimHrdIP


#endif
