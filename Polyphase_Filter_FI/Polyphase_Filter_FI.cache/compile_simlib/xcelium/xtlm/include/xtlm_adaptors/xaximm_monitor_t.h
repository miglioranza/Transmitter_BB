
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
#ifndef _XAXIMM_MONITOR_T_H_
#define _XAXIMM_MONITOR_T_H_

#include "utils/xtlm_cmnhdr.h"
#include "xtlm_adaptors/xaximm_monitor_rd_t.h"
#include "xtlm_adaptors/xaximm_monitor_wr_t.h"
#include "xtlm_interfaces/xtlm_aximm_monitor_base.h"
#include "properties.h"
namespace xtlm {

template<unsigned int DATA_WIDTH, unsigned int ADDR_WIDTH,
		unsigned int ID_WIDTH, unsigned int AWUSER_WIDTH,
		unsigned int WUSER_WIDTH, unsigned int BUSER_WIDTH,
		unsigned int ARUSER_WIDTH, unsigned int RUSER_WIDTH> class xaximm_monitor_t: public sc_core::sc_module {
public:
	typedef sc_core::sc_port<xtlm_aximm_monitor_base, 1, SC_ZERO_OR_MORE_BOUND> monitor_port;
	sc_core::sc_in<bool> CLK;
	sc_core::sc_in<bool> RST;
	//AXI Pins
	//Write Address Channel
	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > AWID;
	sc_core::sc_in<sc_dt::sc_bv<ADDR_WIDTH> > AWADDR;
	sc_core::sc_in<sc_dt::sc_bv<8> > AWLEN;
	sc_core::sc_in<sc_dt::sc_bv<3> > AWSIZE;
	sc_core::sc_in<sc_dt::sc_bv<2> > AWBURST;
	sc_core::sc_in<bool> AWLOCK;
	sc_core::sc_in<sc_dt::sc_bv<4> > AWCACHE;
	sc_core::sc_in<sc_dt::sc_bv<3> > AWPROT;
	sc_core::sc_in<sc_dt::sc_bv<4> > AWREGION;
	sc_core::sc_in<sc_dt::sc_bv<4> > AWQOS;
	sc_core::sc_in<sc_dt::sc_bv<AWUSER_WIDTH> > AWUSER;
	sc_core::sc_in<bool> AWVALID; //Non-Vector Type, so boolean
	sc_core::sc_in<bool> AWREADY;

	//Write Data Channel
	sc_core::sc_in<sc_dt::sc_bv<DATA_WIDTH> > WDATA;
	sc_core::sc_in<sc_dt::sc_bv<DATA_WIDTH / 8> > WSTRB;
	sc_core::sc_in<bool> WLAST;
	sc_core::sc_in<sc_dt::sc_bv<WUSER_WIDTH> > WUSER;
	sc_core::sc_in<bool> WVALID;
	sc_core::sc_in<bool> WREADY;

	//Write Resp Channel
	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > BID;
	sc_core::sc_in<sc_dt::sc_bv<2> > BRESP;
	sc_core::sc_in<sc_dt::sc_bv<BUSER_WIDTH> > BUSER;
	sc_core::sc_in<bool> BVALID;
	sc_core::sc_in<bool> BREADY;

	//Read Address Channel
	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > ARID;
	sc_core::sc_in<sc_dt::sc_bv<ADDR_WIDTH> > ARADDR;
	sc_core::sc_in<sc_dt::sc_bv<8> > ARLEN;
	sc_core::sc_in<sc_dt::sc_bv<3> > ARSIZE;
	sc_core::sc_in<sc_dt::sc_bv<2> > ARBURST;
	sc_core::sc_in<bool> ARLOCK;
	sc_core::sc_in<sc_dt::sc_bv<4> > ARCACHE;
	sc_core::sc_in<sc_dt::sc_bv<3> > ARPROT;
	sc_core::sc_in<sc_dt::sc_bv<4> > ARREGION;
	sc_core::sc_in<sc_dt::sc_bv<4> > ARQOS;
	sc_core::sc_in<sc_dt::sc_bv<ARUSER_WIDTH> > ARUSER;
	sc_core::sc_in<bool> ARVALID;
	sc_core::sc_in<bool> ARREADY;

	//Read Data Channel
	sc_core::sc_in<sc_dt::sc_bv<ID_WIDTH> > RID;
	sc_core::sc_in<sc_dt::sc_bv<DATA_WIDTH> > RDATA;
	sc_core::sc_in<sc_dt::sc_bv<2> > RRESP;
	sc_core::sc_in<bool> RLAST;
	sc_core::sc_in<sc_dt::sc_bv<RUSER_WIDTH> > RUSER;
	sc_core::sc_in<bool> RVALID;
	sc_core::sc_in<bool> RREADY;

	//Reset signal
	//sc_core::sc_signal<bool> RST_SIGNAL;

	//TLM Sockets
	monitor_port* wr_socket;
	monitor_port* rd_socket;

	xaximm_monitor_t(sc_core::sc_module_name _p_name,
			xsc::common_cpp::properties& _if_properties) :
			sc_core::sc_module(_p_name), CLK("CLK"), RST("RST"), AWID("AWID"), AWADDR(
					"AWADDR"), AWLEN("AWLEN"), AWSIZE("AWSIZE"), AWBURST(
					"AWBURST"), AWLOCK("AWLOCK"), AWCACHE("AWCACHE"), AWPROT(
					"AWPROT"), AWREGION("AWREGION"), AWQOS("AWQOS"), AWUSER(
					"AWUSER"), AWVALID("AWVALID"), AWREADY("AWREADY"), WDATA(
					"WDATA"), WSTRB("WSTRB"), WLAST("WLAST"), WUSER("WUSER"), WVALID(
					"WVALID"), WREADY("WREADY"), BID("BID"), BRESP("BRESP"), BUSER(
					"BUSER"), BVALID("BVALID"), BREADY("BREADY"), ARID("ARID"), ARADDR(
					"ARADDR"), ARLEN("ARLEN"), ARSIZE("ARSIZE"), ARBURST(
					"ARBURST"), ARLOCK("ARLOCK"), ARCACHE("ARCACHE"), ARPROT(
					"ARPROT"), ARREGION("ARREGION"), ARQOS("ARQOS"), ARUSER(
					"ARUSER"), ARVALID("ARVALID"), ARREADY("ARREADY"), RID(
					"RID"), RDATA("RDATA"), RRESP("RRESP"), RLAST("RLAST"), RUSER(
					"RUSER"), RVALID("RVALID"), RREADY("RREADY"), if_property(
					_if_properties) {

		wr_socket = NULL;
		wr_module = NULL;
		rd_socket = NULL;
		rd_module = NULL;

		if ((if_property.getString("READ_WRITE_MODE") == "READ_WRITE")
				|| (if_property.getString("READ_WRITE_MODE") == "WRITE_ONLY")) {
			wr_socket = new monitor_port("wr_socket");
			wr_module = new xaximm_monitor_wr_t<DATA_WIDTH, ADDR_WIDTH,
					ID_WIDTH, AWUSER_WIDTH, WUSER_WIDTH, BUSER_WIDTH>(
					"wr_transactor", if_property);
			bind_wr_module();
		}

		if ((if_property.getString("READ_WRITE_MODE") == "READ_WRITE")
				|| (if_property.getString("READ_WRITE_MODE") == "READ_ONLY")) {
			rd_socket = new monitor_port("rd_socket");
			rd_module = new xaximm_monitor_rd_t<DATA_WIDTH, ADDR_WIDTH,
					ID_WIDTH, ARUSER_WIDTH, RUSER_WIDTH>("rd_transactor",
					if_property);
			bind_rd_module();
		}

		//Based on ONLY READ/WRITE bind ports to dummy signals
		if (if_property.getString("READ_WRITE_MODE") == "WRITE_ONLY") {
			bind_rd_to_signals();
		}

		if (if_property.getString("READ_WRITE_MODE") == "READ_ONLY") {
			bind_wr_to_signals();
		}

	}

private:
	//Write Address Channel
	sc_core::sc_signal<sc_dt::sc_bv<ID_WIDTH> > AWID_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<ADDR_WIDTH> > AWADDR_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<8> > AWLEN_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<3> > AWSIZE_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<2> > AWBURST_SIGNAL;
	sc_core::sc_signal<bool> AWLOCK_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<4> > AWCACHE_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<3> > AWPROT_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<4> > AWREGION_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<4> > AWQOS_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<AWUSER_WIDTH> > AWUSER_SIGNAL;
	sc_core::sc_signal<bool> AWVALID_SIGNAL; //Non-Vector Type, so boolean
	sc_core::sc_signal<bool> AWREADY_SIGNAL;

	//Write Data Channel
	sc_core::sc_signal<sc_dt::sc_bv<DATA_WIDTH> > WDATA_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<DATA_WIDTH / 8> > WSTRB_SIGNAL;
	sc_core::sc_signal<bool> WLAST_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<WUSER_WIDTH> > WUSER_SIGNAL;
	sc_core::sc_signal<bool> WVALID_SIGNAL;
	sc_core::sc_signal<bool> WREADY_SIGNAL;

	//Write Resp Channel
	sc_core::sc_signal<sc_dt::sc_bv<ID_WIDTH> > BID_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<2> > BRESP_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<BUSER_WIDTH> > BUSER_SIGNAL;
	sc_core::sc_signal<bool> BVALID_SIGNAL;
	sc_core::sc_signal<bool> BREADY_SIGNAL;

	//Read Address Channel
	sc_core::sc_signal<sc_dt::sc_bv<ID_WIDTH> > ARID_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<ADDR_WIDTH> > ARADDR_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<8> > ARLEN_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<3> > ARSIZE_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<2> > ARBURST_SIGNAL;
	sc_core::sc_signal<bool> ARLOCK_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<4> > ARCACHE_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<3> > ARPROT_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<4> > ARREGION_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<4> > ARQOS_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<ARUSER_WIDTH> > ARUSER_SIGNAL;
	sc_core::sc_signal<bool> ARVALID_SIGNAL;
	sc_core::sc_signal<bool> ARREADY_SIGNAL;

	//Read Data Channel
	sc_core::sc_signal<sc_dt::sc_bv<ID_WIDTH> > RID_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<DATA_WIDTH> > RDATA_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<2> > RRESP_SIGNAL;
	sc_core::sc_signal<bool> RLAST_SIGNAL;
	sc_core::sc_signal<sc_dt::sc_bv<RUSER_WIDTH> > RUSER_SIGNAL;
	sc_core::sc_signal<bool> RVALID_SIGNAL;
	sc_core::sc_signal<bool> RREADY_SIGNAL;

	xsc::common_cpp::properties if_property;

	xaximm_monitor_wr_t<DATA_WIDTH, ADDR_WIDTH, ID_WIDTH, AWUSER_WIDTH,
			WUSER_WIDTH, BUSER_WIDTH>* wr_module;

	xaximm_monitor_rd_t<DATA_WIDTH, ADDR_WIDTH, ID_WIDTH, ARUSER_WIDTH,
			RUSER_WIDTH>* rd_module;

	void bind_rd_module() {
		rd_module->CLK.bind(CLK);
		rd_module->RST.bind(RST);
		rd_module->ARADDR.bind(ARADDR);
		rd_module->ARBURST.bind(ARBURST);
		rd_module->ARCACHE.bind(ARCACHE);
		rd_module->ARID.bind(ARID);
		rd_module->ARLEN.bind(ARLEN);
		rd_module->ARLOCK.bind(ARLOCK);
		rd_module->ARPROT.bind(ARPROT);
		rd_module->ARQOS.bind(ARQOS);
		rd_module->ARREADY.bind(ARREADY);
		rd_module->ARREGION.bind(ARREGION);
		rd_module->ARSIZE.bind(ARSIZE);
		rd_module->ARUSER.bind(ARUSER);
		rd_module->ARVALID.bind(ARVALID);
		rd_module->RDATA.bind(RDATA);
		rd_module->RID.bind(RID);
		rd_module->RLAST.bind(RLAST);
		rd_module->RREADY.bind(RREADY);
		rd_module->RRESP.bind(RRESP);
		rd_module->RUSER.bind(RUSER);
		rd_module->RVALID.bind(RVALID);
		rd_module->rd_socket->bind(*(this->rd_socket));
	}

	void bind_wr_module() {
		wr_module->CLK.bind(CLK);
		wr_module->RST.bind(RST);
		wr_module->AWADDR.bind(AWADDR);
		wr_module->AWBURST.bind(AWBURST);
		wr_module->AWCACHE.bind(AWCACHE);
		wr_module->AWID.bind(AWID);
		wr_module->AWLEN.bind(AWLEN);
		wr_module->AWLOCK.bind(AWLOCK);
		wr_module->AWPROT.bind(AWPROT);
		wr_module->AWQOS.bind(AWQOS);
		wr_module->AWREADY.bind(AWREADY);
		wr_module->AWREGION.bind(AWREGION);
		wr_module->AWSIZE.bind(AWSIZE);
		wr_module->AWUSER.bind(AWUSER);
		wr_module->AWVALID.bind(AWVALID);
		wr_module->BID.bind(BID);
		wr_module->BREADY.bind(BREADY);
		wr_module->BRESP.bind(BRESP);
		wr_module->BUSER.bind(BUSER);
		wr_module->BVALID.bind(BVALID);
		wr_module->WDATA.bind(WDATA);
		wr_module->WLAST.bind(WLAST);
		wr_module->WREADY.bind(WREADY);
		wr_module->WSTRB.bind(WSTRB);
		wr_module->WUSER.bind(WUSER);
		wr_module->WVALID.bind(WVALID);
		wr_module->wr_socket->bind(*(this->wr_socket));
	}

	void bind_rd_to_signals() {
		ARADDR.bind(ARADDR_SIGNAL);
		ARBURST.bind(ARBURST_SIGNAL);
		ARCACHE.bind(ARCACHE_SIGNAL);
		ARID.bind(ARID_SIGNAL);
		ARLEN.bind(ARLEN_SIGNAL);
		ARLOCK.bind(ARLOCK_SIGNAL);
		ARPROT.bind(ARPROT_SIGNAL);
		ARQOS.bind(ARQOS_SIGNAL);
		ARREADY.bind(ARREADY_SIGNAL);
		ARREGION.bind(ARREGION_SIGNAL);
		ARSIZE.bind(ARSIZE_SIGNAL);
		ARUSER.bind(ARUSER_SIGNAL);
		ARVALID.bind(ARVALID_SIGNAL);
		RDATA.bind(RDATA_SIGNAL);
		RID.bind(RID_SIGNAL);
		RLAST.bind(RLAST_SIGNAL);
		RREADY.bind(RREADY_SIGNAL);
		RRESP.bind(RRESP_SIGNAL);
		RUSER.bind(RUSER_SIGNAL);
		RVALID.bind(RVALID_SIGNAL);
	}

	void bind_wr_to_signals() {
		AWADDR.bind(AWADDR_SIGNAL);
		AWBURST.bind(AWBURST_SIGNAL);
		AWCACHE.bind(AWCACHE_SIGNAL);
		AWID.bind(AWID_SIGNAL);
		AWLEN.bind(AWLEN_SIGNAL);
		AWLOCK.bind(AWLOCK_SIGNAL);
		AWPROT.bind(AWPROT_SIGNAL);
		AWQOS.bind(AWQOS_SIGNAL);
		AWREADY.bind(AWREADY_SIGNAL);
		AWREGION.bind(AWREGION_SIGNAL);
		AWSIZE.bind(AWSIZE_SIGNAL);
		AWUSER.bind(AWUSER_SIGNAL);
		AWVALID.bind(AWVALID_SIGNAL);
		BID.bind(BID_SIGNAL);
		BREADY.bind(BREADY_SIGNAL);
		BRESP.bind(BRESP_SIGNAL);
		BUSER.bind(BUSER_SIGNAL);
		BVALID.bind(BVALID_SIGNAL);
		WDATA.bind(WDATA_SIGNAL);
		WLAST.bind(WLAST_SIGNAL);
		WREADY.bind(WREADY_SIGNAL);
		WSTRB.bind(WSTRB_SIGNAL);
		WUSER.bind(WUSER_SIGNAL);
		WVALID.bind(WVALID_SIGNAL);
	}

public:
	/*****************************************************************
	 * 1. Connections based on the configuration. If any port is
	 *    disabled, tie it to dummy signal.
	 * 2. These configurations are part of Bus Interface and will pass
	 *    on by Auto Generated SystemC Wrapper to Transactors.
	 *****************************************************************/
	void before_end_of_elaboration() {
		if ((if_property.getString("READ_WRITE_MODE") == "READ_WRITE")
				|| (if_property.getString("READ_WRITE_MODE") == "READ_ONLY")) {
			//If READ Interface is enabled
			if (if_property.getLongLong("HAS_RRESP") == 0) {
				RRESP.bind(RRESP_SIGNAL);
			}

			if (if_property.getLongLong("HAS_BURST") == 0) {
				ARBURST.bind(ARBURST_SIGNAL);
			}

			if (if_property.getLongLong("HAS_CACHE") == 0) {
				ARCACHE.bind(ARCACHE_SIGNAL);
			}

			if (if_property.getLongLong("HAS_LOCK") == 0) {
				ARLOCK.bind(ARLOCK_SIGNAL);
			}

			if (if_property.getLongLong("HAS_PROT") == 0) {
				ARPROT.bind(ARPROT_SIGNAL);
			}

			if (if_property.getLongLong("HAS_QOS") == 0) {
				ARQOS.bind(ARQOS_SIGNAL);
			}

			if (if_property.getLongLong("HAS_REGION") == 0) {
				ARREGION.bind(ARREGION_SIGNAL);
			}

			if (if_property.getLongLong("ARUSER_WIDTH") == 0) {
				ARUSER.bind(ARUSER_SIGNAL);
			}

			if (if_property.getLongLong("RUSER_WIDTH") == 0) {
				RUSER.bind(RUSER_SIGNAL);
			}

			if ((if_property.getLongLong("ID_WIDTH") == 0)
					|| (if_property.getString("PROTOCOL") == "AXI4LITE")) {
				RID.bind(RID_SIGNAL);
				ARID.bind(ARID_SIGNAL);
			}

			if (if_property.getString("PROTOCOL") == "AXI4LITE") {
				RLAST.bind(RLAST_SIGNAL);
				ARSIZE.bind(ARSIZE_SIGNAL);
				ARLEN.bind(ARLEN_SIGNAL);
			}
		}

		if ((if_property.getString("READ_WRITE_MODE") == "READ_WRITE")
				|| (if_property.getString("READ_WRITE_MODE") == "WRITE_ONLY")) {
			//If Write Interface is enabled
			if (if_property.getLongLong("HAS_BRESP") == 0) {
				BRESP.bind(BRESP_SIGNAL);
			}

			if (if_property.getLongLong("HAS_BURST") == 0) {
				AWBURST.bind(AWBURST_SIGNAL);
			}

			if (if_property.getLongLong("HAS_CACHE") == 0) {
				AWCACHE.bind(AWCACHE_SIGNAL);
			}

			if (if_property.getLongLong("HAS_LOCK") == 0) {
				AWLOCK.bind(AWLOCK_SIGNAL);
			}

			if (if_property.getLongLong("HAS_PROT") == 0) {
				AWPROT.bind(AWPROT_SIGNAL);
			}

			if (if_property.getLongLong("HAS_QOS") == 0) {
				AWQOS.bind(AWQOS_SIGNAL);
			}

			if (if_property.getLongLong("HAS_REGION") == 0) {
				AWREGION.bind(AWREGION_SIGNAL);
			}

			if (if_property.getLongLong("HAS_WSTRB") == 0) {
				WSTRB.bind(WSTRB_SIGNAL);
			}

			if (if_property.getLongLong("AWUSER_WIDTH") == 0) {
				AWUSER.bind(AWUSER_SIGNAL);
			}

			if (if_property.getLongLong("WUSER_WIDTH") == 0) {
				WUSER.bind(WUSER_SIGNAL);
			}

			if (if_property.getLongLong("BUSER_WIDTH") == 0) {
				BUSER.bind(BUSER_SIGNAL);
			}

			if ((if_property.getLongLong("ID_WIDTH") == 0)
					|| (if_property.getString("PROTOCOL") == "AXI4LITE")) {
				AWID.bind(AWID_SIGNAL);
				BID.bind(BID_SIGNAL);
			}

			if (if_property.getString("PROTOCOL") == "AXI4LITE") {
				WLAST.bind(WLAST_SIGNAL);
				AWSIZE.bind(AWSIZE_SIGNAL);
				AWLEN.bind(AWLEN_SIGNAL);
			}
		}
	}
	void start_of_simulation() {
		if (if_property.getString("PROTOCOL") == "AXI4LITE") {
			WLAST_SIGNAL.write(true);
			RLAST_SIGNAL.write(true);
			AWSIZE_SIGNAL.write(4);
			ARSIZE_SIGNAL.write(4);
			AWLEN_SIGNAL.write(1);
			ARLEN_SIGNAL.write(1);
		}
	}
};
}

#endif /* _XAXIMM_MONITOR_T_H_ */
