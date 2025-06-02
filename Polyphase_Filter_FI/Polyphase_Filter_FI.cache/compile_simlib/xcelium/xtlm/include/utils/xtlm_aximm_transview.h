
// (c) Copyright 2018 - 2019 Xilinx, Inc. All rights reserved.
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

/* 
 * API for logging transactions for the xsim transaction viewer
 */

#ifndef XTLM_AXIMM_TRANSVIEW_H
#define XTLM_AXIMM_TRANSVIEW_H

// Enable this macro to dump messages to stdout for every logging API call of an ACTIVE virtual object
//#define XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES

// Enable this macro to suppress the regular functionality of the logging API functions
//#define XILINX_TLM_TRANS_VIEW_STUBS_ONLY

// Enable this macro to generate extra event data in lieu of the transaction viewer extension being able to do its
// own processing (visualizer pre-processor)
#define XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP

#include <systemc>

#include "xtlm_generic_payload/aximm_payload.h"

#ifdef XILINX_SIMULATOR
#include <map>
#include <sysc/xilinx/virtual_object.h>
#include <sstream>
#include <vector>

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
#include <iostream>
#endif // XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
#endif // XILINX_SIMULATOR

namespace {

#ifdef XILINX_SIMULATOR
#if 1
sc_dt::int64 iki_get_user_int(const char *name) { return 5; }
//const char *iki_get_user_string(const char *name) { return "string"; }
#else
extern "C" sc_dt::int64 iki_get_user_int(const char *name);
extern "C" const char *iki_get_user_string(const char *name);
#endif
#endif

} // anonymous namespace


namespace xilinx_sc {  // Note that the <systemc> header from xsim does a "using namespace" on xilinx_sc
namespace xil_trace {

// Special time value which means "no time specified"
const sc_core::sc_time UNSPECIFIED_TIME = sc_core::sc_time::from_value(sc_core::sc_time::value_type(-1));

using namespace xtlm;

#ifdef XILINX_SIMULATOR

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
const std::string TLM_AXI_MM_TRANS_VIEW_ERROR_PREFIX_STR("xsim SystemC xtlm_aximm_transview.h ");
#endif

// Maximum number of bytes displayed for AXI transactions
const uint32 AXI_MM_MAX_DATA_LENGTH = 4096;


// xsim kernel variable name for the maximum number of simultaneous TLM transactions that can be shown individually
#define XILINX_MAX_PARALLEL_TLM_TRANSACTIONS_VAR "AxiMaxTransactions"

/**
 * Wrapper for user payload from which the logging system can read event data.
 * The user must implement some member functions specifically for the logger to use.
 */
class aximm_value_traits {
public:
  typedef unsigned sequence_id;
  
  enum channel { address_e, data_e, response_e };
  
  // Type name indicates protocol and is of the form:
  // extensionName__extensionVersion__protocolName
  static std::string get_type_name() {
    return "Xilinx_Tlm__191__tlmAxiMm";
  }
  
  static const std::string &get_wave_name(unsigned index, bool is_write) {
    static std::vector<std::string> s_read_names;
    static std::vector<std::string> s_write_names;
    
    if (index >= s_read_names.size())
      for (unsigned i = s_read_names.size(); i <= index; ++i) {
        std::ostringstream oss_read;
        oss_read << "readWave_" << i;
        s_read_names.push_back(oss_read.str());
        std::ostringstream oss_write;
        oss_write << "writeWave_" << i;
        s_write_names.push_back(oss_write.str());
      }
    
    return is_write ? s_write_names[index] : s_read_names[index];
  }

  static std::string get_channel_name(unsigned index, bool is_write, channel chan) {
    std::string chan_name = get_wave_name(index, is_write);
    switch (chan) {
    case address_e:
      chan_name += "_addr";
      break;
    case data_e:
      chan_name += "_data";
      break;
    case response_e:
      chan_name += "_resp";
      break;
    default:
      break;
    }
    return chan_name;
  }
  
