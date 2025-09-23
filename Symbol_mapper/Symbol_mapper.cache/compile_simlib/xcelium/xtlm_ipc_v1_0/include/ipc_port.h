
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
#include <thread>
#include <mutex>

#include "report_handler.h"
#include "thread_safe_event.h"
#include "ipc_socket.h"
#include <atomic>

namespace xsc {

    class ipc_port 
    {
        public:
            //! Create a socket and assosiate with the port number
            ipc_port(std::string& ipi_name);


            //! Read or Write from TCP socket
            bool read_data(unsigned char*  data, unsigned int& length);
            void write_data(void* data, int  length);
            void wait_on_connection();
            bool is_socket_ready();
            void disconnect();

            //!Method which will span a std::thread to get data from socket
            //This is expected to call after simulation is started as Questa don't support
            //async_request_update in elaboration or simulation callbacks
            void accept_data();
            //! SystemC event notification when data is available on TCP/other socket
            const xsc::thread_safe_event& event();

            //! To clean up the resources and clean exit for child threads...
            ~ipc_port();

        private:
            void notify();
            bool is_read_data(timeval&);

            std::atomic<ipc_socket*> m_socket;
            std::string m_ipi_name;
            fd_set m_fd_set;

            std::thread *m_thread; //!< Thread to handle blocking read calls
            bool m_break_thread;
            std::mutex  mtx;
            xsc::thread_safe_event read_data_event; //!< Event to trigger Sysc Method

            xsc::common_cpp::report_handler m_logger;
            std::condition_variable m_pause_thread; //!< Condition variable to pause std::thread
            std::mutex m_pause_t_mutex;
            bool m_sysc_read;

    };

};

