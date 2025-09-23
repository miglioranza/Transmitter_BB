
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
#ifndef _XAXIS_MONITOR_T_H_
#define _XAXIS_MONITOR_T_H_
#include "utils/xtlm_cmnhdr.h"
#include "utils/debug.h"
#include <map>
#include "xtlm_generic_payload/xtlm_axis_phases.h"
#include "properties.h"
#include "xtlm_generic_payload/axis_payload.h"
#include "xtlm_interfaces/xtlm_axis_monitor_base.h"
#include "xtlm_interfaces/xtlm_axis_mem_manager.h"

namespace xtlm {

template<unsigned int TDATA_WIDTH_BYTES, unsigned int TUSER_WIDTH,
		unsigned int TID_WIDTH, unsigned int TDEST_WIDTH,
		unsigned int TSIDE_BAND_1_WIDTH = 1, unsigned int TSIDE_BAND_2_WIDTH = 1>
class xaxis_monitor_t: public sc_core::sc_module {
	SC_HAS_PROCESS(xaxis_monitor_t);
public:
	typedef sc_core::sc_port<xtlm_axis_monitor_base, 1, SC_ZERO_OR_MORE_BOUND> monitor_port;
	//AXIS PINS
	sc_core::sc_in<bool> CLK;
	sc_core::sc_in<bool> RST;
	sc_core::sc_in<sc_dt::sc_bv<TDATA_WIDTH_BYTES * 8> > TDATA;
	sc_core::sc_in<sc_dt::sc_bv<TDEST_WIDTH> > TDEST;
	sc_core::sc_in<sc_dt::sc_bv<TID_WIDTH> > TID;
	sc_core::sc_in<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TKEEP;
	sc_core::sc_in<bool> TLAST;
	sc_core::sc_in<bool> TREADY;
	sc_core::sc_in<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TSTRB;
	sc_core::sc_in<sc_dt::sc_bv<TUSER_WIDTH> > TUSER;
	sc_core::sc_in<bool> TVALID;
	sc_core::sc_in<sc_dt::sc_bv<TSIDE_BAND_1_WIDTH> > TSIDE_BAND_1;
	sc_core::sc_in<sc_dt::sc_bv<TSIDE_BAND_2_WIDTH> > TSIDE_BAND_2;

	//XTLM SOCKET
	monitor_port* socket;

	xaxis_monitor_t(sc_core::sc_module_name _p_name,
			xsc::common_cpp::properties& _if_properties) :
			sc_core::sc_module(_p_name), CLK("CLK"), RST("RST"), TDATA("TDATA"), TDEST(
					"TDEST"), TID("TID"), TKEEP("TKEEP"), TLAST("TLAST"), TREADY(
					"TREADY"), TSTRB("TSTRB"), TUSER("TUSER"), TVALID("TVALID") ,
					TSIDE_BAND_1 ("TSIDE_BAND_1"), TSIDE_BAND_2("TSIDE_BAND_2") ,
					m_axis_mem_manager(this)
	{
		socket = NULL;
		m_if_property = _if_properties;

		socket = new monitor_port("monitor_port");

		SC_METHOD(sample_transaction);
		sensitive_pos << CLK;
		dont_initialize();

		m_reset_cycles = 0;
		m_reset_stage = false;

		m_has_tkeep = m_if_property.getLongLong("HAS_TKEEP");
		m_has_tlast = m_if_property.getLongLong("HAS_TLAST");
		m_has_tready = m_if_property.getLongLong("HAS_TREADY");
		m_has_tstrb = m_if_property.getLongLong("HAS_TSTRB");
		m_tid_width = m_if_property.getLongLong("TID_WIDTH");
		m_tdest_width = m_if_property.getLongLong("TDEST_WIDTH");
		m_tuser_width = m_if_property.getLongLong("TUSER_WIDTH");
        if(m_if_property.hasParameter("TSIDE_BAND_1_WIDTH") )
        {
            m_tside_band_1_width = m_if_property.getLongLong("TSIDE_BAND_1_WIDTH");
        }
        else
        {
            m_tside_band_1_width =  0 ; 
        }
		
        if(m_if_property.hasParameter("TSIDE_BAND_2_WIDTH") )
        {
            m_tside_band_2_width = m_if_property.getLongLong("TSIDE_BAND_2_WIDTH");
        }
        else
        {
            m_tside_band_2_width = 0;
        }
		m_tdata_num_bytes = m_if_property.getLongLong("TDATA_NUM_BYTES");
		l_trans = nullptr;
		m_transaction_pending = false;
	}
private:
	//Signals to stub disabled pins
	sc_core::sc_signal<bool> TREADY_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TDATA_WIDTH_BYTES * 8> > TDATA_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TSTRB_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TKEEP_SIGNAL;
	sc_core::sc_signal<bool> TLAST_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TID_WIDTH> > TID_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TDEST_WIDTH> > TDEST_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TUSER_WIDTH> > TUSER_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TSIDE_BAND_1_WIDTH> > TSIDE_BAND_1_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TSIDE_BAND_2_WIDTH> > TSIDE_BAND_2_SIGNAL;
	