  // Register all types used by the AXI-MM virtual object and return the top-level type
  static const type_info *register_types() {
    // Channel structs
    
    type_info_manager *type_mgr_p = type_info_manager::get_instance();
    struct_type_info *add_type_p = new struct_type_info("XilinxAxiMmAddress");
    add_type_p->add_member("isActive", "$uint8");
    add_type_p->add_member("id", "$uint32");
    add_type_p->add_member("address", "$uint64");
    add_type_p->add_member("length", "$uint32");
    add_type_p->add_member("size", "$uint8");
    add_type_p->add_member("cache", "$uint8");
    add_type_p->add_member("prot", "$uint8");
    add_type_p->add_member("lock", "$uint8");
      //...
    type_mgr_p->add_type(add_type_p);
    
    struct_type_info *data_type_p = new struct_type_info("XilinxAxiMmData");
    data_type_p->add_member("isActive", "$uint8");
    data_type_p->add_member("dataLen", "$uint32");
    data_type_p->add_member("data", "$byteVector", AXI_MM_MAX_DATA_LENGTH);
    type_mgr_p->add_type(data_type_p);
    
    struct_type_info *response_type_p = new struct_type_info("XilinxAxiMmResponse");
    response_type_p->add_member("isActive", "$uint8");
    type_mgr_p->add_type(response_type_p);
    
    // Transaction struct
    
    struct_type_info *transaction_type_p = new struct_type_info("XilinxAxiMmTransaction");
    transaction_type_p->add_member("sequenceId", "$uint32");  // 0 = no xaction (this field can be used as xact summary)
    transaction_type_p->add_member("address", "XilinxAxiMmAddress");
    transaction_type_p->add_member("data", "XilinxAxiMmData");
    transaction_type_p->add_member("response", "XilinxAxiMmResponse");
    type_mgr_p->add_type(transaction_type_p);
    
    // Vectors for holding multiple simultaneous transactions
    
    uint32 max_transactions = uint32(iki_get_user_int(XILINX_MAX_PARALLEL_TLM_TRANSACTIONS_VAR));  // TODO: hide iki function in API?
    array_type_info *trans_vec_type_p = new array_type_info("XilinxAxiMmTransArray", "XilinxAxiMmTransaction",
        max_transactions);
    type_mgr_p->add_type(trans_vec_type_p);
    
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
    // GUI summaries (remove when viz preps are available)
    
    struct_type_info *gui_summary_type_p = new struct_type_info("XilinxAxiMmGuiSummary");
    gui_summary_type_p->add_member("topSummary", "$uint16");
    gui_summary_type_p->add_member("readSummary", "$uint32");
    gui_summary_type_p->add_member("writeSummary", "$uint32");
    gui_summary_type_p->add_member("readRunningMax", "$uint16");
    gui_summary_type_p->add_member("writeRunningMax", "$uint16");
    for (unsigned i = 0; i < max_transactions; ++i) {
      gui_summary_type_p->add_member(get_wave_name(i, false), "$uint32");
      gui_summary_type_p->add_member(get_channel_name(i, false, address_e), "$uint8");
      gui_summary_type_p->add_member(get_channel_name(i, false, data_e), "$uint8");
      gui_summary_type_p->add_member(get_wave_name(i, true), "$uint32");
      gui_summary_type_p->add_member(get_channel_name(i, true, address_e), "$uint8");
      gui_summary_type_p->add_member(get_channel_name(i, true, data_e), "$uint8");
      gui_summary_type_p->add_member(get_channel_name(i, true, response_e), "$uint8");
    }
    type_mgr_p->add_type(gui_summary_type_p);
#endif
    
    // Top-level struct to hold all parallel reads and writes
    
    struct_type_info *interface_type_p = new struct_type_info("XilinxAxiMmValue");
    interface_type_p->add_member("reads", "XilinxAxiMmTransArray");
    interface_type_p->add_member("numExtraReads", "$uint32");
    interface_type_p->add_member("writes", "XilinxAxiMmTransArray");
    interface_type_p->add_member("numExtraWrites", "$uint32");
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
    interface_type_p->add_member("guiSummary", "XilinxAxiMmGuiSummary");
#endif
    type_mgr_p->add_type(interface_type_p);
    
    // Typedef wrapper to expose top-level type as VLNV interface name
    // (not strictly necessary - XilinxAxiMmValue could have been given the VLNV name instead)
    
    typedef_type_info *pType = new typedef_type_info(get_type_name(), "XilinxAxiMmValue");
    type_mgr_p->add_type(pType);
    return pType;
  }
};


//=====================================================================================================================

class aximm_virtual_object : public virtual_object<aximm_value_traits> {
  typedef aximm_value_traits::sequence_id sequence_id;
  typedef virtual_object<aximm_value_traits> vo_base;

  // Tracking data associated with an open transaction
  struct sequence_data {
    sequence_id m_seq_id;
    int m_row;  // -1 = didn't fit into array
    sc_core::sc_time m_addr_start_time; // UNSPECIFIED_TIME means not started
    sc_core::sc_time m_data_start_time;
    sc_core::sc_time m_resp_start_time;
    bool m_addr_is_done;
    bool m_data_is_done;
    
