
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

#ifndef _XTLM_AXIMM_PAYLOAD_H_
#define _XTLM_AXIMM_PAYLOAD_H_

#include <cstddef>
#include <cstring>
#include <string>
#include <iostream>
#include <sstream>
#include "xtlm_interfaces/xtlm_aximm_mm_interface.h"
#include "xtlm_generic_payload/aximm_decls.h"
#include "xtlm_generic_payload/xtlm_extension.h"
#include "report_handler.h"

namespace xtlm {
namespace aximm {
enum granularity {
	NONE = 0, TRANSACTION, CHANNEL, HANDSHAKE
};
}

enum xtlm_command {
	XTLM_READ_COMMAND = 0, XTLM_WRITE_COMMAND, XTLM_IGNORE_COMMAND
};

enum xtlm_response_status {
	XTLM_OK_RESPONSE = 1,
	XTLM_INCOMPLETE_RESPONSE = 0,
	XTLM_GENERIC_ERROR_RESPONSE = -1,
	XTLM_ADDRESS_ERROR_RESPONSE = -2,
	XTLM_COMMAND_ERROR_RESPONSE = -3,
	XTLM_BURST_ERROR_RESPONSE = -4,
	XTLM_BYTE_ENABLE_ERROR_RESPONSE = -5
};

enum xtlm_aximm_response_status {
	XTLM_AXI_NORESP = -1,
	XTLM_AXI_OKAY = 0,
	XTLM_AXI_EXOKAY = 1,
	XTLM_AXI_SLVERR = 2,
	XTLM_AXI_DECERR = 3
};

class aximm_payload {
public:

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_get_data_ptr(unsigned int size) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		m_data = m_mm->get_data_pointer(size);
		m_data_size = size;
		m_renewable_data = m_data;
		return m_data;
	}

	/**********************************************************
	 * To set or get DATA
	 * Allocation and De-allocation of resources is user responsibility
	 * size is the memory allocated
	 **********************************************************/
	void set_data_ptr(unsigned char* ptr, const unsigned int& size) {
		m_data = ptr;
		m_data_size = size;
	}

	void set_data_length(const unsigned int& size) {
		m_data_size = size;
	}

	unsigned char* get_data_ptr() const {
		return m_data;
	}

	unsigned int get_data_length() const {
		return m_data_size;
	}

	/**************************************
	 * To do deep copy data in user provided
	 * pointer
	 **************************************/
	void copy_data_ptr_to(unsigned char* data) {
		if (data == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"Data pointer (argument) referencing to NULL");
		if (m_data == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"Payload data pointer referencing to NULL");
		memcpy(data, m_data, m_data_size);
	}

	/**************************************
	 *  This is to create and get new data_enable
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_get_byte_enable_ptr(unsigned int size) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		m_byte_enable = m_mm->get_data_pointer(size);
		m_byte_enable_size = size;
		m_renewable_data_enable = m_byte_enable;
		return m_byte_enable;
	}

	/**********************************************************
	 * To set or get Byte ENABLE
	 * Allocation and De-allocation of resources is user responsibility
	 * size is the memory allocated
	 **********************************************************/
	void set_byte_enable_ptr(unsigned char* ptr, const unsigned int& size) {
		m_byte_enable = ptr;
		m_byte_enable_size = size;
	}

	void set_byte_enable_length(const unsigned int& size) {
		m_byte_enable_size = size;
	}

	unsigned char* get_byte_enable_ptr() const {
		return m_byte_enable;
	}

	unsigned int get_byte_enable_length() const {
		return m_byte_enable_size;
	}

	/**************************************
	 * To do deep copy data_enable in user provided
	 * pointer
	 **************************************/
	void copy_byte_enable_ptr_to(unsigned char* byte_enable) {
		if (byte_enable == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"Byte enable (argument) pointer referencing to NULL");
		if (m_byte_enable == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"Byte enable pointer of payload is referencing to NULL");
		memcpy(byte_enable, m_byte_enable, m_byte_enable_size);
	}

	/**************************************
	 * To set/get address.
	 * This is only used during ALL phases.
	 *************************************/
	void set_address(const unsigned long long addr) {
		m_address = addr;
	}
	unsigned long long get_address() const {
		return m_address;
	}

