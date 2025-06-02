
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

#ifndef XAXI_DECLS
#define XAXI_DECLS
//This file should contain all macros, enums and typedefs required in entire
//infrastructure
#define XAXI_VALID 0
#define XAXI_READY 1
  //-----------------------------------------------
  //STREAM CHANNEL
#define XAXIS_ENUM_TVALID 0
#define XAXIS_ENUM_TREADY 1
#define XAXIS_ENUM_TDATA  2
#define XAXIS_ENUM_TSTRB  3
#define XAXIS_ENUM_TLAST  4
#define XAXIS_ENUM_TID    5
#define XAXIS_ENUM_TDEST  6
#define XAXIS_ENUM_TUSER  7
  //-----------------------------------------------
  //WRITE ADDRESS CHANNEL
#define XAXIMM_ENUM_AWVALID  	0
#define XAXIMM_ENUM_AWREADY  	1
#define XAXIMM_ENUM_AWID 		2
#define XAXIMM_ENUM_AWADDR 		3
#define XAXIMM_ENUM_AWLEN  		4
#define XAXIMM_ENUM_AWSIZE  	5
#define XAXIMM_ENUM_AWBURST  	6
#define XAXIMM_ENUM_AWLOCK   	7
#define XAXIMM_ENUM_AWCACHE  	8
#define XAXIMM_ENUM_AWPROT  	9
#define XAXIMM_ENUM_AWQOS  		10
#define XAXIMM_ENUM_AWREGION  	11
#define XAXIMM_ENUM_AWUSER  	12
  //-----------------------------------------------
  //WRITE DATA CHANNEL
#define XAXIMM_ENUM_WVALID		0
#define XAXIMM_ENUM_WREADY		1
#define XAXIMM_ENUM_WID 		2
#define XAXIMM_ENUM_WDATA		3
#define XAXIMM_ENUM_WSTRB		4
#define XAXIMM_ENUM_WLAST		5
#define XAXIMM_ENUM_WUSER		6
  //-----------------------------------------------
  //WRITE RESPONSE CHANNEL
#define XAXIMM_ENUM_BVALID		0
#define XAXIMM_ENUM_BREADY		1
#define XAXIMM_ENUM_BID 		2
#define XAXIMM_ENUM_BRESP		3
#define XAXIMM_ENUM_BUSER		4
  //-----------------------------------------------
  //READ ADDRESS CHANNEL
#define XAXIMM_ENUM_ARVALID  	0
#define XAXIMM_ENUM_ARREADY  	1
#define XAXIMM_ENUM_ARID 		2
#define XAXIMM_ENUM_ARADDR 		3
#define XAXIMM_ENUM_ARLEN  		4
#define XAXIMM_ENUM_ARSIZE  	5
#define XAXIMM_ENUM_ARBURST  	6
#define XAXIMM_ENUM_ARLOCK   	7
#define XAXIMM_ENUM_ARCACHE  	8
#define XAXIMM_ENUM_ARPROT  	9
#define XAXIMM_ENUM_ARQOS  		10
#define XAXIMM_ENUM_ARREGION  	11
#define XAXIMM_ENUM_ARUSER  	12
  //-----------------------------------------------
  //READ DATA CHANNEL
#define XAXIMM_ENUM_RVALID		0
#define XAXIMM_ENUM_RREADY		1
#define XAXIMM_ENUM_RID 		2
#define XAXIMM_ENUM_RDATA		3
#define XAXIMM_ENUM_RRESP		4
#define XAXIMM_ENUM_RLAST		5
#define XAXIMM_ENUM_RUSER		6


#define XAXI_TLM_EXTENSION 0
#define XAXI_PROTOCOL_EXTENSION 1
#endif