    sequence_data()
    : m_seq_id(0), m_row(-1), m_addr_start_time(UNSPECIFIED_TIME), m_data_start_time(UNSPECIFIED_TIME),
      m_resp_start_time(UNSPECIFIED_TIME), m_addr_is_done(false), m_data_is_done(false)
    {}
  };
  
  // Manages active transactions by AXI payload pointer
  class sequence_map {
    typedef std::map<const aximm_payload *, sequence_data> map;
    
    sequence_id m_next_seq_id;
    map m_map;
  public:
    sequence_map() : m_next_seq_id(1) {}
    
    // Use returned pointer right away!  Not thread safe
    sequence_data *get_sequence(const aximm_payload *payload_p) {
      map::iterator it = m_map.find(payload_p);
      return (it == m_map.end()) ? 0 : &it->second;
    }

    // Use returned pointer right away!  Not thread safe
    sequence_data *create_sequence(const aximm_payload *payload_p) {
      // 
      sequence_data *old_seq_data_p = get_sequence(payload_p);
      if (old_seq_data_p) {
#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
        std::cerr << TLM_AXI_MM_TRANS_VIEW_ERROR_PREFIX_STR
            << "sequence_map::create_sequence: aximm_payload pointer 0x"
            << std::hex << payload_p << std::dec << " already in use." << std::endl;
#endif
        return old_seq_data_p;
      }
      
      sequence_data *seq_data_p = &m_map[payload_p];
      seq_data_p->m_seq_id = m_next_seq_id++;
      return seq_data_p;
    }

    void release_sequence(const aximm_payload *payload_p) {
      if (!get_sequence(payload_p)) {
#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
        std::cerr << TLM_AXI_MM_TRANS_VIEW_ERROR_PREFIX_STR
            << "sequence_map::release_sequence: aximm_payload pointer 0x"
            << std::hex << payload_p << std::dec << "not in use." << std::endl;
#endif
      }
      m_map.erase(payload_p);
    }
    
    void clear() {
      m_next_seq_id = 1;
      m_map.clear();
    }
  };
    
  // Manages allocation of rows for overlapping transactions
  class row_tracker {
    std::vector<sc_core::sc_time> m_free_row_times;  // time at which each row is available to use.  -1 means row in use
    unsigned m_num_rows;  // total number of rows available for displaying transactions
    uint32 m_num_extra_trans;  // number of overflow transactions currently open
    
  public:    
    row_tracker() : m_free_row_times(0), m_num_rows(5), m_num_extra_trans(0)
    {
      clear();
    }
    
    int get_new_row_index(const sc_core::sc_time &time) {
      for (unsigned i = 0, end = m_num_rows; i < end; ++i)
        if (m_free_row_times[i] != UNSPECIFIED_TIME && time >= m_free_row_times[i]) {
          m_free_row_times[i] = UNSPECIFIED_TIME;
          return i;
        }
      
      ++m_num_extra_trans;
      return -1;
    }

    void release_row_index(int row_ix, const sc_core::sc_time &time) {
      if (row_ix < 0)
        --m_num_extra_trans;
      else
        m_free_row_times[row_ix] = time;
    }
    
    uint32 get_num_extra_trans() const { return m_num_extra_trans; }
    
    void clear() {
      m_free_row_times.clear();
      m_num_rows = iki_get_user_int(XILINX_MAX_PARALLEL_TLM_TRANSACTIONS_VAR);
      if (m_num_rows > 0)
        m_free_row_times.resize(m_num_rows);
      m_num_extra_trans = 0;
    }
  };
  
  enum read_write_index { read_index_e, write_index_e };

  row_tracker m_row_trackers[2];  // [0] = read, [1] = write
  sequence_map m_sequence_map;
  
  static void set_buffer_address(const aximm_payload *payload_p, vo_value_buffer *buf_p) {
    buf_p->add<uint8>(1);  // isActive set to true
    buf_p->add<uint32>(payload_p->get_axi_id());
    buf_p->add<uint64>(payload_p->get_address());
    buf_p->add<uint32>(payload_p->get_burst_length());
    buf_p->add<uint8>(payload_p->get_burst_size());
    buf_p->add<uint8>(payload_p->get_cache());
    buf_p->add<uint8>(payload_p->get_prot());
    buf_p->add<uint8>(payload_p->get_lock());
  }
  
#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
  static void emit_debug_message(const std::string &fn_name, const aximm_payload *payload_p, sc_core::sc_time time) {
    std::cout << "xtlm aximm_virtual_object::" << fn_name << "(payload_p=0x" << std::hex << payload_p << std::dec
        << ", time=" << (time == UNSPECIFIED_TIME ? "<unspecified>" : time.to_string()) << ")" << std::endl;
  }
#endif
  
