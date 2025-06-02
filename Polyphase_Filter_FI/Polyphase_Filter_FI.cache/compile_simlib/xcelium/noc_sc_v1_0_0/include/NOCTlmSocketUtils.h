
//**********************************************************************
// Copyright (c) 2013-2016 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   stub classes to restrict a tlm socket to nb_transport semantics only
//
//**********************************************************************
#ifndef _NOCTlmSocketUtils_h_
#define _NOCTlmSocketUtils_h_

#include "utils/xtlm_cmnhdr.h"
#include "NOCObjPool.h"
#include "NOCPktTransportTypes.h"

namespace SimHrdIP {

// specialization with tlm_mm interface for TLM payload
template<>
class ObjPool< ::tlm::tlm_generic_payload> : public tlm::tlm_mm_interface,
                                             private boost::pool<>
{
public:
  typedef ::tlm::tlm_generic_payload value_type;
  ObjPool() : boost::pool<>( sizeof(value_type), 1, 1 ) {}
  value_type* construct() {
    bool poolWasEmpty = boost::pool<>::empty();
    void* pv = boost::pool<>::malloc();
    value_type* pt = poolWasEmpty ? new (pv ) value_type :
                     static_cast<value_type*>( pv );
    pt->set_mm( this );
    // stick a unique pkt ID extension on it
    using PktIdExt = ::SimHrdIP::SC::SingleValTlmExt
                     < ::SimHrdIP::SC::UniqPktId::type, tlm::tlm_base_protocol_types>;
    PktIdExt::addIfNotPresent( *pt );
    PktIdExt::setVal( *pt, SC::UniqPktId::gen() );
    //
    return pt;
  }
  virtual void free( value_type* t ) {
    // Next line commented out to let extensions stay sticky
    // (reset() would call free_entire_cache)
    //t->reset(); 
    boost::pool<>::free( (void*)t );
  }
};


namespace SC  {

template <typename TYPES>
class TlmNbTransportFwOnly : public tlm::tlm_fw_transport_if<TYPES>
{
  typedef typename TYPES::tlm_payload_type TRANS;
  typedef typename TYPES::tlm_phase_type   PHASE;
private:
  virtual void b_transport(TRANS&, sc_core::sc_time&) {}
  virtual bool get_direct_mem_ptr(TRANS&, tlm::tlm_dmi&) { return false; }
  virtual unsigned int transport_dbg(TRANS&) { return 0; }
};

template <typename TYPES>
class TlmNbTransportBwOnly : public tlm::tlm_bw_transport_if<TYPES>
{
  typedef typename TYPES::tlm_payload_type TRANS;
  typedef typename TYPES::tlm_phase_type   PHASE;
private:
  virtual void b_transport(TRANS&, sc_core::sc_time&) {}
  void invalidate_direct_mem_ptr(sc_dt::uint64, sc_dt::uint64) {}
  virtual bool get_direct_mem_ptr(TRANS&, tlm::tlm_dmi&) { return false; }
  virtual unsigned int transport_dbg(TRANS&) { return 0; }
};

}
}


#endif


