
//**********************************************************************
// Copyright (c) 2013-2019 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   AXI TLM Extensions
//
//**********************************************************************
#include "TlmExtDef.h"

namespace xsc { namespace tlm_ext {

template class SingleValTlmExt< UniqPktId::type>              ;
template class SingleValTlmExt< AxiInfo>;

}}
