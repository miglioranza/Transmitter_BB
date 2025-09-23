
//**********************************************************************
// Copyright (c) 2013-2016 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   TLM behavioral NSU : traffic generator
//
//**********************************************************************
#ifndef _NOCSlaveUnitTlm_h_
#define _NOCSlaveUnitTlm_h_

#include "tlm_cmnhdr.h"
#include <string>
#include <map>
#include "properties.h"
#include "NOCNppTypes.h"
#include "tlm_utils/simple_initiator_socket.h"
#include "ipconfig/hip/Defs.h"

namespace SimHrdIP {

namespace FuncSim  {
template <typename PacketT, typename NppFlitT> class BehSlaveUnit;
template <typename PacketT, typename NppFlitT> class SlaveUnit;
}

namespace SC       {

class SlaveUnitTlm : public sc_core::sc_module {

  class Detail;
public:
  
  SlaveUnitTlm( sc_core::sc_module_name nm, const xsc::common_cpp::properties& );
  ~SlaveUnitTlm();

  sc_core::sc_in_clk   axi_clock;
  sc_core::sc_in<bool> rst_n;
  tlm_utils::simple_initiator_socket<Detail, 512> m_axi;

  
  //DevHrdIP::Definitions::AxiProt        getProt  () const;

  template <typename FuncModelT> void bindFunc( FuncModelT& );
  // specializations
  template <typename PacketT, typename NppFlitT> void bindFunc( SimHrdIP::FuncSim::BehSlaveUnit
                                              <PacketT, NppFlitT>& );
  template <typename PacketT, typename NppFlitT> void bindFunc( SimHrdIP::FuncSim::SlaveUnit
                                              <PacketT, NppFlitT>& );


private:
  virtual void before_end_of_elaboration();
  virtual void end_of_elaboration();  
  virtual void start_of_simulation();
  virtual void end_of_simulation();
  
  // void clockMethod();
  // void resetMethod();
  Detail& m_detail;
};

}
}

#endif



