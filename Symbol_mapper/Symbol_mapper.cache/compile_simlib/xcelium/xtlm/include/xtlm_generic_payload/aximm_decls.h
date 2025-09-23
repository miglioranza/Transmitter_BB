
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

#ifndef _XTLM_GENERIC_PAYLOAD_AXIMM_DECLS_H_
#define _XTLM_GENERIC_PAYLOAD_AXIMM_DECLS_H_

namespace xtlm {
#define XAXI_BURST_FIXED  0
#define XAXI_BURST_INCR   1
#define XAXI_BURST_WRAP   2
#define XAXI_ARCACHE_DEVICE_NON_BUFFERABLE                0
#define XAXI_ARCACHE_DEVICE_BUFFERABLE                    1
#define XAXI_ARCACHE_NORMAL_NON_CACHABLE_NON_BUFFERABLE   2
#define XAXI_ARCACHE_NORMAL_NON_CACHABLE_BUFFERABLE       3
#define XAXI_ARCACHE_WRITE_THROUGH_NO_ALLOCATE            10
#define XAXI_ARCACHE_WRITE_THROUGH_READ_ALLOCATE          14
#define XAXI_ARCACHE_WRITE_THROUGH_WRITE_ALLOCATE         10
#define XAXI_ARCACHE_WRITE_THROUGH_READ_AND_WRITE_ALLOCATE 14
#define XAXI_ARCACHE_WRITE_BACK_NO_ALLOCATE               11
#define XAXI_ARCACHE_WRITE_BACK_READ_ALLOCATE             15
#define XAXI_ARCACHE_WRITE_BACK_WRITE_ALLOCATE            11
#define XAXI_ARCACHE_WRITE_BACK_READ_AND_WRITE_ALLOCATE   15

#define XAXI_AWCACHE_DEVICE_NON_BUFFERABLE                0
#define XAXI_AWCACHE_DEVICE_BUFFERABLE                    1
#define XAXI_AWCACHE_NORMAL_NON_CACHABLE_NON_BUFFERABLE   2
#define XAXI_AWCACHE_NORMAL_NON_CACHABLE_BUFFERABLE       3
#define XAXI_AWCACHE_WRITE_THROUGH_NO_ALLOCATE            6
#define XAXI_AWCACHE_WRITE_THROUGH_READ_ALLOCATE          6
#define XAXI_AWCACHE_WRITE_THROUGH_WRITE_ALLOCATE         14
#define XAXI_AWCACHE_WRITE_THROUGH_READ_AND_WRITE_ALLOCATE 14
#define XAXI_AWCACHE_WRITE_BACK_NO_ALLOCATE               7
#define XAXI_AWCACHE_WRITE_BACK_READ_ALLOCATE             7
#define XAXI_AWCACHE_WRITE_BACK_WRITE_ALLOCATE            15
#define XAXI_AWCACHE_WRITE_BACK_READ_AND_WRITE_ALLOCATE   15

#define XAXI_PROT_UNPREVILEGED_ACCESS 0
#define XAXI_PROT_PREVILEGED_ACCESS   1
#define XAXI_PROT_SECURE_ACCESS       0
#define XAXI_PROT_UNSECURE_ACCESS     2
#define XAXI_PROT_DATA_ACCESS         0
#define XAXI_PROT_INSTRUCTION_ACCESS  4
}

#endif /* _XTLM_GENERIC_PAYLOAD_AXIMM_DECLS_H_ */


