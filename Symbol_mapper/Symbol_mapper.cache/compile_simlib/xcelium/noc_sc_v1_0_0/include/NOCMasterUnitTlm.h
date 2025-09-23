
//**********************************************************************
// Copyright (c) 2013-2016 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   TLM structural NMU, with functional binding
//
//**********************************************************************
#ifndef _NOCMasterUnitTlm_h_
#define _NOCMasterUnitTlm_h_

#include "tlm_cmnhdr.h"
#include <string>
#include "properties.h"
#include "NOCNppTypes.h"
#include "tlm_utils/simple_target_socket.h"

namespace SimHrdIP {

namespace FuncSim  {
template <typename PacketT, typename NppFlitT> class BehMasterUnit;
template <typename PacketT, typename NppFlitT> class MasterUnit;
}

namespace SC       {

class MasterUnitTlm : public sc_core::sc_module {
public:


  MasterUnitTlm( sc_core::sc_module_name nm, const xsc::common_cpp::properties& );
  ~MasterUnitTlm();

  //! \brief port accessors
  sc_core::sc_in_clk   axi_clock;
  sc_core::sc_in_clk   tb_clock;
  sc_core::sc_in<bool> rst_n;

  // traffic gen interface
  class Detail;
  tlm_utils::simple_target_socket<Detail, 512> m_axi;
 
  //DevHrdIPDefinitions::AxiProt          getProt  () const;

  template <typename FuncModelT> void bindFunc( FuncModelT& );
  // specializations
  template <typename PacketT, typename NppFlitT> void bindFunc( SimHrdIP::FuncSim::BehMasterUnit
                                              <PacketT, NppFlitT>& );
  template <typename PacketT, typename NppFlitT> void bindFunc( SimHrdIP::FuncSim::MasterUnit
                                              <PacketT, NppFlitT>& );
  
private:
  virtual void before_end_of_elaboration();  
  virtual void end_of_elaboration();  
  virtual void start_of_simulation();
  virtual void end_of_simulation();

  SC_HAS_PROCESS(MasterUnitTlm);
  void clockMethod();
  void tbclockMethod();
  void resetMethod();
  Detail& m_detail;
};

}
}

#endif