	/***************************************************
	 *  To set and get ARID,RID, AWID or BID
	 *  Value for all the pins mentioned above should
	 *  be same for a single transaction
	 ***************************************************/
	void set_axi_id(const unsigned int& val) {
		m_axi_id = val;
	}

	unsigned int get_axi_id() const {
		return m_axi_id;
	}

	/****************************************************
	 * To set and get AWBURST or ARBURST
	 ****************************************************/
	void set_burst_type(const unsigned int& val) {
		m_burst_type = val;
	}

	unsigned int get_burst_type() const {
		return m_burst_type;
	}

	/********************************************************
	 * To set or get AWSIZE or ARSIZE
	 *******************************************************/
	void set_burst_size(const unsigned int& val) {
		m_burst_size = val;
	}

	unsigned int get_burst_size() const {
		return m_burst_size;
	}

	/*********************************************************
	 * To set or get AWLEN or ARLEN
	 *********************************************************/
	void set_burst_length(const unsigned int& val) {
		m_burst_length = val;
	}

	unsigned int get_burst_length() const {
		return m_burst_length;
	}

	/**************************************
	 * To set/get Transaction type(wr/rd).
	 * This is only used during ALL phases.
	 *************************************/

	void set_command(xtlm_command tx_type) {
		m_command = tx_type;
	}

	xtlm_command get_command() const {
		return m_command;
	}

	/**************************************
	 * Response status related methods
	 *************************************/

	bool is_response_ok() const {
		return is_axi_response_ok();
	}

	bool is_response_error() const {
		return is_axi_response_error();
	}

	xtlm_response_status get_response_status() const {
		if (m_axi_response_status < 0) {
			return m_response_status;
		}
		switch (m_axi_response_status) {
		case XTLM_AXI_OKAY:
			return XTLM_OK_RESPONSE;
		case XTLM_AXI_EXOKAY:
			return XTLM_OK_RESPONSE;
		case XTLM_AXI_SLVERR:
			return XTLM_COMMAND_ERROR_RESPONSE;
		case XTLM_AXI_DECERR:
			return XTLM_ADDRESS_ERROR_RESPONSE;
		default:
			return XTLM_OK_RESPONSE;
		}
	}

	void set_response_status(const xtlm_response_status response_status) {
		m_response_status = response_status;
	}

	std::string get_response_string() const {
		xtlm_response_status l_resp = get_response_status();
		switch (l_resp) {
		case XTLM_OK_RESPONSE:
			return "XTLM_OK_RESPONSE";
		case XTLM_INCOMPLETE_RESPONSE:
			return "XTLM_INCOMPLETE_RESPONSE";
		case XTLM_GENERIC_ERROR_RESPONSE:
			return "XTLM_GENERIC_ERROR_RESPONSE";
		case XTLM_ADDRESS_ERROR_RESPONSE:
			return "XTLM_ADDRESS_ERROR_RESPONSE";
		case XTLM_COMMAND_ERROR_RESPONSE:
			return "XTLM_COMMAND_ERROR_RESPONSE";
		case XTLM_BURST_ERROR_RESPONSE:
			return "XTLM_BURST_ERROR_RESPONSE";
		case XTLM_BYTE_ENABLE_ERROR_RESPONSE:
			return "XTLM_BYTE_ENABLE_ERROR_RESPONSE";
		}
		return "XTLM_UNKNOWN_RESPONSE";
	}

	/**************************************
	 * AXI Response status related methods
	 * Specifically to set AXI related responses
	 * Optional to use
	 *************************************/

	bool is_axi_response_ok() const {
		if (m_axi_response_status < 0) {
			return (m_response_status > 0);
		}
		return (m_axi_response_status <= 1);
	}

	bool is_axi_response_error() const {
		if (m_axi_response_status < 0) {
			return (m_response_status <= 0);
		}
		return (m_axi_response_status > 1);
	}

	xtlm_aximm_response_status get_axi_response_status() const {
		if (m_axi_response_status < 0) {
			switch (m_response_status) {
			case XTLM_OK_RESPONSE:
				return XTLM_AXI_OKAY;
			case XTLM_GENERIC_ERROR_RESPONSE:
				return XTLM_AXI_DECERR;
			case XTLM_ADDRESS_ERROR_RESPONSE:
				return XTLM_AXI_DECERR;
			case XTLM_COMMAND_ERROR_RESPONSE:
				return XTLM_AXI_SLVERR;
			default:
				return XTLM_AXI_SLVERR;
			}
		}
		return m_axi_response_status;
	}

