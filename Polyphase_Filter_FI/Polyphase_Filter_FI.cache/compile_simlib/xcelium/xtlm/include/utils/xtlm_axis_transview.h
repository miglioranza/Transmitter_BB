
// (c) Copyright 2018 - 2020 Xilinx, Inc. All rights reserved.
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

#ifndef XTLM_AXIS_TRANSVIEW_H
#define XTLM_AXIS_TRANSVIEW_H

// Enable this macro to dump messages to stdout for every logging API call of an ACTIVE virtual object
//#define XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES

// Enable this macro to suppress the regular functionality of the logging API functions
//#define XILINX_TLM_TRANS_VIEW_STUBS_ONLY

// Enable this macro to generate extra event data in lieu of the transaction viewer extension being able to do its
// own processing (visualizer pre-processor)
#define XILINX_TLM_TRANS_VIEW_MANUAL_VIZ_PREP
//#define XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES;

#include <systemc>

#include "utils/xtlm_aximm_transview.h"
#include "xtlm_generic_payload/axis_payload.h"

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

//#ifdef XILINX_SIMULATOR
//#if 1
//sc_dt::int64 iki_get_user_int(const char *name) { return 5; }
////const char *iki_get_user_string(const char *name) { return "string"; }
//#else
//extern "C" sc_dt::int64 iki_get_user_int(const char *name);
//extern "C" const char *iki_get_user_string(const char *name);
//#endif
//#endif

} // anonymous namespace


namespace xilinx_sc {  // Note that the <systemc> header from xsim does a "using namespace" on xilinx_sc
namespace xil_trace {

// Special time value which means "no time specified"
//const sc_core::sc_time UNSPECIFIED_TIME = sc_core::sc_time::from_value(sc_core::sc_time::value_type(-1));

using namespace xtlm;

#ifdef XILINX_SIMULATOR

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
const std::string TLM_AXI_S_TRANS_VIEW_ERROR_PREFIX_STR("xsim SystemC xtlm_axis_transview.h ");
#endif


// Maximum number of bytes displayed for AXI transactions
const uint32 AXI_S_MAX_DATA_LENGTH = 4096;
const uint32 AXI_S_MAX_USER_DATA_LENGTH = 512;

// xsim kernel variable name for the maximum number of simultaneous TLM transactions that can be shown individually
#define XILINX_MAX_PARALLEL_TLM_TRANSACTIONS_VAR "AxiMaxTransactions"

/**
 * Wrapper for user payload from which the logging system can read event data.
 * The user must implement some member functions specifically for the logger to use.
 */
class axis_value_traits
{
public:
  typedef unsigned sequence_id;

  enum channel { data_e, strb_e, keep_e, user_e };

  // Type name indicates protocol and is of the form:
  // extensionName__extensionVersion__protocolName
  static std::string get_type_name()
  {
    return "Xilinx_Tlm__202__tlmAxiStream";
  }
  
  static const std::string &get_wave_name(unsigned index)
  {
    static std::vector<std::string> s_stream_names;
    if (index >= s_stream_names.size())
    {
      for (unsigned i = s_stream_names.size(); i <= index; ++i)
      {
        std::ostringstream oss_name;
        oss_name << "streamWave_" << i;
        s_stream_names.push_back(oss_name.str());
      }
    }
    return s_stream_names[index];
  }

  static std::string get_channel_name(unsigned index, channel chan)
  {
    std::string chan_name = get_wave_name(index);
    switch (chan)
    {
    case data_e:
      chan_name += "_data";
      break;
    case strb_e:
      chan_name += "_strb";
      break;
    case keep_e:
      chan_name += "_keep";
      break;
    case user_e:
      chan_name += "_user";
      break;
    default:
      break;
    }
    return chan_name;
  }

