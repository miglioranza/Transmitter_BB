
#ifndef _REMOTE_PORT_TLM_SC_DEFINES_H_
#define _REMOTE_PORT_TLM_SC_DEFINES_H_

#if defined(_WIN32) && defined(__MINGW32__)// if windows
#if defined(REMOTEPORT_SC_DLL) 
#define REMOTEPORT_SC_API __declspec( dllexport )
#else
#define REMOTEPORT_SC_API __declspec( dllimport )
#endif
#else // if non-windows
#define REMOTEPORT_SC_API
#endif

#ifndef ASYNC_REQUEST_MODE
#if defined(XILINX_SIMULATOR) || defined(SC_ALD_EXT) || defined(XM_SYSTEMC) || defined(VCSSYSTEMC) || defined(MTI_SYSTEMC) 
// XILINX, ALDEC(riviera simulators support asycn-request mode), Xcelium, VCS and Questa
#define ASYNC_REQUEST_MODE
#endif
#endif

#endif
