
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

#ifndef _XAXIS_PIN2XTLM_T_H_
#define _XAXIS_PIN2XTLM_T_H_

#include "utils/xtlm_cmnhdr.h"
#include <map>

#include "extensions/xtlm_axis_side_band_extensions.h"
#include "properties.h"
#include "xtlm_adaptors/xtlm_adaptors_utils.h"

#define NOC_NMU_USR_DST_WIDTH 12
#define NOC_XTLM_AXIS_SIDE_2_WIDTH 64

namespace xtlm
{

template<unsigned int TDATA_WIDTH_BYTES, unsigned int TUSER_WIDTH,
		unsigned int TID_WIDTH, unsigned int TDEST_WIDTH,
		unsigned int TSIDE_BAND_1_WIDTH = 1, unsigned int TSIDE_BAND_2_WIDTH = 1>
class xaxis_pin2xtlm_t: public sc_core::sc_module
{
	SC_HAS_PROCESS(xaxis_pin2xtlm_t);
public:
	//AXIS PINS
	sc_core::sc_in<bool> CLK;
	sc_core::sc_in<bool> RST;
	sc_core::sc_in<sc_dt::sc_bv<TDATA_WIDTH_BYTES * 8> > TDATA;
	sc_core::sc_in<sc_dt::sc_bv<TDEST_WIDTH> > TDEST;
	sc_core::sc_in<sc_dt::sc_bv<TID_WIDTH> > TID;
	sc_core::sc_in<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TKEEP;
	sc_core::sc_in<bool> TLAST;
	sc_core::sc_out<bool> TREADY;
	sc_core::sc_in<sc_dt::sc_bv<TDATA_WIDTH_BYTES> > TSTRB;
	sc_core::sc_in<sc_dt::sc_bv<TUSER_WIDTH> > TUSER;
	sc_core::sc_in<bool> TVALID;
	sc_core::sc_in<sc_dt::sc_bv<TSIDE_BAND_1_WIDTH> > TSIDE_BAND_1;
	sc_core::sc_in<sc_dt::sc_bv<TSIDE_BAND_2_WIDTH> > TSIDE_BAND_2;

	//XTLM SOCKET
	xtlm::xtlm_axis_initiator_socket* socket;

