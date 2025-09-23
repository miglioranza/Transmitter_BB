
// (c) Copyright 2013 - 2019 Xilinx, Inc. All rights reserved.
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
#ifndef _REPORT_HANDLER_CONTAINER_H_
#define _REPORT_HANDLER_CONTAINER_H_
#include<iostream>
#include<map>
#include<list>
#include <sstream>
#include "report_handler_defines.h"

namespace xsc {
namespace common_cpp {
class report_handler_impl;
class report_handler_container {
public:
	static report_handler_container* getInstance();
	void register_rp_handler(std::string& name, report_handler_impl* inst);
	void log_msg(const char* msg);
	void dia_msg(const char* msg);
	void set_log_file_name(std::string& name);
	void set_dia_file_name(std::string& name);
	void save_msg(const char* msg,SEVERITY severity);
	void get_saved_msgs(std::string& log,SEVERITY severity);
	~report_handler_container();
private:
	report_handler_container();
	std::map<std::string, std::list<report_handler_impl*> > mContainer;
	std::ofstream* mLogMsgs;
	std::ofstream* mDiaMsgs;
	std::string mLogFile;
	std::string mDiaFile;
	std::map<SEVERITY,std::stringstream> mStreamMsgs;
};
}
}

#endif /* _REPORT_HANDLER_CONTAINER_H_ */