	void set_axi_response_status(
			const xtlm_aximm_response_status response_status) {
		m_axi_response_status = response_status;
	}

	std::string get_axi_response_string() const {
		xtlm_aximm_response_status response_status = get_axi_response_status();
		switch (response_status) {
		case XTLM_AXI_NORESP:
			return "XTLM_AXI_NORESP";
		case XTLM_AXI_OKAY:
			return "XTLM_AXI_OKAY";
		case XTLM_AXI_EXOKAY:
			return "XTLM_AXI_EXOKAY";
		case XTLM_AXI_SLVERR:
			return "XTLM_AXI_SLVERR";
		case XTLM_AXI_DECERR:
			return "XTLM_AXI_DECERR";
		}
		return "XTLM_AXI_UNKNOWN_RESPONSE";
	}

	/**************************************
	 *  This is to acquire payload. Payload
	 *  and Pointers created by payload will
	 *  be alive m_ref_count is down to zero
	 **************************************/
	void acquire() {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		m_ref_count += 1;
	}

	/******************************************
	 *  To return ref count
	 ******************************************/
	unsigned int get_ref_count() {
		return m_ref_count;
	}

	/***************************************
	 * To release payload. Pointers and Payload
	 * will be re-used if m_ref_count is zero
	 ***************************************/
	void release() {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		if (m_ref_count <= 0) {
            XSC_REPORT_WARNING(m_logger, "xtlm::703",
					"Release called more no. of times than acquire. (m_ref_count <=0)");
            return;
        }

		m_ref_count -= 1;
		if (m_ref_count == 0)
			m_mm->free(this);
	}

	/******************************************
	 *  To check if mm available
	 ******************************************/
	bool has_mm() {
		return (m_mm != NULL);
	}

	void set_mm(xtlm_aximm_mm_interface* mm) {
		if (m_mm != NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::704",
					"Memory Manger is already present. Can't set again.");
		m_mm = mm;
	}

	/******************************************************
	 * To set and get AWCACHE or ARCACHE
	 ******************************************************/
	void set_cache(const unsigned int& val) {
		m_cache = val;
	}

	unsigned int get_cache() const {
		return m_cache;
	}

	/*******************************************************
	 *To set and get AWPROT or ARPROT
	 *******************************************************/
	void set_prot(const unsigned int& val) {
		m_prot = val;
	}

	unsigned int get_prot() const {
		return m_prot;
	}

	/*******************************************************
	 *To set and get AWQOS or ARQOS
	 *******************************************************/
	void set_qos(const unsigned int& val) {
		m_qos = val;
	}

	unsigned int get_qos() const {
		return m_qos;
	}

	/********************************************************
	 * To set or get AWREGION or ARREGION
	 ********************************************************/
	void set_region(const unsigned int& val) {
		m_region = val;
	}

	unsigned int get_region() const {
		return m_region;
	}

	/********************************************************
	 *To set or get AWLOCK or ARLOCK
	 *******************************************************/
	void set_lock(const unsigned int& val) {
		m_lock = val;
	}

