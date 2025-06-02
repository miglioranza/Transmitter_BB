
#ifndef EM_DIAG_CORE_INCLUDE_EMDIAGCORE_H_
#define EM_DIAG_CORE_INCLUDE_EMDIAGCORE_H_
#include <string>
#include "report_handler.h"
#include "em_diag_core_defines.h"
namespace xsc {

class em_diag_core {

public:
	static void parseRTDMetadata();
	//List of Public static access methods
	//Memory Diagnostic event reporter
	static void reportMemoryUnallocatedAccess(uint32_t id,std::string id_name,uint64_t addr,uint32_t size, xsc::em_diag_core_defines::MM_TRAN_COMMAND);
	static void reportMemoryBufferOverrun(uint32_t id,std::string id_name,uint64_t addr,uint32_t size, xsc::em_diag_core_defines::MM_TRAN_COMMAND);
	static void reportMemoryReadBeforeWrite(uint32_t id,std::string id_name,uint64_t addr,uint32_t size);
	static void reportMemoryAllZeroWrites(uint32_t id,std::string id_name,uint64_t addr,uint32_t size);
	static void reportMemoryLoop(uint32_t id,std::string id_name,uint64_t addr,uint32_t size,xsc::em_diag_core_defines::MM_TRAN_COMMAND);
	static void reportMemoryGeneralDiagMessage(std::string msg);
	static void reportUsageStatisticsPerBuffer(uint32_t id,std::string id_name,uint64_t addr,uint32_t size);

	static void reportGeneralDiagMessage(std::string msg);

	//Routing Diagnostic event reporter
	static void reportTransactionRoutingError(uint32_t id,std::string id_name,uint64_t addr,uint32_t size);
	static void reportInvalidResponseError(uint32_t id,std::string id_name,uint64_t addr,uint32_t size);

	//KernelDiagnostic event reporter
	static void reportCUStart(uint32_t id,std::string id_name);
	static void reportCUDone(uint32_t id,std::string id_name);
	static void reportCUContinue(uint32_t id,std::string id_name);
	static void reportCUMMTranStart(uint32_t id,std::string id_name,uint32_t intf_id,std::string intf_name,uint64_t addr,uint32_t size,xsc::em_diag_core_defines::MM_TRAN_COMMAND);
	static void reportCUMMTranEnd(uint32_t id,std::string id_name,uint32_t intf_id,std::string intf_name,uint64_t addr,uint32_t size,xsc::em_diag_core_defines::MM_TRAN_COMMAND);
	static void reportCUStrmTranStart(uint32_t id,std::string id_name,uint32_t intf_id,std::string intf_name,xsc::em_diag_core_defines::STRM_TRAN_COMMAND);
	static void reportCUStrmTranDone(uint32_t id,std::string id_name,uint32_t intf_id,std::string intf_name,uint64_t addr,uint32_t size,xsc::em_diag_core_defines::STRM_TRAN_COMMAND);
	static void reportCUStrmStall(uint32_t id,std::string id_name,uint32_t intf_id,std::string intf_name);
	static void reportCUMMStall(uint32_t id,std::string id_name,uint32_t intf_id,std::string intf_name,uint64_t addr,uint32_t size);

	//Host Access messages
	static void reportHostMMTranStart();
	static void reportHostMMTranEnd();
	static void reportHostStrmTranStart();
	static void reportHostStrmTranEnd();

	//Remote Live message reporting
	static void fetchLiveMessages   (std::string & str);
	static void fetchInfoMessages   (std::string & str);
	static void fetchWarningMessages(std::string & str);
	static void fetchErrorMessages  (std::string & str);

	//Generic Functions
	static void enableDiagnosticsDump(bool flag);
	static void supressWarnings();
	static void supressErrors();
	static void supressWarning(uint32_t error_code);
	static void supressError(uint32_t error_code);
	static void init();

	static void getHostMessages(std::string &string);

private :
	static xsc::common_cpp::report_handler *report_handler;
	em_diag_core();
};

} /* namespace xsc */

#endif /* EM_DIAG_CORE_INCLUDE_EMDIAGCORE_H_ */