  static bool check_address_start(sequence_data *seq_data_p, const aximm_payload *payload_p,
      const std::string &fn_name, const std::string &read_write_str) {
    if (!seq_data_p) {
#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
      std::cerr << TLM_AXI_MM_TRANS_VIEW_ERROR_PREFIX_STR << fn_name << ": no " << read_write_str
          << " address start for aximm_payload pointer 0x" << std::hex << payload_p << std::dec << "." << std::endl;
#endif
      return false;
    }
    return true;
  }
  
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
  unsigned m_read_outstanding_count;
  unsigned m_write_outstanding_count;
  unsigned char m_read_summary;
  unsigned char m_write_summary;
  unsigned m_max_read_rows;
  unsigned m_max_write_rows;
  
  void increment_read_outstanding_count(int incr, sc_core::sc_time time) {
    if (!m_read_outstanding_count && incr > 0)
      m_read_summary = 1;
    else if (m_read_outstanding_count == 1 && incr < 0)
      m_read_summary = 0;
    
    m_read_outstanding_count += incr;

    vo_value_buffer *pBuf = get_value_buffer();
    pBuf->set_pos(get_value_index()["guiSummary"]);
    pBuf->add<uint8>(m_read_summary);
    schedule_event(time);
    pBuf->set_pos(get_value_index()["guiSummary"]["readSummary"]);
    pBuf->add<uint32>(m_read_outstanding_count);
    schedule_event(time);
  }

  void increment_write_outstanding_count(int incr, sc_core::sc_time time) {
    if (!m_write_outstanding_count && incr > 0)
      m_write_summary = 1;
    else if (m_write_outstanding_count == 1 && incr < 0)
      m_write_summary = 0;
    
    m_write_outstanding_count += incr;
    vo_value_buffer *buf_p = get_value_buffer();
    buf_p->set_pos(get_value_index()["guiSummary"]);
    buf_p->offset_pos(1);
    buf_p->add<uint8>(m_write_summary);
    schedule_event(time);
    buf_p->set_pos(get_value_index()["guiSummary"]["writeSummary"]);
    buf_p->add<uint32>(m_write_outstanding_count);
    schedule_event(time);
  }
#endif

//  virtual void init_value() {
//    vo_base::init_value();
//    // Non-zero fields initialized here
//  }

public:
  
  aximm_virtual_object(const char *name)
  : virtual_object<aximm_value_traits>(name)
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
  , m_read_outstanding_count(0), m_write_outstanding_count(0), m_read_summary(0), m_write_summary(0),
    m_max_read_rows(0), m_max_write_rows(0)
#endif  
  {}
  
//  void activate(bool is_active = true) { this->xsim_set_trace_flags(is_active ? 2 : 0); }
  
  virtual void end_of_elaboration() {
    vo_base::end_of_elaboration();
    m_row_trackers[0].clear();
    m_row_trackers[1].clear();
    m_sequence_map.clear();
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
    m_read_outstanding_count = 0;
    m_write_outstanding_count = 0;
    m_read_summary = 0;
    m_write_summary = 0;
    m_max_read_rows = 0;
    m_max_write_rows = 0;
#endif    
  }
  
  // READ
  