  // Register all types used by the AXI-S virtual object and return the top-level type
  static const type_info *register_types()
  {
    type_info_manager* pTypeManager = type_info_manager::get_instance();
    
    struct_type_info* pXilinxAxiStreamID = new struct_type_info("XilinxAxiStreamID");
    pXilinxAxiStreamID->add_member("tid",   "$uint32");
    pXilinxAxiStreamID->add_member("tdest", "$uint32");
    pTypeManager->add_type(pXilinxAxiStreamID);

    struct_type_info *pXilinxAxisData = new struct_type_info("XilinxAxiStreamData");
    pXilinxAxisData->add_member("isActive", "$uint8");
    pXilinxAxisData->add_member("dataLen", "$uint32");
    pXilinxAxisData->add_member("beat", "$uint32");
    pXilinxAxisData->add_member("tlast", "$uint8");
    pXilinxAxisData->add_member("data", "$byteVector", AXI_S_MAX_DATA_LENGTH);
    pTypeManager->add_type(pXilinxAxisData);

    struct_type_info *pXilinxAxisUser = new struct_type_info("XilinxAxiStreamUserType");
    pXilinxAxisUser->add_member("isActive", "$uint8");
    pXilinxAxisUser->add_member("dataLen", "$uint32");
    pXilinxAxisUser->add_member("data", "$byteVector", AXI_S_MAX_USER_DATA_LENGTH);
    pTypeManager->add_type(pXilinxAxisUser);

    struct_type_info* pAxiStreamType = new struct_type_info("XilinxAxiStream");
    pAxiStreamType->add_member("streamID", "XilinxAxiStreamID");
    pAxiStreamType->add_member("tdata", "XilinxAxiStreamData");
    pAxiStreamType->add_member("tstrb", "XilinxAxiStreamUserType");
    pAxiStreamType->add_member("tkeep", "XilinxAxiStreamUserType");
    pAxiStreamType->add_member("tuser", "XilinxAxiStreamUserType");
    pTypeManager->add_type(pAxiStreamType);
    
    uint32 max_transactions = uint32(iki_get_user_int(XILINX_MAX_PARALLEL_TLM_TRANSACTIONS_VAR));
    array_type_info* pTransactionVector = new array_type_info("XilinxAxiStreamArray", "XilinxAxiStream",
                                                               max_transactions);
    pTypeManager->add_type(pTransactionVector);
    
    struct_type_info *gui_summary_type_p = new struct_type_info("XilinxAxiStreamGuiSummary");
    gui_summary_type_p->add_member("topSummary", "$uint16");
    gui_summary_type_p->add_member("streamSummary", "$uint32");
    gui_summary_type_p->add_member("streamRunningMax", "$uint16");
    for (unsigned i = 0; i < max_transactions; ++i)
    {
      gui_summary_type_p->add_member(get_wave_name(i), "$uint32");
      gui_summary_type_p->add_member(get_channel_name(i, data_e), "$uint8");
      gui_summary_type_p->add_member(get_channel_name(i, strb_e), "$uint8");
      gui_summary_type_p->add_member(get_channel_name(i, keep_e), "$uint8");
      gui_summary_type_p->add_member(get_channel_name(i, user_e), "$uint8");
    }
    pTypeManager->add_type(gui_summary_type_p);

    struct_type_info *pSocketType = new struct_type_info("XilinxAxiStreamSocket");
    pSocketType->add_member("stream", "XilinxAxiStreamArray");
    pSocketType->add_member("numExtraStreams", "$uint32");
    pSocketType->add_member("guiSummary", "XilinxAxiStreamGuiSummary");
    pTypeManager->add_type(pSocketType);

    typedef_type_info* pType = new typedef_type_info(get_type_name(), "XilinxAxiStreamSocket");
    pTypeManager->add_type(pType);

    return pType;
  }
};


//=====================================================================================================================

class axis_virtual_object : public virtual_object<axis_value_traits>
{
  typedef axis_value_traits::sequence_id sequence_id;
  typedef virtual_object<axis_value_traits> vo_base;

  // Tracking data associated with an open transaction
  struct sequence_data
  {
    sequence_id m_seq_id;
    int m_row;  // -1 = didn't fit into array
    sc_core::sc_time m_data_start_time;// UNSPECIFIED_TIME means not started
    bool m_data_is_done;

    sequence_data()
    : m_seq_id(0), m_row(-1), m_data_start_time(UNSPECIFIED_TIME),m_data_is_done(false)
    {}
  };

  // Manages active transactions by AXI payload pointer
  class sequence_map
  {
    sequence_id m_next_seq_id;
    std::map<const axis_payload*, sequence_data> m_map;
  public:
    sequence_map() : m_next_seq_id(1) {}

