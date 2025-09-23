
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

#ifndef _XAXIS_XTLM2PIN_T_H_
#define _XAXIS_XTLM2PIN_T_H_

#include "utils/xtlm_cmnhdr.h"
#include <map>
#include "properties.h"
#include "report_handler.h"
#include "extensions/xtlm_axis_side_band_extensions.h"
#include "xtlm_adaptors/xtlm_adaptors_utils.h"
#define NOC_NMU_USR_DST_WIDTH 12
#define NOC_XTLM_AXIS_SIDE_2_WIDTH 64

namespace xtlm
{

class target_b_util: public xtlm_axis_target_socket_util
{
	typedef xtlm_axis_target_socket_util base;
private:
	xsc::common_cpp::report_handler m_logger;   //!< Log framework
	bool m_is_b_transport_active;    //!< Variable to check Blocking Transport
	axis_payload* m_payload_ptr;          //!< Variable to store payload pointer
	axis_payload m_beat_payload;         //!< Variable to store every beat data
	int m_beat_cnt;                 //!< Variable to count number of beats;
	int m_beat_size;                //!< Beat Size of the transaction
	int m_offset;                   //!< Offset to calculate data pointer
	sc_core::sc_event ev_txn_completed;
public:
	//!< Constructor
	target_b_util(sc_core::sc_module_name p_name,
			xtlm::axis::granularity g_hint, int width_p) :
			xtlm_axis_target_socket_util(p_name, g_hint, width_p), m_logger(
					(std::string) p_name)
	{
		m_is_b_transport_active = false;
		m_payload_ptr = nullptr;
		m_beat_cnt = 0;
		m_beat_size = 0;
		m_offset = 0;
	}

	/*!\brief b_transport implementation
	 */
	void b_transport(axis_payload& trans, sc_core::sc_time& delay)
	{
		XSC_REPORT_INFO_VERB(m_logger, "xtlm::101", "b_transport Call Received",
				DEBUG);
		if (delay != sc_core::SC_ZERO_TIME)
			wait(delay);

		//TODO - Log Message
		m_is_b_transport_active = true;

		//Acquire
		if (trans.has_mm())
			trans.acquire();

		m_payload_ptr = &trans;
		m_beat_payload.reset(); //Reset previous transaction
		//Set Required parameters
		m_beat_payload.set_tid(m_payload_ptr->get_tid());
		m_beat_payload.set_tdest(m_payload_ptr->get_tdest());

		//Update total number of beats
		m_beat_size = (trans.get_tdata_length()
				+ (trans.get_tdata_length() % trans.get_n_beats()))
				/ trans.get_n_beats();

		wait(ev_txn_completed);

		//Release
		if (trans.has_mm())
			trans.release();

		m_is_b_transport_active = false;

	}

	/*!
	 * **********************************
	 * To check if last transaction is
	 * available
	 ***********************************/
	bool is_transaction_available()
	{
		if (!m_is_b_transport_active)
			return base::is_transaction_available();
		return (m_payload_ptr != NULL);
	}