  // Address phase, allocates sequence ID
  void log_read_address_start(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();
    
#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_read_address_start", payload_p, time);
#endif
#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif

    // Get a row index for a new read transaction and create a SequenceData to keep track of the transaction
    
    int row_ix = m_row_trackers[read_index_e].get_new_row_index(time);
    sequence_data *seq_data_p = m_sequence_map.create_sequence(payload_p);
    seq_data_p->m_row = row_ix;
    seq_data_p->m_addr_start_time = time;
    vo_value_buffer *buf_p = get_value_buffer();
    
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
    // Since we're starting a transaction, update the GUI summary data
    
    increment_read_outstanding_count(1, relative_time);
    if (row_ix >= int(m_max_read_rows)) {
      m_max_read_rows = row_ix + 1;
      buf_p->set_pos(get_value_index()["guiSummary"]["readRunningMax"]);
      buf_p->add<uint16>(m_max_read_rows);
      schedule_event(relative_time);
    }
#endif
    
    // If all rows are full for the given time, just record that there was an extra transaction
    
    if (row_ix < 0) {
      buf_p->set_pos(get_value_index()["numExtraReads"]);
      buf_p->add<uint32>(m_row_trackers[read_index_e].get_num_extra_trans());
      schedule_event(relative_time);
    }
    
    // Empty row found: fill the row's sequence ID and address fields with transaction details
    
    else {
      buf_p->set_pos(get_value_index()["reads"][row_ix]);
      buf_p->add<uint32>(seq_data_p->m_seq_id);
      set_buffer_address(payload_p, buf_p);
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // Start the transaction summary bar and the address channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_wave_name(row_ix, false)]);
      buf_p->add<uint32>(seq_data_p->m_seq_id);
      schedule_event(relative_time);
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, false,
          aximm_value_traits::address_e)]);
      buf_p->add<uint8>(1);
      schedule_event(relative_time);
#endif
    }
  }
  
  void log_read_address_end(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_read_address_end", payload_p, time);
#endif

#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif
    
    // Get the data associated with the transaction and make sure there was a logReadAddressStart call for this payload
    
    sequence_data *seq_data_p = m_sequence_map.get_sequence(payload_p);
    if (!check_address_start(seq_data_p, payload_p, "log_read_address_end", "read"))
      return;
    if (seq_data_p->m_addr_is_done)
      return;
        
    const int row_ix = seq_data_p->m_row;
    
    // Get the time for the end event and make sure it's at least one time unit beyond the start time
    
    if (row_ix >= 0 && time <= seq_data_p->m_addr_start_time) {
      time = seq_data_p->m_addr_start_time + sc_core::sc_time::from_value(1);
      relative_time = time - sc_core::sc_time_stamp();
    }

    // If the transaction has a row (that is, is not an overflow transaction), end the address phase
    
    if (row_ix >= 0) {
      vo_value_buffer *buf_p = get_value_buffer();
      buf_p->set_pos(get_value_index()["reads"][row_ix]["address"]);
      buf_p->add<uint8>(0);
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // End the address channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, false,
          aximm_value_traits::address_e)]);
      buf_p->add<uint8>(0);
      schedule_event(relative_time);
#endif
    }
    
    seq_data_p->m_addr_is_done = true;
  }
  
  // Starts the data phase.  This function may be called multiple times, for which all but the first call are ignored.
  // Only logReadDataEnd, not this function, reads and records the data in the payload.
  void log_read_data_start(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_read_data_start", payload_p, time);
#endif
#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif
    
    // Get the data associated with the transaction and make sure there was an address start call for this payload
    
    sequence_data *seq_data_p = m_sequence_map.get_sequence(payload_p);
    if (!check_address_start(seq_data_p, payload_p, "log_read_data_start", "read"))
      return;
    if (!seq_data_p->m_addr_is_done)
        log_read_address_end(payload_p, relative_time);
    if (seq_data_p->m_data_start_time != UNSPECIFIED_TIME)
      return;  // data start already called for this payload
    const int row_ix = seq_data_p->m_row;
    seq_data_p->m_data_start_time = time;
    
    // Empty row found: set the data active flag
    
    if (row_ix >= 0) {
      vo_value_buffer *buf_p = get_value_buffer();
      buf_p->set_pos(get_value_index()["reads"][row_ix]["data"]);
      buf_p->add<uint8>(1);  // isActive set to true
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // Start the data channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, false,
          aximm_value_traits::data_e)]);
      buf_p->add<uint8>(1);
      schedule_event(relative_time);
