
//**********************************************************************
// Copyright (c) 2016-2018 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//  Common implementation utilities for AXI TG
//
//**********************************************************************
#ifndef _xsc_axitg_TgMemory_h_
#define _xsc_axitg_TgMemory_h_

#include "xtlm.h"
#include "report_handler.h"
#include <memory>
#include <type_traits>

namespace xsc    {
namespace axi_tg {

// chunks equal to 4KB so each AXI txn hits only 1
// Any module that requires an instance of this class must
// invoke either get_dic_mst_inst<>() method or 
// get_dic_slv_inst() method. Below are rules for which one
// to invoke
//
// If the requestor is Master TG, then invoke get_dic_mst_inst()
// A shared pointer is returned.
// All master read and write to same resource
//
// If the requestor is Slave TD, then invoke get_dic_slv_inst()
// A unique pointer is returned.
// Each Slave owns its own resource.
class DataIntegritySparseStorage {
  int m_trace;
  std::string m_header;

  template <int ChunkSize=4096> class Detail;
  std::unique_ptr<Detail<>> m_detail;

  //Static shared pointer that all NMU's share
  static std::shared_ptr<DataIntegritySparseStorage> m_nmu_mem;

 public:
  ~DataIntegritySparseStorage();
  //Move constructor and assignment operator
  DataIntegritySparseStorage(DataIntegritySparseStorage&& );
  DataIntegritySparseStorage& operator=(DataIntegritySparseStorage&& );
  //Copy constructor and assignment operator
  DataIntegritySparseStorage(DataIntegritySparseStorage const& ) = delete;
  DataIntegritySparseStorage& operator=(DataIntegritySparseStorage const& ) = delete;

 private:
  DataIntegritySparseStorage();
   
 public:
  using Addr          = uint64_t;
  using NumBytes      = uint16_t;
  using DataArr       = unsigned char*; // storage in bytes
  using ConstDataArr  = const unsigned char*; // storage in bytes

  void check( Addr, ConstDataArr, uint16_t ) const;
  std::pair<unsigned char, bool> byteAt( Addr ) const;
  void write( Addr, ConstDataArr, uint16_t, ConstDataArr byteEnable=0 );
  void read(Addr, DataArr, uint16_t);
  void printPayload(
      const uint8_t* ptr, uint64_t addr, uint16_t num, bool isRead);
  void setHeader(std::string header);

  static std::shared_ptr<DataIntegritySparseStorage> get_dic_mst_inst();
  static std::unique_ptr<DataIntegritySparseStorage> get_dic_slv_inst();
};


}
}

#endif