	xaxis_pin2xtlm_t(sc_core::sc_module_name _p_name,
			xsc::common_cpp::properties& _if_properties) :
			sc_core::sc_module(_p_name), CLK("CLK"), RST("RST"), TDATA("TDATA"), TDEST(
					"TDEST"), TID("TID"), TKEEP("TKEEP"), TLAST("TLAST"), TREADY(
					"TREADY"), TSTRB("TSTRB"), TUSER("TUSER"), TVALID("TVALID"),
					TSIDE_BAND_1 ("TSIDE_BAND_1"), TSIDE_BAND_2("TSIDE_BAND_2"), 
                    m_axis_mem_manager(this), m_adaptor_log_util(this, "PIN->TLM")
	{
		socket = NULL;
		m_if_property = _if_properties;

		socket = new xtlm_axis_initiator_socket(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) _p_name)
								+ std::string("_skt")).c_str()),
				TDATA_WIDTH_BYTES * 8);

		skt_util = new xtlm_axis_initiator_socket_util(
				sc_core::sc_gen_unique_name(
						(std::string((const char*) _p_name)
								+ std::string("_skt_util")).c_str()),
				xtlm::axis::HANDSHAKE, TDATA_WIDTH_BYTES * 8);
		((skt_util->stream_socket))(*socket);

		SC_METHOD(sample_transaction);
		//sensitive_pos << CLK;
		//dont_initialize();

		SC_METHOD(update_transaction);
		sensitive << m_update_transaction;
		dont_initialize();

		m_reset_cycles = 0;
		m_reset_stage = false;
		m_disable_transactor = false;

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
		m_pending_txn = nullptr;
	}

	/*\brief API to disable transactor
	 */
	void disable_transactor()
	{
		m_disable_transactor = true;
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

	xsc::common_cpp::properties m_if_property;
	xtlm_axis_initiator_socket_util* skt_util;
	sc_core::sc_event m_update_transaction;
	bool m_disable_transactor;
	axis_payload* m_pending_txn;
	xtlm::xtlm_adaptor::xtlm_adaptor_log_utils m_adaptor_log_util;
public:
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

		if (m_tuser_width == 0)
		{
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

		if (m_tdata_num_bytes == 0)
		{
			TDATA.bind(TDATA_SIGNAL);
		}
	}

    //Function to initialize output pin interface with default values
    void start_of_simulation()
    {
	    TREADY.write(0);
    }


private:
	bool m_reset_stage;
	unsigned int m_reset_cycles;
	bool m_has_tkeep, m_has_tlast, m_has_tready, m_has_tstrb;
	unsigned int m_tdest_width, m_tid_width, m_tuser_width, m_tdata_num_bytes;
	unsigned int m_tside_band_1_width, m_tside_band_2_width;
	xtlm_axis_mem_manager m_axis_mem_manager;

	/************************************
	 *  If enable sample TDATA
	 ***********************************/
	void sample_tdata(axis_payload* l_trans)
	{

		//Letting memory manager to own data ptr
		unsigned char* l_ptr = l_trans->create_and_set_tdata_ptr(
				m_tdata_num_bytes);

		unsigned int l_low_bit = 0;
		unsigned int l_high_bit =
				(m_tdata_num_bytes >= 8) ? 63 : (m_tdata_num_bytes << 3) - 1;
		unsigned int l_bytes_left = m_tdata_num_bytes;

		for (int i = 0; i < m_tdata_num_bytes; i += 8)
		{

			const sc_dt::uint64 data =
					TDATA.read().range(l_high_bit, l_low_bit).to_uint64();

			unsigned int l_n_bytes = (l_high_bit - l_low_bit + 1) >> 3;
			memcpy(l_ptr + i, (char*) &data, l_n_bytes);

			l_bytes_left -= l_n_bytes;
			l_low_bit = l_high_bit + 1;
			l_high_bit =
					(l_bytes_left >= 8) ?
							l_low_bit + 63 :
							l_low_bit + (l_bytes_left << 3) - 1;
		}
	}

	/************************************
	 * If enable sample TKEEP
	 ************************************/
	void sample_tkeep(axis_payload* l_trans)
	{
		unsigned int l_tkeep_width = TDATA_WIDTH_BYTES;

		//Letting memory manager to own data ptr
		unsigned char* l_ptr = l_trans->create_and_set_tkeep_ptr(l_tkeep_width);

		for (int i = 0; i < l_tkeep_width; i += 1)
		{

			unsigned int data = TKEEP.read().range(i, i).to_uint();
			l_ptr[i] = (data == 1) ? 0XFF : 0X00;
		}

	}

	/***************************************************
	 * If enable sample TSTRB
	 ***************************************************/
	void sample_tstrb(axis_payload* l_trans)
	{
		unsigned int l_tstrb_width = TDATA_WIDTH_BYTES;

		//Letting memory manager to own data ptr
		unsigned char* l_ptr = l_trans->create_and_set_tstrb_ptr(l_tstrb_width);

		for (int i = 0; i < l_tstrb_width; i += 1)
		{

			unsigned int data = TSTRB.read().range(i, i).to_uint();
			l_ptr[i] = (data == 1) ? 0XFF : 0X00;
		}

	}

	/***************************************************
	 * If enable sample TSIDE_BAND_1
	 ***************************************************/
	void sample_tside_band_1(axis_payload* l_trans)
	{
        xsc::extension::xtlm_axis_side_band<NOC_NMU_USR_DST_WIDTH, NOC_XTLM_AXIS_SIDE_2_WIDTH>* ext;
		//Check if extension Exist
		l_trans->get_extension(ext);
		if(!ext)
		{
			ext = new xsc::extension::xtlm_axis_side_band<NOC_NMU_USR_DST_WIDTH, NOC_XTLM_AXIS_SIDE_2_WIDTH>();
            l_trans->set_extension(ext);            
		}
		ext->set_side_band_1_signal(TSIDE_BAND_1.read());
	}

	/***************************************************
	 * If enable sample TSIDE_BAND_2
	 ***************************************************/
	void sample_tside_band_2(axis_payload* l_trans)
	{
        xsc::extension::xtlm_axis_side_band<NOC_NMU_USR_DST_WIDTH, NOC_XTLM_AXIS_SIDE_2_WIDTH>* ext;
		//Check if extension Exist
		l_trans->get_extension(ext);
		if(!ext)
		{
			ext = new xsc::extension::xtlm_axis_side_band<NOC_NMU_USR_DST_WIDTH, NOC_XTLM_AXIS_SIDE_2_WIDTH>();
            l_trans->set_extension(ext);            
		}
		ext->set_side_band_2_signal(TSIDE_BAND_2.read());
	}

	/***************************************************
	 * If enable sample TUSER
	 ***************************************************/
	void sample_tuser(axis_payload* l_trans)
	{
		unsigned int l_tuser_width = TUSER_WIDTH;
		unsigned int l_tuser_bytes = (l_tuser_width >> 3)
				+ ((l_tuser_width % 8) ? 1 : 0);

		//Letting memory manager to own data ptr
		unsigned char* l_ptr = l_trans->create_and_set_tuser_ptr(l_tuser_bytes);

		int i = 0;
		for (i = 0; i < (l_tuser_width >> 3); i += 1)
		{

			unsigned int data =
					TUSER.read().range((i << 3) + 7, i << 3).to_uint();

			l_ptr[i] = data;
		}

		if (l_tuser_width % 8)
		{
			unsigned int data = TUSER.read().range(
					(i << 3) + (l_tuser_width % 8) - 1, (i << 3)).to_uint();
			l_ptr[i] = data;
		}
	}

	void sample_transaction_imp()
	{
		//Set tready low and return if reset
		if (m_reset_stage)
		{
			return;
		}

		//Slave should always be ready if TREADY is not there
		bool l_tready = m_has_tready ? TREADY.read() : 1;

		if (TVALID.read() && l_tready)
		{
			xtlm_log(1, "XTLM Info-201::PIN2XTLM:: Stream Transaction at ");
			xtlm_log(1, sc_time_stamp())
			xtlm_log(1, "\n");

			if (m_has_tready == 0)
			{
				if (skt_util->is_transfer_done() == false)
				{
					std::cerr
							<< "XTLM Error :: In absence of TREADY, \
									stream slave should always be ready to accept data\n";
					return;
				}
			}
			//Sample Pins and fill payload
			axis_payload* l_trans = m_axis_mem_manager.get_payload();
			m_pending_txn = l_trans;
			m_pending_txn->acquire();

			//TDATA
			if (m_tdata_num_bytes > 0)
				sample_tdata(l_trans);

			//TKEEP
			if (m_has_tkeep)
				sample_tkeep(l_trans);

			//TUSER
			if (m_tuser_width > 0)
				sample_tuser(l_trans);

			//SIDE_BAND 1
			if(m_tside_band_1_width > 0)
				sample_tside_band_1(l_trans);

			//SIDE BAND 2
			if(m_tside_band_2_width > 0)
				sample_tside_band_2(l_trans);

			//TSTRB
			if (m_has_tstrb)
				sample_tstrb(l_trans);

			//TLAST
			if (m_has_tlast)
				l_trans->set_tlast(TLAST.read());
			else
				l_trans->set_tlast(true);

			//TID
			if (m_tid_width > 0)
			{
				l_trans->set_tid(TID.read().to_uint());
			}

			//TDEST
			if (m_tdest_width > 0)
			{
				l_trans->set_tdest(TDEST.read().to_uint());
			}

			skt_util->transport(l_trans);
			m_adaptor_log_util.print_txn_log(l_trans,SC_ZERO_TIME,xtlm::BEGIN_AXIS_DATA);
		}
	}

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
		}

		if (m_reset_stage == true)
		{
			if (m_reset_cycles == 0)
			{
				m_reset_stage = false;
			}
			m_reset_cycles = (m_reset_cycles == 0) ? 0 : m_reset_cycles - 1;
		}
		sample_transaction_imp();
		if (m_has_tready)
			m_update_transaction.notify(1, sc_core::SC_PS);
	}

	void update_transaction()
	{
		if (m_reset_stage)
		{
			TREADY.write(0);
			return;
		}

		if (skt_util->is_transfer_done())
		{
			TREADY.write(1);
			if(m_pending_txn)
			{
				m_pending_txn->release();
				m_pending_txn = nullptr;
			}
		}
		else
		{
			TREADY.write(0);
		}
	}
};
}

#endif /* _XAXIS_PIN2XTLM_T_H_ */