#endif
    }
  }
  
  // Ends the data phase and the whole AXI transaction.  This function reads and records the data in the payload
  // and releases the payload object for future reuse.
  void log_read_data_end(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;
    
    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_read_data_end", payload_p, time);
#endif
#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif
    
    // Get the data associated with the transaction and make sure there was an address start call for this payload
    
    sequence_data *seq_data_p = m_sequence_map.get_sequence(payload_p);
    if (!check_address_start(seq_data_p, payload_p, "log_read_data_end", "read"))
      return;
    
    // Fill in any missing phases
    
    if (!seq_data_p->m_addr_is_done)
        log_read_address_end(payload_p, relative_time);
    if (seq_data_p->m_data_start_time == UNSPECIFIED_TIME)
      log_read_data_start(payload_p, relative_time);
    
    const int row_ix = seq_data_p->m_row;
    
    // Get the time for the end event and make sure it's at least one time unit beyond the start time
    
    if (row_ix >= 0 && time <= seq_data_p->m_data_start_time) {
      time = seq_data_p->m_data_start_time + sc_core::sc_time::from_value(1);
      relative_time = time - sc_core::sc_time_stamp();
    }
    vo_value_buffer *buf_p = get_value_buffer();

    // If the transaction has a row (that is, is not an overflow transaction), end the data phase
    
    if (row_ix >= 0) {
      buf_p->set_pos(get_value_index()["reads"][row_ix]["data"]);
      buf_p->add<uint8>(0);  // set isActive to false
      buf_p->add<uint32>(payload_p->get_data_length());
      buf_p->add_array<unsigned char>(payload_p->get_data_ptr(),
          std::min(AXI_MM_MAX_DATA_LENGTH, payload_p->get_data_length()));
      schedule_event(relative_time);
      // Turn off the sequence ID
      buf_p->set_pos(get_value_index()["reads"][row_ix]["sequenceId"]);
      buf_p->add<uint32>(0);
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // End the transaction summary bar and the data channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_wave_name(row_ix, false)]);
      buf_p->add<uint32>(0);
      schedule_event(relative_time);
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, false,
          aximm_value_traits::data_e)]);
      buf_p->add<uint8>(0);
      schedule_event(relative_time);
#endif
    }
    
    // Release the transaction row and payload pointer
    
    m_row_trackers[read_index_e].release_row_index(row_ix, time);
    m_sequence_map.release_sequence(payload_p);

    // If there was no row: decrement the "extras" count
    
    if (row_ix < 0) {
      buf_p->set_pos(get_value_index()["numExtraReads"]);
      buf_p->add<uint32>(m_row_trackers[read_index_e].get_num_extra_trans());
      schedule_event(relative_time);
    }
    
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
    // Since we're ending a transaction, update the GUI summary data
    
    increment_read_outstanding_count(-1, relative_time);
#endif
  }
  
  // WRITE
  
  void log_write_address_start(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_write_address_start", payload_p, time);
#endif
#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif

    // Get a row index for a new write transaction and create a SequenceData to keep track of the transaction
    
    vo_value_buffer *buf_p = get_value_buffer();
    int row_ix = m_row_trackers[write_index_e].get_new_row_index(time);
    sequence_data *seq_data_p = m_sequence_map.create_sequence(payload_p);
    seq_data_p->m_row = row_ix;
    seq_data_p->m_addr_start_time = time;
    
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
    // Since we're starting a transaction, update the GUI summary data
    
    increment_write_outstanding_count(1, relative_time);
    if (row_ix >= int(m_max_write_rows)) {
      m_max_write_rows = row_ix + 1;
      buf_p->set_pos(get_value_index()["guiSummary"]["writeRunningMax"]);
      buf_p->add<uint16>(m_max_write_rows);
      schedule_event(relative_time);
    }
#endif
    
    // If all rows are full for the given time, just record that there was an extra transaction
    
    if (row_ix < 0) {
      buf_p->set_pos(get_value_index()["numExtraWrites"]);
      buf_p->add<uint32>(m_row_trackers[write_index_e].get_num_extra_trans());
      schedule_event(relative_time);
    }
    
    // Empty row found: fill the row's sequence ID and address fields with transaction details
    
    else {
      buf_p->set_pos(get_value_index()["writes"][row_ix]);
      buf_p->add<uint32>(seq_data_p->m_seq_id);
      set_buffer_address(payload_p, buf_p);
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // Start the transaction summary bar and the address channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_wave_name(row_ix, true)]);
      buf_p->add<uint32>(seq_data_p->m_seq_id);
      schedule_event(relative_time);
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, true,
          aximm_value_traits::address_e)]);
      buf_p->add<uint8>(1);
      schedule_event(relative_time);
#endif
    }
  }
  
  void log_write_address_end(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_write_address_end", payload_p, time);
#endif

#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif
    
    // Get the data associated with the transaction and make sure there was an address start call for this payload
    
    sequence_data *seq_data_p = m_sequence_map.get_sequence(payload_p);
    if (!check_address_start(seq_data_p, payload_p, "log_write_address_end", "write"))
      return;
    if (seq_data_p->m_addr_is_done)
      return;
    
    const int row_ix = seq_data_p->m_row;
    
    // Get the time for the end event and make sure it's at least one time unit beyond the start time
    
    if (row_ix >= 0 && time <= seq_data_p->m_addr_start_time) {
      time = seq_data_p->m_addr_start_time + sc_core::sc_time::from_value(1);
      relative_time = time - sc_core::sc_time_stamp();
    }

    // If the transaction has a row (that is, is not an overflow transaction), end the address phase
    
    if (row_ix >= 0) {
      vo_value_buffer *buf_p = get_value_buffer();
      buf_p->set_pos(get_value_index()["writes"][row_ix]["address"]["isActive"]);
      buf_p->add<uint8>(0);
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // End the address channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, true,
          aximm_value_traits::address_e)]);
      buf_p->add<uint8>(0);
      schedule_event(relative_time);
