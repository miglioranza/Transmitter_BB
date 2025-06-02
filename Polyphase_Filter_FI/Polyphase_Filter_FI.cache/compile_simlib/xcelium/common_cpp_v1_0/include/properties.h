
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
#ifndef PROPERTIES_H_
#define PROPERTIES_H_

#ifdef COMMON_CPP_DLL
#define PROPERTIES_EXPORT COMMON_CPP_EXPORT
#else
#define PROPERTIES_EXPORT COMMON_CPP_IMPORT
#endif

#include "common_cpp_cmnhdr.h"
#include <map>
#include <string>
#include <bitset>
#include <tuple>
#include <cstdint>

namespace xsc {
namespace common_cpp {
class properties_imp;
class PROPERTIES_EXPORT properties {
public:
	properties();
	properties(const properties& p_inst);
	properties& operator =(properties const & p_inst);
	~properties();

	/*! Api to add Bool type of Parameter
	 *  @param name Name of Paramter
	 *  @param value Value of Parameter
	 */
	void addBool(const std::string& name, const std::string& value);

	/*! Api to add Bool type of Parameter Map
	 *  @param bool_map Map with key as Parameter and value as Parameter Value
	 */
	void addBool(std::map<std::string, std::string>& bool_map);

	/*! Api to add Long type of Parameter
	 *  @param name Name of Paramter
	 *  @param value Value of Parameter
	 */
	void addLong(const std::string& name, const std::string& value);

	/*! Api to add Long type of Parameter Map
	 *  @param long_map Map with key as Parameter and value as Parameter Value
	 */
	void addLong(std::map<std::string, std::string>& long_map);

	/*! Api to add Float type of Parameter
	 *  @param name Name of Paramter
	 *  @param value Value of Parameter
	 */
	void addFloat(const std::string& name, const std::string& value);

	/*! Api to add FLoat type of Parameter Map
	 *  @param float_map Map with key as Parameter and value as Parameter Value
	 */
	void addFloat(std::map<std::string, std::string>& float_map);

	/*! Api to add String type of Parameter
	 *  @param name Name of Paramter
	 *  @param value Value of Parameter
	 */
	void addString(const std::string& name, const std::string& value);

	/*! Api to add String type of Parameter Map
	 *  @param string_map Map with key as Parameter and value as Parameter Value
	 */
	void addString(std::map<std::string, std::string>& string_map);

	/*! Api to add BitString type of Parameter
	 *  @param name Name of Paramter
	 *  @param value Value of Parameter
	 */
	void addBitString(const std::string& name, const std::string& value,
			const unsigned int& bitlength = 0);

	/*! Api to add BitString type of Parameter Map
	 *  @param bitstring_map Map with key as Parameter and value as tuple of Parameter Value and Bitstring size
	 */
	void addBitString(
			std::map<std::string, std::tuple<std::string, unsigned int> >& bitstring_map);

	/*! Api to get Bool type of Parameter Value
	 * Supports String and Bool type of parameters
	 *
	 *  @param name Parameter Name
	 */
	bool getBool(const std::string& name) const;

	/*! Api to get SignedInteger type of Parameter Value
	 * Supports BitString and Long type of parameters
	 *
	 *  @param name Parameter Name
	 */
	int getInt(const std::string& name) const;

	/*! Api to get Signed Long Long type of Parameter Value
	 * Supports BitString and Long type of parameters
	 *
	 *  @param name Parameter Name
	 */
	long long getLongLong(const std::string& name) const;

	/*! Api to get Float type of Parameter Value
	 * Supports Float type of parameters
	 *
	 *  @param name Parameter Name
	 */
	float getFloat(const std::string& name) const;

	/*! Api to get Unsigned Integer type of Parameter Value
	 * Supports BitString and Long type of parameters
	 *
	 *  @param name Parameter Name
	 */
	std::uint32_t getUint32(const std::string& name) const;

	/*! Api to get Unsigned Integer64 type of Parameter Value
	 * Supports BitString and Long type of parameters
	 *
	 *  @param name Parameter Name
	 */
	std::uint64_t getUint64(const std::string& name) const;

	/*! Api to get String type of Parameter Value
	 * Supports All type of parameters
	 *
	 *  @param name Parameter Name
	 */
	std::string getString(const std::string& name) const;

	/*! Api to get BitString type of Parameter Value
	 * Supports BitString type of parameters
	 *
	 *  @param name Parameter Name
	 *  @param length Size of BitString
	 */
	std::string getBitString(const std::string& name,
			unsigned int& length) const;

	/*! Api to get 8 bit Bitset type of Parameter Value
	 * Supports BitString type of parameters
	 *
	 *  @param name Parameter Name
	 */
	std::bitset<8> getBitSet8(const std::string& name) const;

	/*! Api to get 16 bit Bitset type of Parameter Value
	 * Supports BitString type of parameters
	 *
	 *  @param name Parameter Name
	 */
	std::bitset<16> getBitSet16(const std::string& name) const;

	/*! Api to get 32 bit Bitset type of Parameter Value
	 * Supports BitString type of parameters
	 *
	 *  @param name Parameter Name
	 */
	std::bitset<32> getBitSet32(const std::string& name) const;

	/*! Api to get 64 bit Bitset type of Parameter Value
	 * Supports BitString type of parameters
	 *
	 *  @param name Parameter Name
	 */
	std::bitset<64> getBitSet64(const std::string& name) const;

	/*! Api to check if Parameter exist
	 *
	 *  @param name Parameter Name
	 */
	bool hasParameter(const std::string& name) const;

private:
	xsc::common_cpp::properties_imp* mp_impl;
};
}
}

#endif /* PROPERTIES_H_ */


