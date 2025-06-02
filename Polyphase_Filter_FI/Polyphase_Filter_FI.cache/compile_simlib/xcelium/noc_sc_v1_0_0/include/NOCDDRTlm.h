
//**********************************************************************
// Copyright (c) 2013-2016 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   TLM layer of DDR MC. This has 4 req and response ports
//   to connect to NoC
//
//**********************************************************************
#ifndef _NOCDDRTlm_h_
#define _NOCDDRTlm_h_

#include "tlm_cmnhdr.h"
#include <string>
#include <map>
#include "properties.h"
#include "NOCNppTypes.h"
#include "ipconfig/hip/Defs.h"

namespace SimHrdIP {
namespace SC {

class DDRTlm : public sc_core::sc_module {

public:
  
  DDRTlm( sc_core::sc_module_name, const xsc::common_cpp::properties& );
  ~DDRTlm();

  sc_core::sc_in_clk   mc_clock;
  sc_core::sc_in<bool> rst_n;

 
  template <typename FuncModelT> void bindFunc( FuncModelT& );
  
private:
  virtual void before_end_of_elaboration();  
  virtual void end_of_elaboration();  
  virtual void start_of_simulation();
  virtual void end_of_simulation();
  
  // void clockMethod();
  // void resetMethod();
  class Detail; Detail& m_detail;
};

}
}

#endif



