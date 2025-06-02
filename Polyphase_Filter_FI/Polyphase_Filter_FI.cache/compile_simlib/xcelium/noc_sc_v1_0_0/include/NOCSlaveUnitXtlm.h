
//**********************************************************************
// Copyright (c) 2013-2018 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   TLM structural NSU, with functional binding
//
//**********************************************************************
#ifndef _NOCSlaveUnitXtlm_h_
#define _NOCSlaveUnitXtlm_h_

#include "properties.h"
#include "xtlm.h"
#include <memory>
#include <string>
#include <map>

namespace SimHrdIP { namespace FuncSim  {
template <typename PacketT, typename NppFlitT> class SlaveUnit;
}}

class NOCSlaveUnitXtlm : public sc_core::sc_module {
public:

  NOCSlaveUnitXtlm( sc_core::sc_module_name nm, const xsc::common_cpp::properties& _properties );
  ~NOCSlaveUnitXtlm();

  //! \brief sc ports
  sc_core::sc_in_clk                aclk;

  template <typename T> using sc_optional_in = sc_core::sc_port
                                               <sc_core::sc_signal_in_if<bool>, 1,
                                                sc_core::SC_ZERO_OR_MORE_BOUND>;  
  sc_optional_in<bool>              aresetn;
  xtlm::xtlm_aximm_initiator_socket arr_socket; // AR/R: Read  channels of AXIMM
  xtlm::xtlm_aximm_initiator_socket awb_socket; // AW/B: Write channels of AXIMM
  xtlm::xtlm_axis_initiator_socket  at_socket;  // AT  : Transfer channel of AXIS

private:
  virtual void before_end_of_elaboration();  
  virtual void end_of_elaboration();  
  virtual void start_of_simulation();
  virtual void end_of_simulation();
  
  class Detail; std::unique_ptr<Detail> m_detail;
};

#endif



