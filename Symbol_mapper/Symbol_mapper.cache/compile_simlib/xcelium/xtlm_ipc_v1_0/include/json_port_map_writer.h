

// (c) Copyright(C) 2013 - 2019 by Xilinx, Inc. All rights reserved.
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

#pragma once

#include <string>
#include <fstream>
#include <stdio.h>

#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

namespace xsc {

    class json_port_map_writer
    {
        public:
            void add_port(std::string& name, unsigned int port_num)
            {
                port_map.put(name, port_num);

                std::string env_name;

                env_name = "IPC_PORT_MAP_FILE";
                file_name = getenv(env_name.c_str());

                if(file_name == NULL) {
                    std::cerr <<"JSON Port Map Writer: IPC_PORT_MAP_FILE is not specified !!! " <<std::endl;

                    //! Creates file in current directory
                    file_name = "ipc_port_map_file";
                } 

                //! open file for writing
                std::ofstream port_map_file(file_name);

                namespace pt = boost::property_tree;
                pt::write_json(port_map_file, port_map);
            }

            ~json_port_map_writer()
            {
                if(remove(file_name) != 0) {
                    std::cerr << "Deleting file "<< file_name <<std::endl;
                }
            }

        private:
            boost::property_tree::ptree port_map;
            const char* file_name;
    };
}


