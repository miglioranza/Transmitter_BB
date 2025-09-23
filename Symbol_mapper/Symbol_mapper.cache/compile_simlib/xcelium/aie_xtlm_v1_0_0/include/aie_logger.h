
/*  (c) Copyright 2014 - 2018 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.                       */

#ifndef __AIE_LOGGER___
#define __AIE_LOGGER___

#include <fstream>
#include <map>
#include <iomanip>
#include <iostream>
#include "xtlm.h"

//#ifdef AIE_DBG_TRACE                  
#define LOG_TRANS(logger, trans)      \
    if(logger != NULL)    {           \
    logger->log_trans(&trans);        \
    }    
//#else
//#define LOG_TRANS(logger, trans)   do{}while(0);
//#endif

namespace xsc {
namespace aie {

    class aie_logger
    {
        public:
            aie_logger(const std::string name);
            static aie_logger* get_logger(std::string name) 
            {
                if(loggerList.find(name) == loggerList.end()) {
                    loggerList[name] = new aie_logger(name + ".log"); 
                }
                return loggerList[name];
            }

            //For AXI-MM transaction logging
            void log_trans(const xtlm::aximm_payload* payload);

            //For AXI-Stream transaction logging
            void log_trans(const xtlm::axis_payload* payload);
            void set_narror_trans(bool val) { is_narrow_trans = val; }

        private:
            void print_msg(std::string msg);
            static std::map<std::string, aie_logger*>  loggerList;
            std::ostream* out;
            bool is_narrow_trans;
    };
}  // aie
} // xsc


#endif //__AIE_LOGGER___