	/*!
	 * ***********************************
	 * To sample data from connected module.
	 ************************************/
	axis_payload* sample_transaction()
	{
		if (!m_is_b_transport_active)
			return base::sample_transaction();

		XSC_REPORT_INFO_VERB(m_logger, "xtlm::102",
				"Sampling Transaction on pin I/F", DEBUG);
		if (!m_payload_ptr)
		{
			XSC_REPORT_FATAL(m_logger, "xtlm::010",
					"No Pending blocking transaction available");
		}
		//Blocking Transport
		int n_beats = m_payload_ptr->get_n_beats();

		//Calculate numbe of bytes in a beat
		int beat_num_bytes = m_beat_size;
		if (m_beat_cnt == (n_beats - 1))
			beat_num_bytes =
					((m_payload_ptr->get_tdata_length() % n_beats) == 0) ?
							m_beat_size :
							(m_payload_ptr->get_tdata_length() % n_beats);

		//TDATA handling
		if (m_payload_ptr->get_tdata_length() > 0)
		{
			m_beat_payload.set_tdata_ptr(
					m_payload_ptr->get_tdata_ptr() + m_offset, beat_num_bytes);
		}

		//TKEEP handling
		if (m_payload_ptr->get_tkeep_length() > 0)
		{
			m_beat_payload.set_tkeep_ptr(
					m_payload_ptr->get_tkeep_ptr() + m_offset, beat_num_bytes);
		}

		//TSTRB handling
		if (m_payload_ptr->get_tstrb_length() > 0)
		{
			m_beat_payload.set_tstrb_ptr(
					m_payload_ptr->get_tstrb_ptr() + m_offset, beat_num_bytes);
		}
		//Set TLAST
		if (m_payload_ptr->get_tlast())
			m_beat_payload.set_tlast(m_beat_cnt == n_beats - 1);

		//Update beat count;
		m_beat_cnt++;
		//Update offset
		m_offset += beat_num_bytes;

		//Check whether all beats are completed or not
		if (m_beat_cnt == n_beats)
		{
			m_beat_cnt = 0;
			m_payload_ptr = nullptr;
			m_offset = 0;
			//Notify end of the transaction
			ev_txn_completed.notify();
		}

		return &m_beat_payload;
	}
};

template<unsigned int TDATA_WIDTH_BYTES, unsigned int TUSER_WIDTH,
		unsigned int TID_WIDTH, unsigned int TDEST_WIDTH,
		unsigned int TSIDE_BAND_1_WIDTH = 1, unsigned int TSIDE_BAND_2_WIDTH = 1>
class xaxis_xtlm2pin_t: public sc_core::sc_module
{
	SC_HAS_PROCESS(xaxis_xtlm2pin_t);
public:
	//AXIS PINS
	sc_core::sc_in<bool> CLK;
	sc_core::sc_in<bool> RST;
	sc_core::sc_out<sc_dt::sc_bv<TDATA_WIDTH_BYTES * 8> > TDATA;
	sc_core::sc_out<sc_dt::sc_bv<TDEST_WIDTH> > TDEST;
	sc_core::sc_out<sc_dt::sc_bv<TID_WIDTH> > TID;
	sc_core::sc_out<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TKEEP;
	sc_core::sc_out<bool> TLAST;
	sc_core::sc_in<bool> TREADY;
	sc_core::sc_out<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TSTRB;
	sc_core::sc_out<sc_dt::sc_bv<TUSER_WIDTH> > TUSER;
	sc_core::sc_out<bool> TVALID;
	sc_core::sc_out<sc_dt::sc_bv<TSIDE_BAND_1_WIDTH> > TSIDE_BAND_1;
	sc_core::sc_out<sc_dt::sc_bv<TSIDE_BAND_2_WIDTH> > TSIDE_BAND_2;

	//XTLM SOCKET
	xtlm::xtlm_axis_target_socket* socket;

