
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
#ifndef _REPORT_HANDLER_H_
#define _REPORT_HANDLER_H_

#ifdef COMMON_CPP_DLL
#define REPORT_HANDLER_EXPORT COMMON_CPP_EXPORT
#else
#define REPORT_HANDLER_EXPORT COMMON_CPP_IMPORT
#endif
#include<iostream>
#include "report_handler_defines.h"
#include "common_cpp_cmnhdr.h"

namespace xsc {
namespace common_cpp {
class report_handler_impl;
class REPORT_HANDLER_EXPORT report_handler {
public:
	/*! Api to report message of type info/warning/error
	 *  @param id Unique ID for the message. Actions of message can be control using this ID
	 *  @param msg Message String
	 *  @param severity It is of type enum to define the nature of message
	 *  @param verbosity
	 */
	void report(std::string id, const char* msg, SEVERITY severity,
			VERBOSITY verbosity = MEDIUM);

	//Destructor
	~report_handler();

	void set_actions(SEVERITY, actions = UNSPECIFIED);
	void set_actions(std::string id, actions = UNSPECIFIED);
	void register_id(std::string id, SEVERITY,actions=UNSPECIFIED);

	void stop_after(SEVERITY, int limit = -1);
	void stop_after(std::string id, int limit = -1);

	void set_verbosity_level(VERBOSITY level);
	VERBOSITY get_verbosity_level() const;
	void get_saved_msgs(std::string& log,SEVERITY);

	void suppress(std::string id, bool);
	void suppress(SEVERITY, bool);
	void suppress(bool suppress);

	void make_warnings_errors(bool convertWarningsToError);

	report_handler(std::string model_name);

	//Diagnostic Message API's
	/**
	 * @brief Function to report Diagnostic Messages
	 * @param id is a unique ID for a category of messages
	 * @param msg is a diagnostic message
	 * @param verbosity is level of verbosity for the message.
	 */
	void dia_report(std::string id, const char* msg,
			VERBOSITY verbosity = MEDIUM);
private:
	report_handler_impl* mImpl;
};
}
}

#endif /* _REPORT_HANDLER_H_ */

#define XSC_REPORT_INFO( inst, id, msg )    \
    inst.report(  \
            id, msg, xsc::common_cpp::SEVERITY::INFO )

#define XSC_REPORT_INFO_VERB( inst, id, msg, verbosity )   \
    inst.report(                 \
                id, msg, xsc::common_cpp::SEVERITY::INFO, \
                xsc::common_cpp::VERBOSITY:: verbosity )

#define XSC_REPORT_WARNING( inst, id, msg ) \
    inst.report(  \
            id, msg, xsc::common_cpp::SEVERITY::WARNING )

#define XSC_REPORT_CRIT_WARN(inst, id, msg) \
	inst.report( \
			id, msg, xsc::common_cpp::SEVERITY::CRITICAL_WARNING )

#define XSC_REPORT_ERROR( inst, id, msg )  \
    inst.report( \
            id, msg, xsc::common_cpp::SEVERITY::ERROR )

#define XSC_REPORT_FATAL( inst, id, msg )  \
    inst.report( \
            id, msg, xsc::common_cpp::SEVERITY::FATAL )

#define DIA_REPORT(inst, id, ...) \
	inst.dia_report( \
			id, __VA_ARGS__)
//Ex : DIA_REPORT(inst, id, msg);
//EX : DIA_REPORT(inst, id, msg, DEBUG)

/*
#define DIA_REPORT(inst, id, msg, verbosity) \
	inst.dia_report( \
			id,msg,xsc::common_cpp::VERBOSITY::verbosity )
*/