#endif
    }
    
    seq_data_p->m_addr_is_done = true;
  }
  
  void log_write_data_start(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_write_data_start", payload_p, time);
#endif
#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif
    
    // Get the data associated with the transaction and make sure there was an address start call for this payload
    
    sequence_data *seq_data_p = m_sequence_map.get_sequence(payload_p);
    if (!check_address_start(seq_data_p, payload_p, "log_write_data_start", "write"))
      return;
    if (!seq_data_p->m_addr_is_done)
      log_write_address_end(payload_p, relative_time);
    if (seq_data_p->m_data_start_time != UNSPECIFIED_TIME)
      return;  // data start already called for this payload
    const int row_ix = seq_data_p->m_row;
    seq_data_p->m_data_start_time = time;
    
    // Empty row found: set the data active flag
    
    if (row_ix >= 0) {
      vo_value_buffer *buf_p = get_value_buffer();
      buf_p->set_pos(get_value_index()["writes"][row_ix]["data"]);
      buf_p->add<uint8>(1);  // isActive set to true
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // Start the data channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, true,
          aximm_value_traits::data_e)]);
      buf_p->add<uint8>(1);
      schedule_event(relative_time);
#endif
    }
  }
  
  void log_write_data_end(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_write_data_end", payload_p, time);
#endif

#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif
    
    // Get the data associated with the transaction and make sure there was an address start call for this payload
    
    sequence_data *seq_data_p = m_sequence_map.get_sequence(payload_p);
    if (!check_address_start(seq_data_p, payload_p, "log_write_data_end", "write"))
      return;
    
    // Fill in any missing phases
    
    if (!seq_data_p->m_addr_is_done)
        log_write_address_end(payload_p, relative_time);
    if (seq_data_p->m_data_start_time == UNSPECIFIED_TIME)
      log_write_data_start(payload_p, relative_time);
    if (seq_data_p->m_data_is_done)
      return;
    
    const int row_ix = seq_data_p->m_row;
    
    // Get the time for the end event and make sure it's at least one time unit beyond the start time
    
    if (row_ix >= 0 && time <= seq_data_p->m_data_start_time) {
      time = seq_data_p->m_data_start_time + sc_core::sc_time::from_value(1);
      relative_time = time - sc_core::sc_time_stamp();
    }

    // If the transaction has a row (that is, is not an overflow transaction), end the data phase
    
    if (row_ix >= 0) {
      vo_value_buffer *buf_p = get_value_buffer();
      buf_p->set_pos(get_value_index()["writes"][row_ix]["data"]);
      buf_p->add<uint8>(0);  // set isActive to false
      buf_p->add<uint32>(payload_p->get_data_length());
      buf_p->add_array<unsigned char>(payload_p->get_data_ptr(),
          std::min(AXI_MM_MAX_DATA_LENGTH, payload_p->get_data_length()));
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // End the data channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, true,
          aximm_value_traits::data_e)]);
      buf_p->add<uint8>(0);
      schedule_event(relative_time);
#endif
    }
    
    seq_data_p->m_data_is_done = true;
  }
  
  void log_write_response_start(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_write_response_start", payload_p, time);
#endif
#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif
    
    // Get the data associated with the transaction and make sure there was an address start call for this payload
    
    sequence_data *seq_data_p = m_sequence_map.get_sequence(payload_p);
    if (!check_address_start(seq_data_p, payload_p, "log_write_response_start", "write"))
      return;

    // Fill in any missing phases
    
    if (!seq_data_p->m_addr_is_done)
        log_write_address_end(payload_p, relative_time);
    if (seq_data_p->m_data_start_time == UNSPECIFIED_TIME)
      log_write_data_start(payload_p, relative_time);
    if (!seq_data_p->m_data_is_done)
      log_write_data_end(payload_p, relative_time);
    
    if (seq_data_p->m_resp_start_time != UNSPECIFIED_TIME)
      return;  // response start already called for this payload
    const int row_ix = seq_data_p->m_row;
    seq_data_p->m_resp_start_time = time;
    
    // Empty row found: set the data active flag
    
    if (row_ix >= 0) {
      vo_value_buffer *buf_p = get_value_buffer();
      buf_p->set_pos(get_value_index()["writes"][row_ix]["response"]);
      buf_p->add<uint8>(1);  // isActive set to true
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // Start the response channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, true,
          aximm_value_traits::response_e)]);
      buf_p->add<uint8>(1);
      schedule_event(relative_time);
