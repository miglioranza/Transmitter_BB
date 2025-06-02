
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
#include "xtlm.h"
namespace xsc {
template<unsigned int data_width, unsigned int no_of_ports>
class xsc_split: public sc_core::sc_module {
	SC_HAS_PROCESS(xsc_split);
public:

	sc_core::sc_in< sc_dt::sc_bv<data_width> > in_port;
	sc_core::sc_out< sc_dt::sc_bv<data_width> > out_port[no_of_ports];

	/**
	 * @brief COnsturctor
	 * @param name is name of the module
	 */
	xsc_split(sc_core::sc_module_name name) :
		sc_module(name), upper_bounds(no_of_ports, data_width),
		lower_bounds(no_of_ports, 0)
	{
		SC_METHOD(split);
		sensitive << in_port;
		dont_initialize();
	}

	/**
	 * @brief API to add port specific bounds
	 * @param port_no is port number
	 * @param upper_bound is upper_bound of port_no
	 * @param lower_bound is lower bound of port_no
	 */
	void add_mask(unsigned int port_no, unsigned int upper_bound,
			unsigned int lower_bound)
	{
		upper_bounds[port_no] = upper_bound;
		lower_bounds[port_no] = lower_bound;
	}

	void start_of_simulation() override
	{
		for(auto i  = 0; i < no_of_ports; i++)
			out_port[i].write(0);
	}
private:

	/**
	 * @brief Method to split
	 */
	void split()
	{
		for(int i = 0; i < no_of_ports; i++)
		{
			out_port[i] = in_port.read().range(upper_bounds[i]-1, lower_bounds[i]);
		}
	}

	std::vector<int> upper_bounds;	//!< Vector to store upper bounds
	std::vector<int> lower_bounds;	//!< Vector to store lower bounds
};

};