    // Use returned pointer right away!  Not thread safe
    sequence_data* get_sequence(const axis_payload *payload_p)
    {
      auto it = m_map.find(payload_p);
      return (it == m_map.end()) ? 0 : &it->second;
    }

    // Use returned pointer right away!  Not thread safe
    sequence_data *create_sequence(const axis_payload *payload_p)
    {
      //
      sequence_data *old_seq_data_p = get_sequence(payload_p);
      if (old_seq_data_p)
      {
#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
        std::cerr << TLM_AXI_S_TRANS_VIEW_ERROR_PREFIX_STR
            << "sequence_map::create_sequence: axis_payload pointer 0x"
            << std::hex << payload_p << std::dec << " already in use." << std::endl;
#endif
        return old_seq_data_p;
      }

      sequence_data *seq_data_p = &m_map[payload_p];
      seq_data_p->m_seq_id = m_next_seq_id++;
      return seq_data_p;
    }

    void release_sequence(const axis_payload *payload_p)
    {
      if (!get_sequence(payload_p)) {
#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
        std::cerr << TLM_AXI_S_TRANS_VIEW_ERROR_PREFIX_STR
            << "sequence_map::release_sequence: axis_payload pointer 0x"
            << std::hex << payload_p << std::dec << "not in use." << std::endl;
#endif
      }
      m_map.erase(payload_p);
    }

    void clear()
    {
      m_next_seq_id = 1;
      m_map.clear();
    }
  };

  // Manages allocation of rows for overlapping transactions
  class row_tracker
  {
    std::vector<sc_core::sc_time> m_free_row_times;  // time at which each row is available to use.  -1 means row in use
    unsigned m_num_rows;  // total number of rows available for displaying transactions
    uint32 m_num_extra_trans;  // number of overflow transactions currently open

  public:
    row_tracker() : m_free_row_times(0), m_num_rows(5), m_num_extra_trans(0)
    {
      clear();
    }

    int get_new_row_index(const sc_core::sc_time &time)
    {
      for (unsigned i = 0, end = m_num_rows; i < end; ++i)
        if (m_free_row_times[i] != UNSPECIFIED_TIME && time >= m_free_row_times[i])
        {
          m_free_row_times[i] = UNSPECIFIED_TIME;
          return i;
        }

      ++m_num_extra_trans;
      return -1;
    }

    void release_row_index(int row_ix, const sc_core::sc_time &time)
    {
      if (row_ix < 0)
        --m_num_extra_trans;
      else
        m_free_row_times[row_ix] = time;
    }

    uint32 get_num_extra_trans() const
    {
      return m_num_extra_trans;
    }

    void clear()
    {
      m_free_row_times.clear();
      m_num_rows = iki_get_user_int(XILINX_MAX_PARALLEL_TLM_TRANSACTIONS_VAR);
      if (m_num_rows > 0)
        m_free_row_times.resize(m_num_rows);
      m_num_extra_trans = 0;
    }
  };


  row_tracker m_row_tracker;
  sequence_map m_sequence_map;

  unsigned m_streamSummaryCount;
  unsigned char m_topSummaryCount;
  unsigned m_max_stream_rows;

  void increment_stream_outstanding_count(int incr, sc_core::sc_time relative_time)
  {
    if (!m_streamSummaryCount && incr > 0)
      m_topSummaryCount = 1;
    else if (m_streamSummaryCount == 1 && incr < 0)
      m_topSummaryCount = 0;

    m_streamSummaryCount += incr;

    vo_value_buffer *pBuf = get_value_buffer();
    pBuf->set_pos(get_value_index()["guiSummary"]);
    pBuf->add<uint8>(m_topSummaryCount); //topSummary count
    schedule_event(relative_time);
    pBuf->set_pos(get_value_index()["guiSummary"]["streamSummary"]);
    pBuf->add<uint32>(m_streamSummaryCount);
    schedule_event(relative_time);
  }

public:
  
  axis_virtual_object(const char *name)
  : virtual_object<axis_value_traits>(name), m_streamSummaryCount(0), m_topSummaryCount(0), m_max_stream_rows(0)
  {}

  /// ------------------------------------------------------------------------------------------------------------------