#endif
    }
  }
  
  void log_write_response_end(const aximm_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME) {
    // If logging is off for this virtual object, skip logging
    
    if (!xsim_is_active())
      return;
    
    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    emit_debug_message("log_write_response_end", payload_p, time);
#endif
#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif
    
    // Get the data associated with the transaction and make sure there was an address start call for this payload
    
    sequence_data *seq_data_p = m_sequence_map.get_sequence(payload_p);
    if (!check_address_start(seq_data_p, payload_p, "log_write_response_end", "write"))
      return;

    // Fill in any missing phases
    
    if (!seq_data_p->m_addr_is_done)
        log_write_address_end(payload_p, relative_time);
    if (seq_data_p->m_data_start_time == UNSPECIFIED_TIME)
      log_write_data_start(payload_p, relative_time);
    if (!seq_data_p->m_data_is_done)
      log_write_data_end(payload_p, relative_time);
    if (seq_data_p->m_resp_start_time == UNSPECIFIED_TIME)
      log_write_response_start(payload_p, relative_time);
    
    const int row_ix = seq_data_p->m_row;
    
    // Get the time for the end event and make sure it's at least one time unit beyond the start time
    
    if (row_ix >= 0 && time <= seq_data_p->m_resp_start_time) {
      time = seq_data_p->m_resp_start_time + sc_core::sc_time::from_value(1);
      relative_time = time - sc_core::sc_time_stamp();
    }
    vo_value_buffer *buf_p = get_value_buffer();

    // If the transaction has a row (that is, is not an overflow transaction), end the response phase
    
    if (row_ix >= 0) {
      buf_p->set_pos(get_value_index()["writes"][row_ix]["response"]);
      buf_p->add<uint8>(0);  // set isActive to false
      schedule_event(relative_time);
      // Turn off the sequence ID
      buf_p->set_pos(get_value_index()["writes"][row_ix]["sequenceId"]);
      buf_p->add<uint32>(0);
      schedule_event(relative_time);
#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
      // End the transaction summary bar and the response channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_wave_name(row_ix, true)]);
      buf_p->add<uint32>(0);
      schedule_event(relative_time);
      buf_p->set_pos(get_value_index()["guiSummary"][aximm_value_traits::get_channel_name(row_ix, true,
          aximm_value_traits::response_e)]);
      buf_p->add<uint8>(0);
      schedule_event(relative_time);
#endif
    }
    
    // Release the transaction row and payload pointer
    
    m_row_trackers[write_index_e].release_row_index(row_ix, time);
    m_sequence_map.release_sequence(payload_p);

    // If there was no row: decrement the "extras" count
    
    if (row_ix < 0) {
      buf_p->set_pos(get_value_index()["numExtraWrites"]);
      buf_p->add<uint32>(m_row_trackers[write_index_e].get_num_extra_trans());
      schedule_event(relative_time);
    }

#ifdef XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
    // Since we're ending a transaction, update the GUI summary data
    
    increment_write_outstanding_count(-1, relative_time);
#endif
  }
  
};

//######################################################################################################
    
#else /* not XILINX_SIMULATOR */

// for other simulators

// Dummy implementation
//
class aximm_virtual_object {
public:
  aximm_virtual_object(const char *, sc_core::sc_object * = 0) {}
  void activate(bool is_active = true) {}
  
  // READ
  
  void log_read_address_start(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}
  void log_read_address_end(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}
  void log_read_data_start(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}
  void log_read_data_end(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}

  // WRITE
  
  void log_write_address_start(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}
  void log_write_address_end(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}
  void log_write_data_start(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}
  void log_write_data_end(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}
  void log_write_response_start(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}
  void log_write_response_end(const aximm_payload *payload_p, const sc_core::sc_time &time = sc_core::SC_ZERO_TIME) {}
};

#endif /* XILINX_SIMULATOR */

} // namespace xil_trace
} // namespace xilinx_sc


#endif /* XTLM_AXIMM_TRANSVIEW_H */

