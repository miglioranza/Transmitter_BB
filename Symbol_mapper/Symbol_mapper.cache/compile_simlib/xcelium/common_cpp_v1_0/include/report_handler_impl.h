
// (c) Copyright 2013 - 2020 Xilinx, Inc. All rights reserved.
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

#include "report_handler_defines.h"
#include <map>
#include <fstream>
#include "report_handler_container.h"
#include <iostream>

#ifndef _REPORT_HANDLER_IMPL_H_
#define _REPORT_HANDLER_IMPL_H_

namespace xsc {
namespace common_cpp {
class report_handler_impl {
public:
	report_handler_impl(std::string& name);
	//Destructor
	~report_handler_impl();

	msg_def* register_id(std::string &id, SEVERITY);

	bool is_warning_became_errors() {
		return mMakeWarningsErrors;
	}

	int get_verbosity_level() {
		return mVerbosityLevel;
	}

	bool is_suppressed(std::string &id);
	bool is_suppressed(SEVERITY);

	unsigned int get_count(SEVERITY);
	unsigned int get_count(std::string &id);
	void get_saved_msgs(std::string& log,SEVERITY);

	actions execute(msg_def*, SEVERITY&);

	msg_def* mdlookup(std::string &id);

	void construct_msg(SEVERITY severity_, std::string &id, msg_def* md,
			const actions& actions, const char* msg);

	void construct_dia_msg(std::string &id, const char* msg);

	actions mSevActions[MAX_SEVERITY];
	actions mDefaultSevActions[MAX_SEVERITY];
	unsigned mSevLimit[MAX_SEVERITY];
	unsigned mSevCallCount[MAX_SEVERITY];
	bool mSuppress[MAX_SEVERITY];
	std::map<std::string, bool> mSuppressIds;
	VERBOSITY mVerbosityLevel;
	VERBOSITY mDiaVerbosityLevel;
	bool mMakeWarningsErrors;
	bool m_verbosity_through_env;
	bool m_dia_verbosity_through_env;
private:
	report_handler_container* m_container;
	std::map<std::string, msg_def*> mRegisteredMsgs;
};
}
}

#endif /* _REPORT_HANDLER_IMPL_H_ */