  virtual void end_of_elaboration()
  {
    // Initialize fields
    vo_base::end_of_elaboration();

    m_row_tracker.clear();
    m_streamSummaryCount = 0;
    m_topSummaryCount = 0;
    m_max_stream_rows = 0;

    vo_value_buffer* pValueBuffer = get_value_buffer();
    uint32 max_transactions = uint32(iki_get_user_int(XILINX_MAX_PARALLEL_TLM_TRANSACTIONS_VAR));
    for (unsigned row_ix = 0; row_ix < max_transactions; ++row_ix)
    {
      pValueBuffer->set_pos(get_value_index()["stream"][row_ix]["streamID"]);
      pValueBuffer->add<uint32>(0xffffffff);
      pValueBuffer->add<uint32>(0xffffffff);
      schedule_event(sc_core::SC_ZERO_TIME);
    }
  }
  
  /// ------------------------------------------------------------------------------------------------------------------

  void log_start_data_transfer(const axis_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME)
  {
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    std::cout <<  "log_start_data_transfer" << std::endl;
#endif
#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif

    int row_ix = m_row_tracker.get_new_row_index(time);
    sequence_data *seq_data_p = m_sequence_map.create_sequence(payload_p);
    seq_data_p->m_row = row_ix;
    seq_data_p->m_data_start_time = time;
    vo_value_buffer *buf_p = get_value_buffer();

    increment_stream_outstanding_count(1, relative_time);
    if (row_ix >= int(m_max_stream_rows))
    {
      m_max_stream_rows = row_ix + 1;
      buf_p->set_pos(get_value_index()["guiSummary"]["streamRunningMax"]);
      buf_p->add<uint16>(m_max_stream_rows);
      schedule_event(relative_time);
    }

    if (row_ix >= 0)
    {
      buf_p->set_pos(get_value_index()["stream"][row_ix]["streamID"]["tid"]);
      buf_p->add<uint32>(payload_p->get_tid());
      buf_p->add<uint32>(payload_p->get_tdest());
      schedule_event(relative_time);

      buf_p->set_pos(get_value_index()["stream"][row_ix]["tdata"]);
      buf_p->add<uint8>(1);  // isActive set to true
      buf_p->add<uint32>(payload_p->get_tdata_length());
      buf_p->add<uint32>(payload_p->get_n_beats());
      unsigned int tlast =  0;
      if (payload_p->get_tlast())
        tlast = 1;
      buf_p->add<uint8>(tlast);
      buf_p->add_array<unsigned char>(payload_p->get_tdata_ptr(),
         std::min(AXI_S_MAX_DATA_LENGTH, payload_p->get_tdata_length()));
      schedule_event(relative_time);

      buf_p->set_pos(get_value_index()["stream"][row_ix]["tstrb"]);
      unsigned int tstrb_length = payload_p->get_tstrb_length();
      unsigned int tstrb_isActive = tstrb_length > 0 ? 1 : 0;
      buf_p->add<uint8>(tstrb_isActive);
      if (tstrb_isActive == 1)
      {
        buf_p->add<uint32>(tstrb_length);
        buf_p->add_array<unsigned char>(payload_p->get_tstrb_ptr(), std::min(AXI_S_MAX_USER_DATA_LENGTH, tstrb_length));
      }
      schedule_event(relative_time);

      buf_p->set_pos(get_value_index()["stream"][row_ix]["tkeep"]);
      unsigned int tkeep_length = payload_p->get_tkeep_length();
      unsigned int tkeep_isActive = tkeep_length > 0 ? 1 : 0;
      buf_p->add<uint8>(tkeep_isActive);
      if (tkeep_isActive == 1)
      {
        buf_p->add<uint32>(tkeep_length);
        buf_p->add_array<unsigned char>(payload_p->get_tkeep_ptr(), std::min(AXI_S_MAX_USER_DATA_LENGTH, tkeep_length));
      }
      schedule_event(relative_time);

      buf_p->set_pos(get_value_index()["stream"][row_ix]["tuser"]);
      unsigned int tuser_length = payload_p->get_tuser_length();
      unsigned int tuser_isActive = tuser_length > 0 ? 1 : 0;
      buf_p->add<uint8>(tuser_isActive);
      if (tuser_isActive == 1)
      {
        buf_p->add<uint32>(tuser_length);
        buf_p->add_array<unsigned char>(payload_p->get_tuser_ptr(), std::min(AXI_S_MAX_USER_DATA_LENGTH, tuser_length));
      }
      schedule_event(relative_time);

      // Start the data channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][axis_value_traits::get_channel_name(row_ix,
                                                                           axis_value_traits::data_e)]);
      buf_p->add<uint8>(1); // data
      buf_p->add<uint8>(tstrb_isActive); //tstrb
      buf_p->add<uint8>(tkeep_isActive); //tkeep
      buf_p->add<uint8>(tuser_isActive); //tuser
      schedule_event(relative_time);
    }
  }

  /// ------------------------------------------------------------------------------------------------------------------

  void log_end_data_transfer(const axis_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME)
  {
    if (!xsim_is_active())
      return;

    sc_core::sc_time time = relative_time + sc_core::sc_time_stamp();

#ifdef XILINX_TLM_TRANS_VIEW_DEBUG_MESSAGES
    std::cout <<  "log_end_data_transfer" << std::endl;
#endif
#ifdef XILINX_TLM_TRANS_VIEW_STUBS_ONLY
    return;
#endif

    sequence_data *seq_data_p = m_sequence_map.get_sequence(payload_p);
    if (seq_data_p->m_data_start_time == UNSPECIFIED_TIME)
      log_start_data_transfer(payload_p, relative_time);

    const int row_ix = seq_data_p->m_row;
    if (row_ix >= 0 && time <= seq_data_p->m_data_start_time)
    {
      time = seq_data_p->m_data_start_time + sc_core::sc_time::from_value(1);
      relative_time = time - sc_core::sc_time_stamp();
    }
    vo_value_buffer *buf_p = get_value_buffer();

    if (row_ix >= 0)
    {
      buf_p->set_pos(get_value_index()["stream"][row_ix]["streamID"]["tid"]);
      buf_p->add<uint32>(0xffffffff);
      buf_p->add<uint32>(0xffffffff);
      schedule_event(relative_time);

      buf_p->set_pos(get_value_index()["stream"][row_ix]["tdata"]);
      buf_p->add<uint8>(0);  // set isActive to false
      schedule_event(relative_time);
      buf_p->set_pos(get_value_index()["stream"][row_ix]["tstrb"]);
      buf_p->add<uint8>(0);  // set isActive to false
      schedule_event(relative_time);
      buf_p->set_pos(get_value_index()["stream"][row_ix]["tkeep"]);
      buf_p->add<uint8>(0);  // set isActive to false
      schedule_event(relative_time);
      buf_p->set_pos(get_value_index()["stream"][row_ix]["tuser"]);
      buf_p->add<uint8>(0);  // set isActive to false
      schedule_event(relative_time);

      // End the data channel transaction bar
      buf_p->set_pos(get_value_index()["guiSummary"][axis_value_traits::get_channel_name(row_ix,
                                                                        axis_value_traits::data_e)]);
      buf_p->add<uint8>(0); //data
      buf_p->add<uint8>(0); //strb
      buf_p->add<uint8>(0); //keep
      buf_p->add<uint8>(0); //user

      schedule_event(relative_time);
    }

    // Release the transaction row and payload pointer

    m_row_tracker.release_row_index(row_ix, time);
    m_sequence_map.release_sequence(payload_p);

    // If there was no row: decrement the "extras" count

    if (row_ix < 0)
    {
      buf_p->set_pos(get_value_index()["numExtraStreams"]);
      buf_p->add<uint32>(m_row_tracker.get_num_extra_trans());
      schedule_event(relative_time);
    }
    increment_stream_outstanding_count(-1, relative_time);
   }

};

//######################################################################################################
    
#else /* not XILINX_SIMULATOR */

// for other simulators

// Dummy implementation
//
class axis_virtual_object {
public:
  axis_virtual_object(const char *, sc_core::sc_object * = 0) {}
  void activate(bool is_active = true) {}
  
  void log_start_data_transfer(const axis_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME){}
  void log_end_data_transfer(const axis_payload *payload_p, sc_core::sc_time relative_time = sc_core::SC_ZERO_TIME){}
};

#endif /* XILINX_SIMULATOR */

} // namespace xil_trace
} // namespace xilinx_sc


#endif /* XTLM_AXIS_TRANSVIEW_H */

