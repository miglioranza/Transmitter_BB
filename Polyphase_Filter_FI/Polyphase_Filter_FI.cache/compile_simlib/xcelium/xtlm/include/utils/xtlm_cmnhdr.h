
// (c) Copyright(C) 2013 - 2018 by Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

#ifndef _UTILS_XTLM_CMNHDR_H_
#define _UTILS_XTLM_CMNHDR_H_

#include "utils/xtlm_cmndefs.h"

//Keeping old fix for Windows
#if defined(_MSC_VER) || defined(__MINGW32__) || defined(__MINGW64__)
#ifndef XILINX_SIMULATOR
#if __cplusplus>201103L
namespace std {extern char* gets( char* );}
#endif
#endif
#else
//limiting it to linux only
// work around the c++14 ::gets mess
#if defined(__cplusplus) && __cplusplus>201103L
#include <cstdio>
#if __GLIBC_PREREQ(2,15) && defined(_GNU_SOURCE)
// stdio properly undefines gets for c++14 : fake it here
namespace std {extern char* gets( char* );}
#else
// stdio improperly edfines gets, use it...
namespace std {using ::gets;}
#endif
#endif
#endif
//

/* Includes */
#include <systemc>

// oddity in aldec's TLM installation: no <tlm>
#if defined(SC_ALD_EXT)
#include <tlm.h>
#else
#include <tlm>
#endif

using namespace sc_core;
using namespace sc_dt;
#endif /* _UTILS_XTLM_CMNHDR_H_ */