	unsigned int get_lock() const {
		return m_lock;
	}

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_get_awuser_ptr(unsigned int size) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		m_awuser = m_mm->get_data_pointer(size);
		m_awuser_size = size;
		m_renewable_awuser = m_awuser;
		return m_awuser;
	}

	/**********************************************************
	 * To set or get AWUSER
	 * Allocation and De-allocation of resources is user responsibility
	 * size is the memory allocated
	 **********************************************************/
	void set_awuser_ptr(unsigned char* ptr, const unsigned int& size) {
		m_awuser = ptr;
		m_awuser_size = size;
	}

	unsigned char* get_awuser_ptr() const {
		return m_awuser;
	}

	unsigned int get_awuser_size() const {
		return m_awuser_size;
	}

	/**************************************
	 * To do deep copy awuser in user provided
	 * pointer
	 **************************************/
	void copy_awuser_ptr_to(unsigned char* awuser) {
		if (awuser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"awuser (argument) is referencing to NULL pointer");
		if (m_awuser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"awuser pointer of payload is referencing to NULL pointer");
		memcpy(awuser, m_awuser, m_awuser_size);
	}

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_get_wuser_ptr(unsigned int size) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		m_wuser = m_mm->get_data_pointer(size);
		m_wuser_size = size;
		m_renewable_wuser = m_wuser;
		return m_wuser;
	}

	/**********************************************************
	 * To set or get WUSER
	 * Allocation and De-allocation of resources is user responsibility
	 * size is the memory allocated
	 **********************************************************/
	void set_wuser_ptr(unsigned char* ptr, const unsigned int& size) {
		m_wuser = ptr;
		m_wuser_size = size;
	}

	unsigned char* get_wuser_ptr() const {
		return m_wuser;
	}

	unsigned int get_wuser_size() const {
		return m_wuser_size;
	}

	/**************************************
	 * To do deep copy wuser in user provided
	 * pointer
	 **************************************/
	void copy_wuser_ptr_to(unsigned char* wuser) {
		if (wuser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"wuser pointer (argument) is referencing to NULL pointer");
		if (m_wuser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"wuser pointer of payload is referencing to NULL pointer");
		memcpy(wuser, m_wuser, m_wuser_size);
	}

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_get_buser_ptr(unsigned int size) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		m_buser = m_mm->get_data_pointer(size);
		m_buser_size = size;
		m_renewable_buser = m_buser;
		return m_buser;
	}

	/**********************************************************
	 * To set or get BUSER
	 * Allocation and De-allocation of resources is user responsibility
	 * size is the memory allocated
	 **********************************************************/
	void set_buser_ptr(unsigned char* ptr, const unsigned int& size) {
		m_buser = ptr;
		m_buser_size = size;
	}

	unsigned char* get_buser_ptr() const {
		return m_buser;
	}

	unsigned int get_buser_size() const {
		return m_buser_size;
	}

	/**************************************
	 * To do deep copy buser in user provided
	 * pointer
	 **************************************/
	void copy_buser_ptr_to(unsigned char* buser) {
		if (buser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"buser (argument) pointer referencing to NULL pointer");
		if (m_buser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"buser pointer of payload is referencing to NULL pointer");
		memcpy(buser, m_buser, m_buser_size);
	}

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_get_aruser_ptr(unsigned int size) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		m_aruser = m_mm->get_data_pointer(size);
		m_aruser_size = size;
		m_renewable_aruser = m_aruser;
		return m_aruser;
	}

	/**********************************************************
	 * To set or get ARUSER
	 * Allocation and De-allocation of resources is user responsibility
	 * size is the memory allocated
	 **********************************************************/
	void set_aruser_ptr(unsigned char* ptr, const unsigned int& size) {
		m_aruser = ptr;
		m_aruser_size = size;
	}

	unsigned char* get_aruser_ptr() const {
		return m_aruser;
	}

	unsigned int get_aruser_size() const {
		return m_aruser_size;
	}

	/**************************************
	 * To do deep copy aruser in user provided
	 * pointer
	 **************************************/
	void copy_aruser_ptr_to(unsigned char* aruser) {
		if (aruser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"aruser (argument) pointer referencing to NULL pointer");
		if (m_aruser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"aruser pointer of payload is referencing to NULL pointer");
		memcpy(aruser, m_aruser, m_aruser_size);
	}

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_get_ruser_ptr(unsigned int size) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		m_ruser = m_mm->get_data_pointer(size);
		m_ruser_size = size;
		m_renewable_ruser = m_ruser;
		return m_ruser;
	}

	/**********************************************************
	 * To set or get RUSER
	 * Allocation and De-allocation of resources is user responsibility
	 * size is the memory allocated
	 **********************************************************/
	void set_ruser_ptr(unsigned char* ptr, const unsigned int& size) {
		m_ruser = ptr;
		m_ruser_size = size;
	}

	unsigned char* get_ruser_ptr() const {
		return m_ruser;
	}

	unsigned int get_ruser_size() const {
		return m_ruser_size;
	}

	/**************************************
	 * To do deep copy ruser in user provided
	 * pointer
	 **************************************/
	void copy_ruser_ptr_to(unsigned char* ruser) {
		if (ruser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"ruser (argument) pointer referencing to NULL pointer");
		if (m_ruser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"ruser of payload is referencing to NULL pointer");
		memcpy(ruser, m_ruser, m_ruser_size);
	}

	/**************************************
	 * To set/get granularity.
	 * This is only used during INFO phase.
	 * If not using utility/INFO phase ignore
	 * this
	 *************************************/

	/**********************************************************
	 * Constructor
	 **********************************************************/
	aximm_payload() :
			m_logger("aximm_payload") , m_extensions(max_num_extensions()) {
		reset();
		m_mm = NULL;
	}

	explicit aximm_payload(xtlm_aximm_mm_interface* mm) :
			m_logger("aximm_payload") , m_extensions(max_num_extensions()) {
		reset();
		m_mm = mm;
	}

	/******************************************
	 * Deep copy of the xtlm mm payload 
	 ******************************************/
	void deep_copy_from(const aximm_payload & other) {
		m_axi_id = other.m_axi_id;
		m_address = other.m_address;
		m_command = other.m_command;
		m_response_status = other.m_response_status;
		m_burst_type = other.m_burst_type;
		m_cache = other.m_cache;
		m_prot = other.m_prot;
		m_qos = other.m_qos;
		m_region = other.m_region;
		m_lock = other.m_lock;
		m_burst_size = other.m_burst_size;
		m_burst_length = other.m_burst_length;
		m_awuser_size = other.m_awuser_size;
		m_wuser_size = other.m_wuser_size;
		m_buser_size = other.m_buser_size;
		m_aruser_size = other.m_aruser_size;
		m_ruser_size = other.m_ruser_size;
		m_data_size = other.m_data_size;
		m_byte_enable_size = other.m_byte_enable_size;

		//there must be enough space in the target transaction!
		if (m_awuser && other.m_awuser) {
			memcpy(m_awuser, other.m_awuser, m_awuser_size);
		}
		if (m_wuser && other.m_wuser) {
			memcpy(m_wuser, other.m_wuser, m_wuser_size);
		}
		if (m_buser && other.m_buser) {
			memcpy(m_buser, other.m_buser, m_buser_size);
		}
		if (m_aruser && other.m_aruser) {
			memcpy(m_aruser, other.m_aruser, m_aruser_size);
		}
		if (m_ruser && other.m_ruser) {
			memcpy(m_ruser, other.m_ruser, m_ruser_size);
		}
		if (m_data && other.m_data) {
			memcpy(m_data, other.m_data, m_data_size);
		}
		if (m_byte_enable && other.m_byte_enable) {
			memcpy(m_byte_enable, other.m_byte_enable, m_byte_enable_size);
		}

		// deep copy extensions (sticky and non-sticky)
		for (unsigned int i = 0; i < other.m_extensions.size(); i++) {
			if (other.m_extensions[i]) {              //original has extension i
				if (!m_extensions[i]) {                   //We don't: clone.
					xtlm_extension_base *ext = other.m_extensions[i]->clone();
					if (ext)     //extension may not be clonable.
					{
						if (has_mm()) { //mm can take care of removing cloned extensions
							set_auto_extension(i, ext);
						} else { // no mm, user will call free_all_extensions().
							set_extension(i, ext);
						}
					}
				} else { //We already have such extension. Copy original over it.
					m_extensions[i]->copy_from(*other.m_extensions[i]);
				}
			}
		}
	}

	void update_extensions_from(const aximm_payload & other) {
		// deep copy extensions that are already present
		for (unsigned int i = 0; i < other.m_extensions.size(); i++) {
			if (other.m_extensions[i]) {              //original has extension i
				if (m_extensions[i]) {                   //We have it too. copy.
					m_extensions[i]->copy_from(*other.m_extensions[i]);
				}
			}
		}
	}

	// Free all extensions. Useful when reusing a cloned transaction that doesn't have memory manager.
	// normal and sticky extensions are freed and extension array cleared.
	void free_all_extensions() {
		m_extensions.free_entire_cache();
		for (unsigned int i = 0; i < m_extensions.size(); i++) {
			if (m_extensions[i]) {
				m_extensions[i]->free();
				m_extensions[i] = 0;
			}
		}
	}

	/*************************************************************
	 * To reset all the member to default value. This is only called
	 * by Memory Manager before pushing payload to free pool
	 *************************************************************/
	void reset() {
		m_axi_id = 0;
		m_address = 0;
		m_command = XTLM_IGNORE_COMMAND;
		m_burst_type = 1;
		m_awuser = NULL;
		m_wuser = NULL;
		m_buser = NULL;
		m_aruser = NULL;
		m_ruser = NULL;
		m_data = NULL;
		m_byte_enable = NULL;
		m_cache = 0;
		m_prot = 0;
		m_qos = 0;
		m_region = 0;
		m_lock = 0;
		m_burst_size = 0;
		m_burst_length = 1;
		m_awuser_size = 0;
		m_wuser_size = 0;
		m_buser_size = 0;
		m_aruser_size = 0;
		m_ruser_size = 0;
		m_data_size = 0;
		m_byte_enable_size = 0;
		m_response_status = XTLM_OK_RESPONSE;
		m_axi_response_status = XTLM_AXI_NORESP;
		m_ref_count = 0;
		m_renewable_awuser = NULL;
		m_renewable_wuser = NULL;
		m_renewable_buser = NULL;
		m_renewable_aruser = NULL;
		m_renewable_ruser = NULL;
		m_renewable_data = NULL;
		m_renewable_data_enable = NULL;
		m_extensions.free_entire_cache();
	}

	//To print Payload. Return as a string based on levels selected
	//Level 0: Nothing
	//Level 1: Basic information (Address, Phases, Delay)
	//Level 2: Basic information w/ Data (Address, Phases, Delay, Data and Byte Enable)
	//Level 3: Basic information w/ Data + AXI specific information
	//Level 4: Basic information w/ Data + AXI specific information + less used AXI Information
	//Level 5: Debug Level to print internal information (ref count or renewable ptr)
	void get_log(std::string& msg, const unsigned int& level) const {
		if (level == 0)
			return;

		std::string tab("  ");
		std::stringstream m_msg;
		m_msg << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n";
		m_msg << "AXIMM Payload [ptr=" << this << "]\n";
		//Command
		m_msg << tab << "Command:: "
				<< (m_command == 0 ?
						"READ" : (m_command == 1 ? "WRITE" : "IGNORE")) << "\n";
		//Address
		m_msg << tab << "Address:: " << std::hex << "0x" << m_address
				<< std::dec << "\n";
		//Data Length
		m_msg << tab << "Data Length:: " << std::hex << "0x" << m_data_size
				<< std::dec << "\n";

		//Byte Enable Length
		m_msg << tab << "Byte Enable Length:: " << std::hex << "0x"
				<< m_byte_enable_size << std::dec << "\n";

		if (level == 1) {
			m_msg
					<< "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
			msg = m_msg.str();
			return;
		}

		//Data
		m_msg << tab << "Data (Hex):: ";
		if (m_data != NULL) {
			for (unsigned int i = 0; i < m_data_size; i++)
				m_msg << std::hex << static_cast<int>(m_data[i]) << std::dec
						<< " ";
		} else {
			m_msg << "NULL";
		}
		m_msg << "\n";

		//Byte Enable
		m_msg << tab << "Byte Enable (Hex):: ";
		if (m_byte_enable != NULL) {
			for (unsigned int i = 0; i < m_byte_enable_size; i++)
				m_msg << std::hex << static_cast<int>(m_byte_enable[i])
						<< std::dec << " ";
		} else {
			m_msg << "NULL";
		}
		m_msg << "\n";

		if (level == 2) {
			m_msg
					<< "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
			msg = m_msg.str();
			return;
		}

		//AXI Specific information

		m_msg << tab << "Burst Length:: " << std::hex << "0x" << m_burst_length
				<< std::dec << "\n";
		m_msg << tab << "Burst Size:: " << std::hex << "0x" << m_burst_size
				<< std::dec << "\n";
		m_msg << tab << "Burst Type:: " << std::hex << "0x" << m_burst_type
				<< std::dec << "\n";
		m_msg << tab << "AXI ID:: " << std::hex << "0x" << m_axi_id << std::dec
				<< "\n";

		if (level == 3) {
			m_msg
					<< "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
			msg = m_msg.str();
			return;
		}

		//Less used functionality
		m_msg << tab << "ARUSER (Hex):: ";
		if (m_aruser != NULL) {
			for (unsigned int i = 0; i < m_aruser_size; i++)
				m_msg << std::hex << static_cast<int>(m_aruser[i]) << std::dec
						<< " ";
		} else {
			m_msg << "NULL";
		}
		m_msg << "\n";

		m_msg << tab << "RUSER (Hex):: ";
		if (m_ruser != NULL) {
			for (unsigned int i = 0; i < m_ruser_size; i++)
				m_msg << std::hex << static_cast<int>(m_ruser[i]) << std::dec
						<< " ";
		} else {
			m_msg << "NULL";
		}
		m_msg << "\n";

		m_msg << tab << "AWUSER (Hex):: ";
		if (m_awuser != NULL) {
			for (unsigned int i = 0; i < m_awuser_size; i++)
				m_msg << std::hex << static_cast<int>(m_awuser[i]) << std::dec
						<< " ";
		} else {
			m_msg << "NULL";
		}
		m_msg << "\n";

		m_msg << tab << "WUSER (Hex):: ";
		if (m_wuser != NULL) {
			for (unsigned int i = 0; i < m_wuser_size; i++)
				m_msg << std::hex << static_cast<int>(m_wuser[i]) << std::dec
						<< " ";
		} else {
			m_msg << "NULL";
		}
		m_msg << "\n";

		m_msg << tab << "BUSER (Hex):: ";
		if (m_buser != NULL) {
			for (unsigned int i = 0; i < m_buser_size; i++)
				m_msg << std::hex << static_cast<int>(m_buser[i]) << std::dec
						<< " ";
		} else {
			m_msg << "NULL";
		}
		m_msg << "\n";

		m_msg << tab << "CACHE:: " << std::hex << "0x" << m_cache << std::dec
				<< "\n";
		m_msg << tab << "PROT:: " << std::hex << "0x" << m_prot << std::dec
				<< "\n";
		m_msg << tab << "QOS:: " << std::hex << "0x" << m_qos << std::dec
				<< "\n";
		m_msg << tab << "REGION:: " << std::hex << "0x" << m_region << std::dec
				<< "\n";
		m_msg << tab << "LOCK:: " << std::hex << "0x" << m_lock << std::dec
				<< "\n";

		if (level == 4) {
			m_msg
					<< "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
			msg = m_msg.str();
			return;
		}

		m_msg << tab << "Memory Manager:: " << m_mm << "\n";
		m_msg << tab << "Reference Count:: " << m_ref_count << "\n";
		m_msg << tab << "Data Pointer and Renewable Data Pointer:: "
				<< (void *) m_data << " " << (void *) m_renewable_data << "\n";
		m_msg << tab
				<< "Byte Enable Pointer and Renewable Byte Enable Pointer:: "
				<< (void *) m_byte_enable << " "
				<< (void *) m_renewable_data_enable << "\n";

		m_msg << "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
		msg += m_msg.str();
		return;
	}

	//Support for extension

	// Stick the pointer to an extension into the vector, return the
	// previous value:
	template<typename T> T* set_extension(T* ext) {
		return static_cast<T*>(set_extension(T::ID, ext));
	}

	// non-templatized version with manual index:
	xtlm_extension_base* set_extension(unsigned int index,
			xtlm_extension_base* ext) {
		xtlm_extension_base* tmp = m_extensions[index];
		m_extensions[index] = ext;
		return tmp;
	}

	// Stick the pointer to an extension into the vector, return the
	// previous value and schedule its release
	template<typename T> T* set_auto_extension(T* ext) {
		return static_cast<T*>(set_auto_extension(T::ID, ext));
	}

	// non-templatized version with manual index:
	xtlm_extension_base* set_auto_extension(unsigned int index,
			xtlm_extension_base* ext) {
		xtlm_extension_base* tmp = m_extensions[index];
		m_extensions[index] = ext;
		if (!tmp)
			m_extensions.insert_in_cache(&m_extensions[index]);
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manger Referencing to NULL pointer");
		return tmp;
	}

	// Check for an extension, ext will point to 0 if not present
	template<typename T> void get_extension(T*& ext) const {
		ext = get_extension<T>();
	}
	template<typename T> T* get_extension() const {
		return static_cast<T*>(get_extension(T::ID));
	}
	// Non-templatized version with manual index:
	xtlm_extension_base* get_extension(unsigned int index) const {
		return m_extensions[index];
	}

	//this call just removes the extension from the txn but does not
	// call free() or tells the MM to do so
	// it return false if there was active MM so you are now in an unsafe situation
	// recommended use: when 100% sure there is no MM
	template<typename T> void clear_extension(const T* ext) {
		clear_extension<T>();
	}

	//this call just removes the extension from the txn but does not
	// call free() or tells the MM to do so
	// it return false if there was active MM so you are now in an unsafe situation
	// recommended use: when 100% sure there is no MM
	template<typename T> void clear_extension() {
		clear_extension(T::ID);
	}

	//this call removes the extension from the txn and does
	// call free() or tells the MM to do so when the txn is finally done
	// recommended use: when not sure there is no MM
	template<typename T> void release_extension(T* ext) {
		release_extension<T>();
	}

	//this call removes the extension from the txn and does
	// call free() or tells the MM to do so when the txn is finally done
	// recommended use: when not sure there is no MM
	template<typename T> void release_extension() {
		release_extension(T::ID);
	}

	/*aximm_payload& operator=(aximm_payload&) {
	 return (*this);
	 }*/

	//For internal use only
