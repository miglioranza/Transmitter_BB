
//**********************************************************************
// Copyright (c) 2013-2018 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   TLM structural DDRMC module, with clock and functional binding
//
//**********************************************************************
#ifndef _NOCDdrMcXtlm_h_
#define _NOCDdrMcXtlm_h_

#include "properties.h"
#include "xtlm.h"
#include <memory>
#include <string>
#include <map>

namespace SimHrdIP { namespace FuncSim  {
template <typename PacketT, typename NppFlitT> class BehDDRSlaveUnit;
}}

class NOCDdrMcXtlm : public sc_core::sc_module {
public:

  NOCDdrMcXtlm( sc_core::sc_module_name nm, const xsc::common_cpp::properties& _properties );
  ~NOCDdrMcXtlm();
  
  //! \brief sc ports
  template <typename T> using sc_optional_in = sc_core::sc_port
                                               <sc_core::sc_signal_in_if<bool>, 1,
                                                sc_core::SC_ZERO_OR_MORE_BOUND>;  
  
  sc_core::sc_in_clk              mc_clk;       // controller clock
  sc_optional_in<bool>            mc_rst_n;
  //This is a test signal that is enabled only in debug mode. 
  //We are adding this signal to view ddrmc_clk frequency in 
  //waveforms. To enable viewing the signal environment
  //variable DBG_NOC_CLK_FREQ must be set.
  sc_core::sc_signal<bool> test_ddrmc_clk;

  template <typename PacketT, typename NppFlitT>
  void bindFunc( SimHrdIP::FuncSim::BehDDRSlaveUnit<PacketT, NppFlitT>& );
  
private:
  virtual void before_end_of_elaboration();  
  virtual void end_of_elaboration();  
  virtual void start_of_simulation();
  virtual void end_of_simulation();

  class Detail; std::unique_ptr<Detail> m_detail;
};

#endif



