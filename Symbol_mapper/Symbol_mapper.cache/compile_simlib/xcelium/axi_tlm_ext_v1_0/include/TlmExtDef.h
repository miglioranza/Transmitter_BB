
//**********************************************************************
// Copyright (c) 2013-2019 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   AXI TLM Extensions
//
//**********************************************************************
#ifndef _xscTlmExtDef_h_
#define _xscTlmExtDef_h_

#include "xtlm.h" // includes <tlm> as well

namespace xsc     {
namespace tlm_ext {

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
    public TlmExtTraits<TlmProtocolT>::template TlmExt <SingleValTlmExt<T>>
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

typedef struct { uint16_t axId; uint16_t axSizeBytes; uint32_t axUser; } AxiInfo;
typedef SingleValTlmExt< AxiInfo >  AxiInfoTlmExt;
extern template class SingleValTlmExt< UniqPktId::type>              ;
extern template class SingleValTlmExt< AxiInfo>;

} // namespace tlm_ext
} // namespace xsc

#endif
