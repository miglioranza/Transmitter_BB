#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/ihpusr/xilinx/vivado20191/SDK/2019.1/bin:/ihpusr/xilinx/vivado20191/Vivado/2019.1/ids_lite/ISE/bin/lin64:/ihpusr/xilinx/vivado20191/Vivado/2019.1/bin
else
  PATH=/ihpusr/xilinx/vivado20191/SDK/2019.1/bin:/ihpusr/xilinx/vivado20191/Vivado/2019.1/ids_lite/ISE/bin/lin64:/ihpusr/xilinx/vivado20191/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/miglioranza/Pre-distorsion_filter/Pre-distorsion_filter.runs/synth_2'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log Parallel_FIR_filter.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source Parallel_FIR_filter.tcl
