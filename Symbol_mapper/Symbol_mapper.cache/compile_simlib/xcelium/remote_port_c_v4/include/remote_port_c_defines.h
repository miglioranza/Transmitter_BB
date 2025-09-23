
/*
 * QEMU remote port protocol parts.
 *
 * Copyright (c) 2013 Xilinx Inc
 * Written by Edgar E. Iglesias <edgar.iglesias@xilinx.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
#ifndef _REMOTE_PORT_C_DEFINES_H_
#define _REMOTE_PORT_C_DEFINES_H_

#if defined(_WIN32) && defined(__MINGW32__)// if windows
#if defined(REMOTEPORT_C_DLL) 
#define REMOTEPORT_C_API __declspec( dllexport )
#else
#define REMOTEPORT_C_API __declspec( dllimport )
#endif
#else // if non-windows
#define REMOTEPORT_C_API
#endif

#ifndef ASYNC_REQUEST_MODE
#if defined(XILINX_SIMULATOR) || defined(SC_ALD_EXT) || defined(XM_SYSTEMC) || defined(VCSSYSTEMC) || defined(MTI_SYSTEMC) 
// XILINX, ALDEC(riviera simulators support asycn-request mode), Xcelium, VCS and Questa
#define ASYNC_REQUEST_MODE
#endif
#endif

#endif
