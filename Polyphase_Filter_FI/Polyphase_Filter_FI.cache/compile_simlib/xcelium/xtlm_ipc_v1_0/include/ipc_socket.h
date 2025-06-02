
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
#include <thread>
#include <mutex>
#include <condition_variable>

#include "report_handler.h"

#ifdef WIN_TCP
#include "json_port_map_writer.h"
#endif

namespace xsc
{

class ipc_socket
{
public:
	ipc_socket(std::string ipi_name);
	operator int();
	void wait_on_connection();
	bool is_socket_ready() const;
	void close_socket();
	void disconnect();
	~ipc_socket();

private:
	int socket_fd;		//!< Socket file descriptor
	bool socket_ready;	//!< variable to check the status of socket
	void sk_open(std::string ipi_name); //!< Function to open socket connection
	std::string m_name;	//!< Instance Name
	std::string m_sock_name; //!< Socket Name based on conditions
	std::string m_invoked_dir;	//!< directory path from which program is invoked
	xsc::common_cpp::report_handler m_logger;
	bool m_is_server;	//!< status variable to check if current socket acts as server

	void set_sock_path_and_change_dir();
	void restore_directory();
	std::mutex mtx;
	std::condition_variable cv;

#ifdef WIN_TCP
            //! port map writer
            static json_port_map_writer port_map;
#endif

};
}

