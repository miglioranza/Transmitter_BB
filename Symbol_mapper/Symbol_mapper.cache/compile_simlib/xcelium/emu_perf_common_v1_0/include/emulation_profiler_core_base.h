
#ifndef EMU_PERF_COMMON_EMU_PERF_COMMON_V1_0_EMULATION_PROFILER_CORE_BASE_H_
#define EMU_PERF_COMMON_EMU_PERF_COMMON_V1_0_EMULATION_PROFILER_CORE_BASE_H_

#include <xtlm.h>
namespace xsc {

class emulation_profiler_core_base: public sc_core::sc_module {
public:
	emulation_profiler_core_base(sc_core::sc_module_name &name);
	virtual ~emulation_profiler_core_base();
	static void getProfileLiveMessages(std::string &str);
	virtual void get_profile_live_messages(std::string &str)=0;

private :
	static emulation_profiler_core_base* m_object;
};

};
#endif /* EMU_PERF_COMMON_EMU_PERF_COMMON_V1_0_EMULATION_PROFILER_CORE_BASE_H_ */
