
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

#ifndef _XSC_SIM_MANAGER_H_
#define _XSC_SIM_MANAGER_H_
#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <systemc>

#if defined(_MSC_VER) || defined(__MINGW32__) || defined(__MINGW64__)
#define XSC_SIM_DLL_EXPORT __declspec( dllexport )
#define XSC_SIM_DLL_IMPORT __declspec( dllimport )
#else
#define XSC_SIM_DLL_EXPORT
#define XSC_SIM_DLL_IMPORT
#endif

#ifdef XSC_SIM_MANAGER_CPP
#define XSC_SIM_MANAGER_EXPORT XSC_SIM_DLL_EXPORT
#else
#define XSC_SIM_MANAGER_EXPORT XSC_SIM_DLL_EXPORT
#endif

namespace xsc {
namespace utils {
typedef enum xparam {
	xparam_INT = 0, xparam_STRING = 1
} xparamType_t;

class XSC_SIM_MANAGER_EXPORT xsc_sim_param_conn {
public :
	std::string m_inst1_name;
	std::string m_inst2_name;
	std::string m_inst1_param;
	std::string m_inst2_param;
	xsc_sim_param_conn(std::string _inst1,std::string _param1,std::string _inst2,std::string _param2) {
		m_inst1_name=_inst1;
		m_inst2_name=_inst2;
		m_inst1_param=_param1;
		m_inst2_param=_param2;
	}
};

class XSC_SIM_MANAGER_EXPORT xsc_sim_param_value {
public:
	xparamType_t         m_type;
	unsigned int         m_int_value;
	std::string          m_string_value;
	bool                 m_top_param;
	xsc_sim_param_value* m_child_param;
	std::string          m_parent_name;
	bool m_set_value;
	xsc_sim_param_value(unsigned int _psValue) {
		m_type = xparam_INT;
		m_int_value = _psValue;
		m_child_param=nullptr;
		m_top_param=true;
		m_set_value=false;
	}
	xsc_sim_param_value(std::string _psValue) {
		m_type = xparam_INT;
		m_int_value = 0;
		m_string_value = _psValue;
		m_child_param=nullptr;
		m_top_param=true;
		m_set_value=false;
	}
	xsc_sim_param_value & operator=(const xsc_sim_param_value& obj) {
		m_type = obj.m_type;
		m_int_value = obj.m_int_value;
		m_string_value = obj.m_string_value;
		m_top_param=obj.m_top_param;
		m_set_value=obj.m_set_value;
		return *this;
	}
	xparamType_t getParamType() {
		return m_type;
	}
	bool getIntParam(int* value) {
		if (m_type == xparam_INT) {
			*value = m_int_value;
			return true;
		} else {
			return false;
		}
	}
	bool getStringParam(std::string& value) {
		if (m_type == xparam_STRING) {
			value = m_string_value.c_str();
			return true;
		} else {
			return false;
		}
	}

	xsc_sim_param_value* getChildParam() const {
		return m_child_param;
	}

	void setChildParam(xsc_sim_param_value* childParam) {
		m_child_param = childParam;
	}

	bool isTopParam() const {
		return m_top_param;
	}

	void setTopParam(bool topParam) {
		m_top_param = topParam;
	}

	bool isSetValue() const {
		return m_set_value;
	}

	void setSetValue(bool setValue) {
		m_set_value = setValue;
	}

	std::string getParentName() const {
		return m_parent_name;
	}

	void setParentName(std::string parentName) {
		m_parent_name = parentName;
	}
};

class XSC_SIM_MANAGER_EXPORT xsc_sim_manager {
public:
	static std::map<std::string, xsc_sim_param_value*>* getInstanceParameters(std::string);
	static bool addInstanceParameter(std::string, std::string, int);
	static bool addInstanceConnParameters(std::string, std::string, std::string,std::string, int _value);
	static bool addInstanceParameter(std::string, std::string, std::string);
	static bool isInstanceExists(std::string);
	static bool isInstanceParameterExists(std::string, std::string);
	static int getInstanceParameterInt(std::string, std::string);
	static std::string getInstanceParameterString(std::string, std::string);
	static bool removeInstanceParameter(std::string, std::string);
	static bool removeInstance(std::string);
	static bool clean();
	static std::map<std::string, sc_core::sc_object *>* getInstanceMap();
	static bool addInstance(std::string, sc_core::sc_object *);
	static sc_core::sc_object* getInstancePtr(std::string);
	static bool addAssociateInstanceParameter(std::string, std::string,std::string, std::string,std::string);
	static bool addAssociateInstanceParameter(std::string, std::string,int, std::string,std::string);
	static void propogateParameterValues();
	static bool isMTlmWaveDatabaseInit();
	static void setMTlmWaveDatabaseInit(bool mTlmWaveDatabaseInit);

private:
	xsc_sim_manager();
	static int _getInstanceParameterInt(std::string, std::string);
	static std::map<std::string, std::map<std::string, xsc_sim_param_value*>*>* createMap();
	static std::map<std::string, std::map<std::string, xsc_sim_param_value*>*>* m_param_map;
	static std::map<std::string, sc_core::sc_object*>* m_instance_map;
	static std::vector<xsc::utils::xsc_sim_param_conn*>* m_conn_vec;
	static bool m_param_prop_done;
	static bool m_tlm_wave_database_init;
};
}
}
#endif /* _XSC_SIM_MANAGER_H_ */


