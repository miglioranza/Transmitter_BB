
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
#ifndef _XSC_TYPES_H_
#define _XSC_TYPES_H_

#include <climits>
#include <cfloat>
#include <cstddef>

/**
 *xsctypes:
 *     These are typedefines for basic types
 *     The typedefs are in the order of most use first
 *     Please try to maintain this order as far as possible
 */

/**
 * Basic integer types
 *
 * xschar/xscuchar:          8bit signed/unsigned integer in both 32 or 64bit archs
 * xscshortint/xscushortint: 16bit signed/unsigned integer in both 32 or 64bit archs
 * xscint/xscuint:           32bit signed/unsigned integer in both 32 or 64bit archs
 * xscint64/xscuint64:       64bit signed/unsigned integer in both 32 or 64bit archs
 *
 * xscvoidint:        unsigned integer to represent a void* pointer,
 *                    i.e. 32 bit on 32bit arch, 64bit on 64bit arch
 *
 * Important: xscvoidint should only be used for casting pointer to integer value.
 * Using it for arithmetic calculation might create different outcomes when
 * switching from 32bit to 64bit arch.
 *
 * DO NOT use long, they are confusing!!!
 */

typedef char xscchar;
typedef unsigned char xscuchar;

typedef short xscshortint;
typedef unsigned short xscushortint;

typedef int xscint;
typedef unsigned int xscuint;

typedef long long xscint64;

typedef unsigned long long xscuint64;

typedef size_t xscvoidint;

// Basic floating point types
//
// xscfloat       always 32bit in both 32 or 64bit archs
// xscdouble      always 64bit in both 32 or 64bit archs

typedef float xscfloat;
typedef double xscdouble;

//Boolean type
typedef bool xscboolean;

// Largest and smallest numbers - usually used for initializations
// these come from includes of limits.h and float.h
const xscdouble XSC_MAX_FLOAT = FLT_MAX;
const xscdouble XSC_MIN_FLOAT = FLT_MIN;
const xscdouble XSC_MAX_FLOAT64 = DBL_MAX;
const xscdouble XSC_MIN_FLOAT64 = DBL_MIN;
const xscint XSC_MAX_INT = INT_MAX;
const xscint XSC_MIN_INT = INT_MIN;

//
// xscbitfield
//
typedef unsigned char xscbitfield8;
typedef unsigned short xscbitfield16;
typedef unsigned int xscbitfield32;

#endif /* _XSC_TYPES_H_ */
