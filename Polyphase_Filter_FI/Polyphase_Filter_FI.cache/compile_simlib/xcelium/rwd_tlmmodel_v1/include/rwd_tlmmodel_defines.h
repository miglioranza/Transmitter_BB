
#ifndef _RWD_TLMMODEL_DEFINES_H_
#define _RWD_TLMMODEL_DEFINES_H_

#if defined(_WIN32) && defined(__MINGW32__)// if windows
    #if defined(RWD_TLMMODEL_SC_DLL)
        #define RWD_TLMMODEL_SC_API __declspec( dllexport )
    #else
        #define RWD_TLMMODEL_SC_API __declspec( dllimport )
    #endif
#else // if non-windows
    #define RWD_TLMMODEL_SC_API
#endif

#ifndef ENABLE_ASYNC_MODE
#if defined(XILINX_SIMULATOR) || defined(SC_ALD_EXT) || defined(XM_SYSTEMC) // XILINX and ALDEC(riviera simulators support asycn-request mode)
#define ENABLE_ASYNC_MODE
#endif
#endif

#endif
