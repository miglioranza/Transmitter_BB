vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/fifo_generator_v13_2_6
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap fifo_generator_v13_2_6 modelsim_lib/msim/fifo_generator_v13_2_6
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu -sv -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_8 "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu -sv -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_8 "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/ihp/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_6 -64 -incr -mfcu "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -64 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6 -64 -incr -mfcu "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../FEC.gen/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