public:
	unsigned char* get_renewable_data() const {
		return m_renewable_data;
	}

	unsigned char* get_renewable_byte_enable() const {
		return m_renewable_data_enable;
	}

	unsigned char* get_renewable_ruser() const {
		return m_renewable_ruser;
	}

	unsigned char* get_renewable_awuser() const {
		return m_renewable_awuser;
	}

	unsigned char* get_renewable_wuser() const {
		return m_renewable_wuser;
	}

	unsigned char* get_renewable_aruser() const {
		return m_renewable_aruser;
	}

	unsigned char* get_renewable_buser() const {
		return m_renewable_buser;
	}
private:
	// Non-templatized version with manual index
	void clear_extension(unsigned int index) {
		m_extensions[index] = static_cast<xtlm_extension_base*>(0);
	}
	// Non-templatized version with manual index
	void release_extension(unsigned int index) {
		if (m_mm) {
			m_extensions.insert_in_cache(&m_extensions[index]);
		} else {
			m_extensions[index]->free();
			m_extensions[index] = static_cast<xtlm_extension_base*>(0);
		}
	}
protected:
private:
	unsigned char* m_data;
	unsigned int m_data_size;

	unsigned char* m_byte_enable;
	unsigned int m_byte_enable_size;

	unsigned long long m_address;
	unsigned int m_axi_id;
	unsigned int m_burst_type;
	unsigned int m_burst_length;
	unsigned int m_burst_size;

	xtlm_command m_command;
	xtlm_response_status m_response_status;
	xtlm_aximm_response_status m_axi_response_status;

	//Optional AXI properties
	unsigned int m_cache;
	unsigned int m_prot;
	unsigned int m_qos;
	unsigned int m_region;
	unsigned int m_lock;

	unsigned int m_awuser_size;
	unsigned int m_wuser_size;
	unsigned int m_buser_size;
	unsigned int m_aruser_size;
	unsigned int m_ruser_size;
	unsigned char* m_awuser;
	unsigned char* m_wuser;
	unsigned char* m_ruser;
	unsigned char* m_buser;
	unsigned char* m_aruser;

private:
	xsc::common_cpp::report_handler m_logger;   //!< Log Framework
	//For Internal use of Payload
	unsigned int m_ref_count;
	//memory manager base class
	xtlm_aximm_mm_interface* m_mm;
	/***********************************************************
	 * These pointers are needed to keep track if memory is
	 * own by memory manager.
	 ***********************************************************/
	unsigned char* m_renewable_awuser;
	unsigned char* m_renewable_wuser;
	unsigned char* m_renewable_buser;
	unsigned char* m_renewable_aruser;
	unsigned char* m_renewable_ruser;
	unsigned char* m_renewable_data;
	unsigned char* m_renewable_data_enable;

	xtlm_array<xtlm_extension_base*> m_extensions;

};

}

#endif /* _XTLM_AXIMM_PAYLOAD_H_ */

