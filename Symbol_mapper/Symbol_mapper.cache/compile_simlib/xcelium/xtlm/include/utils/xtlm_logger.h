
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

#ifndef __XTLM_LOGGER_H__
#define __XTLM_LOGGER_H__

#include <ios>
#include <iostream>
#include <cstdio>
#include <map>
#include <string>

namespace xtlm {

    class stream_logger
    {
        public:
            stream_logger(std::ostream &stream_): stream(stream_) {}

            void log_msg(const std::string& name, const char* msg)
            {
                stream << name <<" :";
                stream << msg ;
                stream.flush();
            }

            std::ostream& get_ostream()
            { return stream; }

            std::ostream& stream;
    };

    stream_logger* get_stream_logger();
    void set_stream_logger(stream_logger* logger);

    class xtlm_logger 
    {
        public:
            enum log_level
            {
                ERROR = 0,
                WARN,
                DEBUG
            };

            xtlm_logger(const std::string& name);

            void printf(log_level l, const char *fmt)
            {
                if(l > m_log_level)
                    return;

                char msg[200]; //!<allocate enough space to store string
                sprintf(msg, fmt);
                get_stream_logger()->log_msg(m_name, msg);
            }

            template <typename T1>
                void printf(log_level l, const char *fmt, const T1 &arg1)
                {
                    if(l > m_log_level)
                        return;

                    char msg[200]; 
                    sprintf(msg, fmt, arg1);
                    get_stream_logger()->log_msg(m_name, msg);
                }

            template <typename T1, typename T2>
                void printf(log_level l, const char *fmt,const T1 &arg1,const T2 &arg2)
                {
                    if(l > m_log_level)
                        return;

                    char msg[200]; 
                    sprintf(msg, fmt, arg1, arg2);
                    get_stream_logger()->log_msg(m_name, msg);
                }

            xtlm_logger& operator << (log_level l) 
            {
                if(l <= m_log_level) {
                    is_print_on = true;
                    get_stream_logger()->get_ostream() << m_name <<" :";
                }
                else
                    is_print_on = false;

                return *this;
            }

            template <typename T>
            xtlm_logger& operator << (T value) 
            {
                if(is_print_on) {
                    get_stream_logger()->get_ostream() << value;
                }

                return *this;
            }

            typedef std::ostream& (*func)(std::ostream&);
            inline xtlm_logger& operator<<(func f) 
            { 
                if(is_print_on)
                    f(get_stream_logger()->get_ostream()); 
                return *this;
            } 

            void set_log_level(log_level l) { m_log_level = l; } 
            const std::string& name() { return m_name; }

        private:
            std::string m_name;
            log_level   m_log_level;
            bool        is_print_on;
    };
}

#endif //__XTLM_LOGGER_H__

//Kept out of namespace to ease of use    
void enable_warning_log();
void enable_debug_log();

void disable_warning_log();
void disable_debug_log();

void enable_warning_log(const std::string& name);
void enable_debug_log(const std::string& name);


void disable_warning_log(const std::string name);
void disable_debug_log(const std::string name);

//#if TRACIN_ON
#define ERROR_LOG(logger, ...)       \
    logger.printf(xtlm::xtlm_logger::ERROR, __VA_ARGS__)

#define WARN_LOG(logger, ...)       \
    logger.printf(xtlm::xtlm_logger::WARN, __VA_ARGS__)

#define DEBUG_LOG(logger, ...)       \
    logger.printf(xtlm::xtlm_logger::DEBUG, __VA_ARGS__)

//#endif


