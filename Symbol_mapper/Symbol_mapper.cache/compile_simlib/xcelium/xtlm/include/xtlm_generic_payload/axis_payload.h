
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

#ifndef _XTLM_AXIS_PAYLOAD_H_
#define _XTLM_AXIS_PAYLOAD_H_

#include <cstddef>
#include <cstring>
#include "xtlm_interfaces/xtlm_axis_mm_interface.h"
#include "xtlm_generic_payload/xtlm_extension.h"
#include <iostream>
#include <sstream>
#include "report_handler.h"

namespace xtlm {

namespace axis {
enum granularity {
	NONE = 0, TRANSACTION, HANDSHAKE
};
}

class axis_payload {
public:

	/**************************************
	 * To set or get TDATA and TDATA LENGTH
	 **************************************/
	unsigned char* get_tdata_ptr() const {
		return m_tdata;
	}

	void set_tdata_ptr(unsigned char* tdata, unsigned int tdata_length) {
		this->m_tdata = tdata;
		this->m_tdata_length = tdata_length;
	}

	/**************************************
	 * To do deep copy of TDATA in user provided
	 * pointer
	 **************************************/
	void copy_tdata_ptr_to(unsigned char* tdata) {
		if (tdata == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"tdata (argument) pointer is referencing to NULL pointer");
		if (m_tdata == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"tdata pointer of payload is referencing to NULL pointer");

		memcpy(tdata, m_tdata, m_tdata_length);
	}

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_set_tdata_ptr(unsigned int length) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manager is referencing to NULL pointer");
		m_tdata = m_mm->get_data_pointer(length);
		m_tdata_length = length;
		m_renewable_tdata = m_tdata;
		return m_tdata;
	}

	unsigned int get_tdata_length() const {
		return m_tdata_length;
	}

	/**************************************
	 * To set or get TDEST
	 **************************************/
	unsigned int get_tdest() const {
		return m_tdest;
	}

	void set_tdest(unsigned int tdest) {
		this->m_tdest = tdest;
	}

	/**************************************
	 * To set or get TID
	 **************************************/
	unsigned int get_tid() const {
		return m_tid;
	}

	void set_tid(unsigned int tid) {
		this->m_tid = tid;
	}

	/**************************************
	 * To set or get TKEEP and TKEEP LENGTH
	 **************************************/
	unsigned char* get_tkeep_ptr() const {
		return m_tkeep;
	}

	void set_tkeep_ptr(unsigned char* tkeep, unsigned int tkeep_length) {
		this->m_tkeep = tkeep;
		this->m_tkeep_length = tkeep_length;
	}

	/**************************************
	 * To do deep copy TKEEP in user provided
	 * pointer
	 **************************************/
	void copy_tkeep_ptr_to(unsigned char* tkeep) {
		if (tkeep == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"tkeep (argument) pointer is referencing to NULL pointer");
		if (m_tkeep == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"tkeep pointer of payload is referencing to NULL pointer");
		memcpy(tkeep, m_tkeep, m_tkeep_length);
	}

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_set_tkeep_ptr(unsigned int length) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manager is referencing to NULL pointer");

