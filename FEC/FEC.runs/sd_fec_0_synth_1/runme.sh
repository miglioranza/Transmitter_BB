#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/ihpusr/xilinx/vivado2021.2/Vitis/2021.2/bin:/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/ids_lite/ISE/bin/lin64:/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/bin
else
  PATH=/ihpusr/xilinx/vivado2021.2/Vitis/2021.2/bin:/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/ids_lite/ISE/bin/lin64:/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/miglioranza/FEC/FEC.runs/sd_fec_0_synth_1'
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

EAStep vivado -log sd_fec_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source sd_fec_0.tcl
