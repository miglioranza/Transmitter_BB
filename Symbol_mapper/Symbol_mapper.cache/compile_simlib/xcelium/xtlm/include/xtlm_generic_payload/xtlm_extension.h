
// (c) Copyright 2013 - 2018 Xilinx, Inc. All rights reserved.
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
#ifndef _XTLM_EXTENSION_H_
#define _XTLM_EXTENSION_H_

#include "utils/xtlm_cmndefs.h"
#ifdef XTLM_DLL
#define XTLM_EXTENSION_EXPORT XTLM_EXPORT
#else
#define XTLM_EXTENSION_EXPORT XTLM_IMPORT
#endif

#include <vector>

namespace xtlm {
//---------------------------------------------------------------------------
// Classes and helper functions for the extension mechanism
//---------------------------------------------------------------------------
// Helper function:
XTLM_EXTENSION_EXPORT unsigned int max_num_extensions(bool increment = false);

// This class can be used for storing pointers to the extension classes, used
// in tlm_generic_payload:
class xtlm_extension_base {
public:
	virtual xtlm_extension_base* clone() const = 0;
	virtual void free() {
		delete this;
	}
	virtual void copy_from(xtlm_extension_base const &) = 0;
protected:
	virtual ~xtlm_extension_base() {
	}
        static unsigned int register_extension() {
          return (max_num_extensions(true) - 1);
        }
        ;
};

// Base class for all extension classes, derive your extension class in
// the following way:
// class my_extension : public xtlm_extension<my_extension>  ...
// This triggers proper extension registration during C++ static
// construction time. my_extension::ID will hold the unique index in the
// aximm_payload::m_extensions array.

template<typename T>
class xtlm_extension: public xtlm_extension_base {
public:
	virtual xtlm_extension_base* clone() const = 0;
	virtual void copy_from(xtlm_extension_base const &ext) = 0; //{assert(typeid(this)==typeid(ext)); assert(ID === ext.ID); assert(0);}
	virtual ~xtlm_extension() {
	}
	const static unsigned int ID;
};

template<typename T>
const
unsigned int xtlm_extension<T>::ID = xtlm_extension_base::register_extension();

//xTLM ARRAY CLASS
template<typename T>
class xtlm_array: private std::vector<T> {
	typedef std::vector<T> base_type;
	typedef typename base_type::size_type size_type;
public:

	// constructor:
	xtlm_array(size_type size = 0, T const & default_value = T()) :
			base_type(size, default_value), m_entries(), m_default(
					default_value) {
		//m_entries.reserve(size); // optional
	}

	// operators for dereferencing:
	using base_type::operator[];

	// array size:
	using base_type::size;

	// expand the array if needed:
	void expand(size_type new_size) {
		if (new_size > size()) {
			base_type::resize(new_size);
			//m_entries.reserve(new_size); // optional
		}
	}

	static const char* const kind_string;
	const char* kind() const {
		return kind_string;
	}

	//this function shall get a pointer to a array slot
	// it stores this slot in a cache of active slots
	void insert_in_cache(T* p) {
		//assert( (p-&(*this)[0]) < size() );
		m_entries.push_back(p - &(*this)[0]);
	}

	//this functions clears all active slots of the array
	void free_entire_cache() {
		while (m_entries.size()) {
			if ((*this)[m_entries.back()]) //we make sure no one cleared the slot manually
				(*this)[m_entries.back()]->free(); //...and then we call free on the content of the slot
			(*this)[m_entries.back()] = 0;  //afterwards we set the slot to NULL
			m_entries.pop_back();
		}
	}

protected:
	std::vector<size_type> m_entries;
	T m_default;

	// disabled:
	//xtlm_array& operator=(const xtlm_array<T>&);
};

template<typename T>
const char* const xtlm_array<T>::kind_string = "xtlm_array";
}
#endif /* _XTLM_EXTENSION_H_ */


