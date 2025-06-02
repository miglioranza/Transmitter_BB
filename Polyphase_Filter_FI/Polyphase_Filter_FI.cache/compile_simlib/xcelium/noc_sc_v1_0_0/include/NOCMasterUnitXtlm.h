
//**********************************************************************
// Copyright (c) 2013-2018 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   TLM structural NMU, with functional binding
//
//**********************************************************************
#ifndef _NOCMasterUnitXtlm_h_
#define _NOCMasterUnitXtlm_h_

#include "properties.h"
#include "xtlm.h"
#include <memory>
#include <string>
#include <map>

namespace SimHrdIP { namespace FuncSim  {
template <typename PacketT, typename NppFlitT> class MasterUnit;
}}

class NOCMasterUnitXtlm : public sc_core::sc_module {
public:

  NOCMasterUnitXtlm( sc_core::sc_module_name nm, const xsc::common_cpp::properties& _properties );
  ~NOCMasterUnitXtlm();
  
  //! \brief sc ports
  sc_core::sc_in_clk              aclk;
  template <typename T> using sc_optional_in = sc_core::sc_port
                                               <sc_core::sc_signal_in_if<bool>, 1,
                                                sc_core::SC_ZERO_OR_MORE_BOUND>;  

  sc_optional_in<bool>            aresetn;
  sc_optional_in<bool>            tbclk;        // timebase clock
  xtlm::xtlm_aximm_target_socket  arr_socket;   // AR/R: Read  channels of AXIMM
  xtlm::xtlm_aximm_target_socket  awb_socket;   // AW/B: Write channels of AXIMM
  xtlm::xtlm_axis_target_socket   at_socket;    // AT  : Transfer channel of AXIS
  
private:
  virtual void before_end_of_elaboration();
  virtual void end_of_elaboration();  
  virtual void start_of_simulation();
  virtual void end_of_simulation();

  class Detail; std::unique_ptr<Detail> m_detail;
};

#endif