    axis_payload* l_trans;
	bool m_transaction_pending;

	xsc::common_cpp::properties m_if_property;
	sc_core::sc_event m_update_transaction;

public:
	/*********************************************
	 *  1. To stub pins based on configuration
	 *********************************************/
	void before_end_of_elaboration() {
		if (m_has_tkeep == 0) {
			TKEEP.bind(TKEEP_SIGNAL);
		}

		if (m_has_tlast == 0) {
			TLAST.bind(TLAST_SIGNAL);
		}

		if (m_has_tready == 0) {
			TREADY.bind(TREADY_SIGNAL);
		}

		if (m_has_tstrb == 0) {
			TSTRB.bind(TSTRB_SIGNAL);
		}

		if (m_tdest_width == 0) {
			TDEST.bind(TDEST_SIGNAL);
		}

		if (m_tid_width == 0) {
			TID.bind(TID_SIGNAL);
		}

		if (m_tuser_width == 0) {
			TUSER.bind(TUSER_SIGNAL);
		}
		
        if(m_tside_band_1_width == 0)
		{
			TSIDE_BAND_1.bind(TSIDE_BAND_1_SIGNAL);
		}

		if(m_tside_band_2_width == 0)
		{
			TSIDE_BAND_2.bind(TSIDE_BAND_2_SIGNAL);
		}

		if (m_tdata_num_bytes == 0) {
			TDATA.bind(TDATA_SIGNAL);
		}
	}

private:
	bool m_reset_stage;
	unsigned int m_reset_cycles;
	bool m_has_tkeep, m_has_tlast, m_has_tready, m_has_tstrb;
	unsigned int m_tdest_width, m_tid_width, m_tuser_width, m_tdata_num_bytes;
	unsigned int m_tside_band_1_width, m_tside_band_2_width;
	xtlm_axis_mem_manager m_axis_mem_manager;

	void sample_transaction_imp() {
		//Set tready low and return if reset
		if (m_reset_stage) {
			return;
		}
		//Sample Pins and fill payload
		l_trans = m_axis_mem_manager.get_payload();
		l_trans->acquire();

		//TLAST
		if (m_has_tlast)
			l_trans->set_tlast(TLAST.read());
		else
			l_trans->set_tlast(true);

		//TID
		if (m_tid_width > 0) {
			l_trans->set_tid(TID.read().to_uint());
		}

		//TDEST
		if (m_tdest_width > 0) {
			l_trans->set_tdest(TDEST.read().to_uint());
		}

		l_trans->create_and_set_tdata_ptr(m_tdata_num_bytes);
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		tlm::tlm_phase phase;
		phase = BEGIN_AXIS_DATA;
		(*socket)->register_nb_call(*l_trans, phase, delay);
	}

	/**************************************
	 *  Sample transaction at posedge of clock
	 *  If in reset, keep it in reset atleast for
	 *  8 cycles
	 *************************************/
	void sample_transaction() {
		if (RST.read() == 0) {
			xtlm_log(1, "Reset in progress\n"); //TODO:: Replace with Messaging system
			return;
		}

		if (m_reset_stage == true) {
			if (m_reset_cycles == 0) {
				m_reset_stage = false;
			}
			m_reset_cycles = (m_reset_cycles == 0) ? 0 : m_reset_cycles - 1;
		}
		bool l_tready = m_has_tready ? TREADY.read() : 1;
		if(TVALID.read()==false && l_tready==false)
		{
			sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
			tlm::tlm_phase phase;
			phase = AXIS_IDLE;
			(*socket)->register_nb_call(*l_trans, phase, delay);

		}
		if(TVALID.read()==false && l_tready==true)
		{
			sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
			tlm::tlm_phase phase;
			phase = AXIS_STARVE;
			(*socket)->register_nb_call(*l_trans, phase, delay);

		}
		if (m_transaction_pending == false && TVALID.read() == true) {
			sample_transaction_imp();
			m_transaction_pending = true;
		}

		if (l_tready && m_transaction_pending == true) {
			sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
			tlm::tlm_phase phase;
			phase = END_AXIS_DATA;
			(*socket)->register_nb_call(*l_trans, phase, delay);
			l_trans->release();
			l_trans = nullptr;
			m_transaction_pending=false;
		}
	}

};
}

#endif /* _XAXIS_MONITOR_T_H_ */