	xaxis_xtlm2pin_t(sc_core::sc_module_name _p_name,
			xsc::common_cpp::properties& _if_properties) :
			sc_core::sc_module(_p_name), CLK("CLK"), RST("RST"), TDATA("TDATA"), TDEST(
					"TDEST"), TID("TID"), TKEEP("TKEEP"), TLAST("TLAST"), TREADY(
					"TREADY"), TSTRB("TSTRB"), TUSER("TUSER"), TVALID("TVALID"), TSIDE_BAND_1(
					"TSIDE_BAND_1"), TSIDE_BAND_2("TSIDE_BAND_2"),m_adaptor_log_util(this,"TLM->PIN")
	{
		socket = NULL;
		m_if_property = _if_properties;
		socket = new xtlm_axis_target_socket(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) _p_name)
								+ std::string("_skt")).c_str()),
				TDATA_WIDTH_BYTES * 8);

		skt_util = new target_b_util(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) _p_name)
								+ std::string("_skt_util")).c_str()),
				xtlm::axis::HANDSHAKE, TDATA_WIDTH_BYTES * 8);

		(*socket)((skt_util->stream_socket));

		SC_METHOD(sample_transaction);
		//sensitive_pos << CLK;
		//dont_initialize();

		SC_METHOD(update_transaction);
		sensitive << m_update_transaction;
		dont_initialize();

		m_reset_cycles = 0;
		m_reset_stage = false;
		m_tready = false;
		m_transaction_sampled = true;
		m_disable_transactor = false;

		m_has_tkeep = m_if_property.getLongLong("HAS_TKEEP");
		m_has_tlast = m_if_property.getLongLong("HAS_TLAST");
		m_has_tready = m_if_property.getLongLong("HAS_TREADY");
		m_has_tstrb = m_if_property.getLongLong("HAS_TSTRB");
		m_tid_width = m_if_property.getLongLong("TID_WIDTH");
		m_tdest_width = m_if_property.getLongLong("TDEST_WIDTH");
		m_tuser_width = m_if_property.getLongLong("TUSER_WIDTH");

		if (m_if_property.hasParameter("TSIDE_BAND_1_WIDTH"))
		{
			m_tside_band_1_width = m_if_property.getLongLong(
					"TSIDE_BAND_1_WIDTH");
		}
		else
		{
			m_tside_band_1_width = 0;
		}

		if (m_if_property.hasParameter("TSIDE_BAND_2_WIDTH"))
		{
			m_tside_band_2_width = m_if_property.getLongLong(
					"TSIDE_BAND_2_WIDTH");
		}
		else
		{
			m_tside_band_2_width = 0;
		}

		m_tdata_num_bytes = m_if_property.getLongLong("TDATA_NUM_BYTES");
		m_pending_payload = nullptr;
	}

	/*\brief API to disable transactor
	 */
	void disable_transactor()
	{
		m_disable_transactor = true;
	}

	/*********************************************
	 *  1. To stub pins based on configuration
	 *********************************************/
	void before_end_of_elaboration()
	{
		if (m_has_tkeep == 0)
		{
			TKEEP.bind(TKEEP_SIGNAL);
		}

		if (m_has_tlast == 0)
		{
			TLAST.bind(TLAST_SIGNAL);
		}

		if (m_has_tready == 0)
		{
			TREADY.bind(TREADY_SIGNAL);
		}

		if (m_has_tstrb == 0)
		{
			TSTRB.bind(TSTRB_SIGNAL);
		}

		if (m_tdest_width == 0)
		{
			TDEST.bind(TDEST_SIGNAL);
		}

		if (m_tid_width == 0)
		{
			TID.bind(TID_SIGNAL);
		}

		if (m_tside_band_1_width == 0)
		{
			TSIDE_BAND_1.bind(TSIDE_BAND_1_SIGNAL);
		}

		if (m_tside_band_2_width == 0)
		{
			TSIDE_BAND_2.bind(TSIDE_BAND_2_SIGNAL);
		}

		if (m_tuser_width == 0)
		{
			TUSER.bind(TUSER_SIGNAL);
		}

		if (m_tdata_num_bytes == 0)
		{
			TDATA.bind(TDATA_SIGNAL);
		}
	}

	//Function to initialize output pin interface with default values
	void start_of_simulation()
	{
		TDATA.write(0);
		TDEST.write(0);
		TID.write(0);
		TKEEP.write(0);
		TLAST.write(0);
		TSTRB.write(0);
		TUSER.write(0);
		TVALID.write(0);
		TSIDE_BAND_1.write(0);
		TSIDE_BAND_2.write(1);
	}

