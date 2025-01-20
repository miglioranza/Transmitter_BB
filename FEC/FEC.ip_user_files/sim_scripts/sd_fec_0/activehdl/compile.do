vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/ecc_v2_0_13
vlib activehdl/fec_5g_common_v1_1_1
vlib activehdl/sd_fec_v1_1_8
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap ecc_v2_0_13 activehdl/ecc_v2_0_13
vmap fec_5g_common_v1_1_1 activehdl/fec_5g_common_v1_1_1
vmap sd_fec_v1_1_8 activehdl/sd_fec_v1_1_8
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/ihp/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work ecc_v2_0_13  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/ecc_v2_0_vl_rfs.v" \

vlog -work fec_5g_common_v1_1_1  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/fec_5g_common_v1_1_rfs.sv" \

vlog -work sd_fec_v1_1_8  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/sd_fec_v1_1_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../FEC.gen/sources_1/ip/sd_fec_0/sim/sd_fec_0.sv" \

vlog -work xil_defaultlib \
"glbl.v"

