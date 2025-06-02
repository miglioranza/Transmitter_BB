
// (c) Copyright(C) 2013 - 2020 by Xilinx, Inc. All rights reserved.
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

#include "utils/xtlm_cmnhdr.h"

namespace xsc
{

namespace extension
{

template<unsigned int side_band_1_width, unsigned int side_band_2_width>
class xtlm_axis_side_band: public xtlm::xtlm_extension<xtlm_axis_side_band<side_band_1_width, side_band_2_width> >
{
public:
	xtlm_axis_side_band()
	{
		//Initialize Member Variables
		m_side_band_sig_1 = 0;
		m_side_band_sig_2 = 0;
	}

	void set_side_band_1_signal(sc_dt::sc_bv<side_band_1_width> l_side_band)
	{
		m_side_band_sig_1 = l_side_band;
	}

	sc_dt::sc_bv<side_band_1_width> get_side_band_1_signal()
	{
		return m_side_band_sig_1;
	}

	void set_side_band_2_signal(sc_dt::sc_bv<side_band_2_width> l_side_band)
	{
		m_side_band_sig_2 = l_side_band;
	}

	sc_dt::sc_bv<side_band_2_width> get_side_band_2_signal()
	{
		return m_side_band_sig_2;
	}

	//Pure Virtual Function in Base Class
	void copy_from(xtlm::xtlm_extension_base const &ext)
	{
		m_side_band_sig_1 = static_cast<xtlm_axis_side_band<side_band_1_width,
				side_band_2_width> const&>(ext).m_side_band_sig_1;
		m_side_band_sig_2 = static_cast<xtlm_axis_side_band<side_band_1_width,
				side_band_2_width> const&>(ext).m_side_band_sig_2;
	}

	//Pure Virtual Function in Base Class
	xtlm::xtlm_extension_base* clone() const
	{
		xtlm_axis_side_band<side_band_1_width, side_band_2_width>* t =
				new xtlm_axis_side_band<side_band_1_width, side_band_2_width>;
		return t;
	}

private:
	sc_dt::sc_bv<side_band_1_width> m_side_band_sig_1;
	sc_dt::sc_bv<side_band_2_width> m_side_band_sig_2;
};

};
};