		m_tkeep = m_mm->get_data_pointer(length);
		m_tkeep_length = length;
		m_renewable_tkeep = m_tkeep;
		return m_tkeep;
	}

	unsigned int get_tkeep_length() const {
		return m_tkeep_length;
	}

	/**************************************
	 * To set or get TLAST
	 **************************************/
	bool get_tlast() const {
		return m_tlast;
	}

	void set_tlast(bool tlast) {
		this->m_tlast = tlast;
	}

	/**************************************
	 * To set or get TSTRB and TSTRB LENGTH
	 **************************************/
	unsigned char* get_tstrb_ptr() const {
		return m_tstrb;
	}

	void set_tstrb_ptr(unsigned char* tstrb, unsigned int tstrb_length) {
		this->m_tstrb = tstrb;
		this->m_tstrb_length = tstrb_length;
	}

	/**************************************
	 * To do deep copy TSTRB in user provided
	 * pointer
	 **************************************/
	void copy_tstrb_ptr_to(unsigned char* tstrb) {
		if (tstrb == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"tstrb (argument) pointer is referencing to NULL pointer");
		if (m_tstrb == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"tstrb pointer of payload is referencing to NULL pointer");
		memcpy(tstrb, m_tstrb, m_tstrb_length);
	}

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_set_tstrb_ptr(unsigned int length) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manager is referencing to NULL pointer");
		m_tstrb = m_mm->get_data_pointer(length);
		m_tstrb_length = length;
		m_renewable_tstrb = m_tstrb;
		return m_tstrb;
	}

	unsigned int get_tstrb_length() const {
		return m_tstrb_length;
	}

	/**************************************
	 * To set or get TUSER and TUSER LENGTH
	 **************************************/
	unsigned char* get_tuser_ptr() const {
		return m_tuser;
	}

	void set_tuser_ptr(unsigned char* tuser) {
		this->m_tuser = tuser;
	}

	/**************************************
	 * To do deep copy TUSER in user provided
	 * pointer
	 **************************************/
	void copy_tuser_ptr_to(unsigned char* tuser) {
		if (tuser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::701",
					"tuser (argument) pointer is referencing to NULL pointer");
		if (m_tuser == NULL)
			XSC_REPORT_FATAL(m_logger, "xtlm::702",
					"tuser pointer of payload is referencing to NULL pointer");
		memcpy(tuser, m_tuser, m_tuser_length);
	}

	/**************************************
	 *  This is to create and get new data
	 *  pointer from memory manager.
	 *  Life span of this pointer is same
	 *  as that of payload
	 **************************************/
	unsigned char* create_and_set_tuser_ptr(unsigned int length) {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manager is referencing to NULL pointer");
		m_tuser = m_mm->get_data_pointer(length);
		m_tuser_length = length;
		m_renewable_tuser = m_tuser;
		return m_tuser;
	}

	unsigned int get_tuser_length() const {
		return m_tuser_length;
	}

	/**************************************
	 * To set/get granularity.
	 * This is only used during INFO phase.
	 * If not using utility/INFO phase ignore
	 * this
	 *************************************/
	xtlm::axis::granularity get_granularity() const {
		return m_granularity;
	}

	void set_granularity(xtlm::axis::granularity granularity) {
		this->m_granularity = granularity;
	}

	/**************************************
	 * To set/get number of beats present in
	 * a single payload
	 *************************************/
	unsigned int get_n_beats() const {
		return m_n_beats;
	}

	void set_n_beats(unsigned int nBeats) {
		m_n_beats = nBeats;
	}
	/**************************************
	 *  This is to acquire payload. Payload
	 *  and Pointers created by payload will
	 *  be alive m_ref_count is down to zero
	 **************************************/
	void acquire() {
		if (m_mm == 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::700",
					"Memory Manager is referencing to NULL pointer");
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
					"Memory Manager is referencing to NULL pointer");
		if (m_ref_count <= 0)
			XSC_REPORT_FATAL(m_logger, "xtlm::703",
					"Release called more no. of times than acquire. (m_ref_count <= 0)");
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

	void set_mm(xtlm_axis_mm_interface* mm) {
		if (m_mm)
			XSC_REPORT_FATAL(m_logger, "xtlm::704",
					"Memory Manager is already present. Can't set again");
		m_mm = mm;
	}
	/******************************************
	 * Used by memory manager only to recycle memory
	 ******************************************/
	unsigned char* get_renewable_tdata() const {
		return m_renewable_tdata;
	}

	unsigned char* get_renewable_tkeep() const {
		return m_renewable_tkeep;
	}

	unsigned char* get_renewable_tstrb() const {
		return m_renewable_tstrb;
	}

	unsigned char* get_renewable_tuser() const {
		return m_renewable_tuser;
	}

	/**************************************
	 *  Default Constructor
	 **************************************/
	axis_payload() :
			m_tdata(0), m_tstrb(0), m_tkeep(0), m_tuser(0), m_tid(0), m_tdest(
					0), m_tlast(0), m_tdata_length(0), m_tstrb_length(0), m_tkeep_length(
					0), m_tuser_length(0), m_n_beats(1), m_mm(0), m_ref_count(
					0), m_granularity(xtlm::axis::TRANSACTION), m_renewable_tdata(
					0), m_renewable_tstrb(0), m_renewable_tkeep(0), m_renewable_tuser(
					0), m_logger("axis_payload"), m_extensions(xtlm::max_num_extensions()) {
	}

	/******************************************
	 * Constructor with Memory Manager as input
	 ******************************************/
	explicit axis_payload(xtlm_axis_mm_interface* mm) :
			m_tdata(0), m_tstrb(0), m_tkeep(0), m_tuser(0), m_tid(0), m_tdest(
					0), m_tlast(0), m_tdata_length(0), m_tstrb_length(0), m_tkeep_length(
					0), m_tuser_length(0), m_n_beats(1), m_mm(mm), m_ref_count(
					0), m_granularity(xtlm::axis::TRANSACTION), m_renewable_tdata(
					0), m_renewable_tstrb(0), m_renewable_tkeep(0), m_renewable_tuser(
					0), m_logger("axis_payload"), m_extensions(xtlm::max_num_extensions()) {
	}

	/******************************************
	 * Deep copy of the xtlm stream payload 
	 ******************************************/
	void deep_copy_from(const axis_payload & other) {
		m_tid = other.m_tid;
		m_tdest = other.m_tdest;
		m_tlast = other.m_tlast;
		m_tdata_length = other.m_tdata_length;
		m_tstrb_length = other.m_tstrb_length;
		m_tkeep_length = other.m_tkeep_length;
		m_tuser_length = other.m_tuser_length;

		//there must be enough space in the target transaction!
		memcpy(m_tdata, other.m_tdata, m_tdata_length);
		memcpy(m_tstrb, other.m_tstrb, m_tstrb_length);
		memcpy(m_tkeep, other.m_tkeep, m_tkeep_length);
		memcpy(m_tuser, other.m_tuser, m_tuser_length);
	}

	/*****************************************
	 * To reset all member variables
	 *****************************************/
	void reset() {
		m_tdata = NULL;
		m_tstrb = NULL;
		m_tkeep = NULL;
		m_tuser = NULL;
		m_tid = 0;
		m_tdest = 0;
		m_tlast = 0;
		m_tdata_length = 0;
		m_tstrb_length = 0;
		m_tkeep_length = 0;
		m_tuser_length = 0;
		m_ref_count = 0;
		m_renewable_tdata = NULL;
		m_renewable_tkeep = NULL;
		m_renewable_tstrb = NULL;
		m_renewable_tuser = NULL;
		m_extensions.free_entire_cache();
	}
	//To print Payload. Return as a string based on levels selected
	//Level 0: Nothing
	//Level 1: Basic information (Tdata, Tdatalength, Tlast)
	//Level 2: Basic information w/ Keep (Tdata, Tdatalength, Tlast, Tid, Tkeep and Tkeeplength)
	//Level 3: Basic information w/ Keep + AXI specific information
	//Level 4: Debug Level to print internal information (ref count or renewable ptr)
	void get_log(std::string& msg, const unsigned int& level) const {
		if (level == 0)
			return;

		std::string tab("  ");
		std::stringstream m_msg;
		m_msg << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n";
		m_msg << "AXIS Payload [ptr=" << this << "]\n";

		m_msg << tab << "TDATA Length:: " << std::hex << "0x" << m_tdata_length
				<< std::dec << "\n";
		m_msg << tab << "TLAST:: " << std::hex << "0x" << m_tlast << std::dec
				<< "\n";
		if (m_tdata_length != 0) {
			if (m_tdata != NULL) {
				m_msg << tab << "TDATA (Hex):: ";
				for (unsigned int i = 0; i < m_tdata_length; i++)
					m_msg << std::hex << static_cast<unsigned int>(m_tdata[i])
							<< std::dec << " ";
			};
			m_msg << "\n";
		};
		//Data Length

		if (level == 1) {
			m_msg
					<< "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
			msg = m_msg.str();
			return;
		}

		//Data

		m_msg << tab << "TKEEP Length:: " << std::hex << "0x" << m_tkeep_length
				<< std::dec << "\n";
		m_msg << tab << "TID:: " << std::hex << "0x" << m_tid << std::dec
				<< "\n";
		if (m_tkeep_length != 0) {
			if (m_tkeep != NULL) {
				m_msg << tab << "TKEEP (Hex):: ";
				for (unsigned int i = 0; i < m_tkeep_length; i++)
					m_msg << std::hex << static_cast<unsigned int>(m_tkeep[i])
							<< std::dec << " ";
			};
			m_msg << "\n";
		};

		if (level == 2) {
			m_msg
					<< "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
			msg = m_msg.str();
			return;
		}

		//AXIS Specific information

		m_msg << tab << "TUSER Length:: " << std::hex << "0x" << m_tuser_length
				<< std::dec << "\n";
		if (m_tuser_length != 0) {
			if (m_tuser != NULL) {
				m_msg << tab << "TUSER (Hex):: ";
				for (unsigned int i = 0; i < m_tuser_length; i++)
					m_msg << std::hex << static_cast<unsigned int>(m_tuser[i])
							<< std::dec << " ";
			};

			m_msg << "\n";
		};
		m_msg << tab << "TSTRB Length:: " << std::hex << "0x" << m_tstrb_length
				<< std::dec << "\n";
		if (m_tstrb != 0) {
			if (m_tstrb != NULL) {
				m_msg << tab << "TSTRB (Hex):: ";
				for (unsigned int i = 0; i < m_tstrb_length; i++)
					m_msg << std::hex << static_cast<unsigned int>(m_tstrb[i])
							<< std::dec << " ";
			};
			m_msg << "\n";
		};

		if (level == 3) {
			m_msg
					<< "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
			msg = m_msg.str();
			return;
		}

		m_msg << tab << "Memory Manager:: " << m_mm << "\n";
		m_msg << tab << "Reference Count:: " << m_ref_count << "\n";
		m_msg << tab << "Beats:: " << m_n_beats << "\n";
		m_msg << tab << "Data Pointer and Renewable Data Pointer:: "
				<< (void *) m_tdata << " " << (void *) m_renewable_tdata
				<< "\n";
		m_msg << "\n";

		if (level == 4) {
			m_msg
					<< "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
			msg = m_msg.str();
			return;
		}

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
					"Memory Manager is referencing to NULL pointer");
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

private:
	unsigned char* m_tdata;
	unsigned char* m_tstrb;
	unsigned char* m_tkeep;
	unsigned char* m_tuser;
	unsigned int m_tid;
	unsigned int m_tdest;
	bool m_tlast;
	unsigned int m_tdata_length;
	unsigned int m_tstrb_length;
	unsigned int m_tkeep_length;
	unsigned int m_tuser_length;
	unsigned int m_n_beats;
	xtlm_axis_mm_interface* m_mm;
	unsigned int m_ref_count;
	xtlm::axis::granularity m_granularity;
	//This is to keep track if memory is
	//own by memory manager.
	unsigned char* m_renewable_tdata;
	unsigned char* m_renewable_tstrb;
	unsigned char* m_renewable_tkeep;
	unsigned char* m_renewable_tuser;

	xsc::common_cpp::report_handler m_logger;
	xtlm_array<xtlm_extension_base*> m_extensions;
};

}

#endif /* _XTLM_AXIS_PAYLOAD_H_ */