private:
	xtlm::target_b_util* skt_util;
	xsc::common_cpp::properties m_if_property;
	bool m_has_tkeep, m_has_tlast, m_has_tready, m_has_tstrb;
	unsigned int m_tdest_width, m_tid_width, m_tuser_width, m_tdata_num_bytes;
	unsigned int m_tside_band_1_width, m_tside_band_2_width;
	bool m_reset_stage;
	unsigned int m_reset_cycles;
	sc_core::sc_event m_update_transaction;
	bool m_tready;
	bool m_transaction_sampled;
	bool m_disable_transactor;
	axis_payload* m_pending_payload;
	xtlm::xtlm_adaptor::xtlm_adaptor_log_utils m_adaptor_log_util;

	sc_core::sc_signal<sc_dt::sc_bv<TDATA_WIDTH_BYTES * 8> > TDATA_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TDEST_WIDTH> > TDEST_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TID_WIDTH> > TID_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TKEEP_SIGNAL;
	sc_core::sc_signal<bool> TLAST_SIGNAL;
	sc_core::sc_signal<bool> TREADY_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TSTRB_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TUSER_WIDTH> > TUSER_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TSIDE_BAND_1_WIDTH> > TSIDE_BAND_1_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<TSIDE_BAND_2_WIDTH> > TSIDE_BAND_2_SIGNAL;



	/**************************************
	 *  Sample transaction at posedge of clock
	 *  If in reset, keep it in reset atleast for
	 *  8 cycles
	 *************************************/
	void sample_transaction()
	{

		// Disable Method When Transactor is disabled
		if (m_disable_transactor)
			return;
		else
			next_trigger(CLK.posedge_event());

		if (RST.read() == 0)
		{
			xtlm_log(1, "Reset in progress\n"); //TODO:: Replace with Messaging system
			m_reset_stage = true;
			m_reset_cycles = 8;
			m_transaction_sampled = true;
			if(m_pending_payload && m_pending_payload->has_mm())
				m_pending_payload->release();
		}

		if (m_reset_stage == true)
		{
			if (m_reset_cycles == 0)
			{
				m_reset_stage = false;
			}
			m_reset_cycles = (m_reset_cycles == 0) ? 0 : m_reset_cycles - 1;
		}

		m_tready = (m_has_tready) ? TREADY.read() : true;

		if (TVALID.read() && m_tready)
		{
			m_transaction_sampled = true;
			if(m_pending_payload && m_pending_payload->has_mm())
				m_pending_payload->release();

		}

		if (m_transaction_sampled)
			m_update_transaction.notify(1, sc_core::SC_PS);
	}

	void update_tdata(axis_payload* trans)
	{

		unsigned char* data_ptr = trans->get_tdata_ptr();
		unsigned int tdata_length = trans->get_tdata_length();

		unsigned int l_low_bit = 0;
		unsigned int l_high_bit =
				(m_tdata_num_bytes >= 8) ? 63 : (m_tdata_num_bytes << 3) - 1;
		unsigned int l_bytes_left = m_tdata_num_bytes;

		sc_dt::sc_bv<TDATA_WIDTH_BYTES * 8> data_var;

		for (int i = 0; i < m_tdata_num_bytes && i < tdata_length; i += 8)
		{

			data_var.range(l_high_bit, l_low_bit) = *(sc_dt::uint64*) (data_ptr
					+ i);

			unsigned int l_n_bytes = (l_high_bit - l_low_bit + 1) >> 3;

			l_bytes_left -= l_n_bytes;
			l_low_bit = l_high_bit + 1;
			l_high_bit =
					(l_bytes_left >= 8) ?
							l_low_bit + 63 :
							l_low_bit + (l_bytes_left << 3) - 1;
		}
		TDATA.write(data_var);
	}

	/************************************
	 * If enable update TKEEP
	 ************************************/
	void update_tkeep(axis_payload* l_trans)
	{
		unsigned int l_tkeep_width = l_trans->get_tkeep_length();

		unsigned char* l_ptr = l_trans->get_tkeep_ptr();

		sc_dt::sc_bv<TDATA_WIDTH_BYTES> tkeep_var;

		if (l_tkeep_width == 0 || l_ptr == NULL)
		{
			for (int i = 0; i < TDATA_WIDTH_BYTES; i += 1)
			{
				tkeep_var.range(i, i) = 1;
			}
		}
		else
		{
			for (int i = 0; i < std::min(l_tkeep_width, TDATA_WIDTH_BYTES); i +=
					1)
			{
				tkeep_var.range(i, i) =
						((unsigned int) l_ptr[i] == 0XFF) ? 1 : 0;
			}
			if (l_tkeep_width < TDATA_WIDTH_BYTES)
			{
				tkeep_var.range(l_tkeep_width, TDATA_WIDTH_BYTES - 1) = 0;
			}
		}

		TKEEP.write(tkeep_var);
	}
	/***************************************************
	 * If enable update TSIDE_BAND_1
	 ***************************************************/
	void update_tside_band_1(axis_payload* l_trans)
	{
		xsc::extension::xtlm_axis_side_band<NOC_NMU_USR_DST_WIDTH,
				NOC_XTLM_AXIS_SIDE_2_WIDTH>* ext;
		l_trans->get_extension(ext);

		if (!ext)
		{
			XSC_REPORT_WARNING(m_adaptor_log_util.m_report_handler, "xtlm::005",
					"Extension for Side Band Signal is not Found");
			return;
		}
		TSIDE_BAND_1.write(ext->get_side_band_1_signal());
	}

	void update_tside_band_2(axis_payload* l_trans)
	{
		xsc::extension::xtlm_axis_side_band<NOC_NMU_USR_DST_WIDTH,
				NOC_XTLM_AXIS_SIDE_2_WIDTH>* ext;
		l_trans->get_extension(ext);

		if (!ext)
		{
			XSC_REPORT_WARNING(m_adaptor_log_util.m_report_handler, "xtlm::005",
					"Extension for Side Band Signal is not Found");
			return;
		}
		TSIDE_BAND_2.write(ext->get_side_band_2_signal());
	}

	/***************************************************
	 * If enable update TUSER
	 ***************************************************/
	void update_tuser(axis_payload* l_trans)
	{
		if (l_trans->get_tuser_length() == 0)
		{
			return;
		}
		unsigned int l_tuser_width = TUSER_WIDTH;
		unsigned int l_tuser_bytes = (l_tuser_width >> 3)
				+ ((l_tuser_width % 8) ? 1 : 0);

		//Letting memory manager to own data ptr
		unsigned char* l_ptr = l_trans->get_tuser_ptr();

		sc_dt::sc_bv<TUSER_WIDTH> tuser_var;

		int i;
		for (i = 0; i < (l_tuser_width >> 3); i += 1)
		{
			tuser_var.range((i << 3) + 7, i << 3) = (unsigned int) l_ptr[i];
		}

		if (l_tuser_width % 8)
		{
			tuser_var.range((i << 3) + (l_tuser_width % 8) - 1, (i << 3)) =
					(unsigned int) l_ptr[i];
		}

		TUSER.write(tuser_var);
	}

	/***************************************************
	 * If enable update TSTRB
	 ***************************************************/
	void update_tstrb(axis_payload* l_trans)
	{
		unsigned int l_tstrb_width = l_trans->get_tstrb_length();

		unsigned char* l_ptr = l_trans->get_tstrb_ptr();
		sc_dt::sc_bv<TDATA_WIDTH_BYTES> tstrb_var;

		if (l_tstrb_width == 0 || l_ptr == NULL)
		{
			for (int i = 0; i < TDATA_WIDTH_BYTES; i += 1)
			{
				tstrb_var.range(i, i) = 1;
			}
		}
		else
		{
			for (int i = 0; i < std::min(l_tstrb_width, TDATA_WIDTH_BYTES); i +=
					1)
			{
				tstrb_var.range(i, i) =
						((unsigned int) l_ptr[i] == 0XFF) ? 1 : 0;
			}
			if (l_tstrb_width < TDATA_WIDTH_BYTES)
			{
				tstrb_var.range(l_tstrb_width, TDATA_WIDTH_BYTES - 1) = 0;
			}
		}

		TSTRB.write(tstrb_var);
	}

	void update_transaction()
	{
		if (m_reset_stage)
		{
			TVALID.write(0);
			return;
		}

		if (m_transaction_sampled)
		{
			TVALID.write(0);
		}

		if (skt_util->is_transaction_available() == false)
		{
			return;
		}

		m_transaction_sampled = false;
		TVALID.write(1);
		XSC_REPORT_INFO_VERB(m_adaptor_log_util.m_report_handler, "xtlm::100",
				"Updating PIN I/F with Transaction", DEBUG);

		axis_payload* trans = skt_util->sample_transaction();
		if(trans->has_mm())
			trans->acquire();

		if (m_tdata_num_bytes > 0)
		{
			update_tdata(trans);
		}

		//TKEEP
		if (m_has_tkeep)
			update_tkeep(trans);

		//TUSER
		if (m_tuser_width > 0)
			update_tuser(trans);

		//TSTRB
		if (m_has_tstrb)
			update_tstrb(trans);

		//TLAST
		if (m_has_tlast)
			TLAST.write(trans->get_tlast());

		//TID
		if (m_tid_width > 0)
			TID.write(trans->get_tid());

		//TDEST
		if (m_tdest_width > 0)
			TDEST.write(trans->get_tdest());

		//TSIDE_BAND_1
		if (m_tside_band_1_width > 0)
			update_tside_band_1(trans);

		//TSIDE_BAND_2
		if (m_tside_band_2_width > 0)
			update_tside_band_2(trans);
		m_adaptor_log_util.print_txn_log(trans, SC_ZERO_TIME,
				xtlm::END_AXIS_DATA);
	}
};
}

#endif /* _XAXIS_XTLM2PIN_T_H_ */

