vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_data_fifo_v2_0_7
vlib modelsim_lib/msim/ecc_v2_0_13
vlib modelsim_lib/msim/fec_5g_common_v1_1_1
vlib modelsim_lib/msim/sd_fec_v1_1_8

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_7 modelsim_lib/msim/axis_data_fifo_v2_0_7
vmap ecc_v2_0_13 modelsim_lib/msim/ecc_v2_0_13
vmap fec_5g_common_v1_1_1 modelsim_lib/msim/fec_5g_common_v1_1_1
vmap sd_fec_v1_1_8 modelsim_lib/msim/sd_fec_v1_1_8

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

vlog -work xpm -64 -incr -mfcu -sv -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_8 "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/ihp/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Design_2/ipshared/9262/sources_1/new/Interleaver.vhd" \
"../../../bd/Design_2/ip/Design_2_block_interleaver_0_0/sim/Design_2_block_interleaver_0_0.vhd" \
"../../../bd/Design_2/ipshared/299a/sources_1/new/Scrambler_32bits.vhd" \
"../../../bd/Design_2/ip/Design_2_Scrambler_32bits_0_1/sim/Design_2_Scrambler_32bits_0_1.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_7 -64 -incr -mfcu "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/sim/axis_data_fifo_1.v" \
"../../../bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/sim/axis_data_fifo_0.v" \

vlog -work ecc_v2_0_13 -64 -incr -mfcu "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl/ecc_v2_0_vl_rfs.v" \

vlog -work fec_5g_common_v1_1_1 -64 -incr -mfcu -sv -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_8 "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl/fec_5g_common_v1_1_rfs.sv" \

vlog -work sd_fec_v1_1_8 -64 -incr -mfcu -sv -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_8 "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl/sd_fec_v1_1_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_8 "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/sim/sd_fec_0.sv" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Design_2/ipshared/37b8/sources_1/new/Input_controller.vhd" \
"../../../bd/Design_2/ipshared/37b8/sources_1/new/LDPC_encoder.vhd" \
"../../../bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sim/Design_2_LDPC_encoder_0_2.vhd" \
"../../../bd/Design_2/ipshared/db2d/Pre-distorsion_filter.srcs/sources_1/new/Parallel_FIR_filter.vhd" \
"../../../bd/Design_2/ip/Design_2_Pre_Distortion_Filter_0_0/sim/Design_2_Pre_Distortion_Filter_0_0.vhd" \
"../../../bd/Design_2/ipshared/00f1/sources_1/new/Control_unit_top.vhd" \
"../../../bd/Design_2/ip/Design_2_Control_unit_top_0_0/sim/Design_2_Control_unit_top_0_0.vhd" \
"../../../bd/Design_2/ip/Design_2_MUX_0_2/sim/Design_2_MUX_0_2.vhd" \
"../../../bd/Design_2/ipshared/614a/sources_1/new/Symbol_mapper.vhd" \
"../../../bd/Design_2/ip/Design_2_Symbol_mapper_0_0/sim/Design_2_Symbol_mapper_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_1/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/sd_fec_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_LDPC_encoder_0_2/sources_1/ip/axis_data_fifo_0/hdl" "+incdir+../../../../Transmitter.gen/sources_1/bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/hdl" "+incdir+/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/Design_2/ip/Design_2_Polyphase_filter_0_0/Polyphase_Filter_FI.srcs/sources_1/ip/axis_data_fifo_poly_filter/sim/axis_data_fifo_poly_filter.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Design_2/ipshared/0e7d/Polyphase_Filter_FI.srcs/sources_1/new/Polyphase_filter.vhd" \
"../../../bd/Design_2/ip/Design_2_Polyphase_filter_0_0/sim/Design_2_Polyphase_filter_0_0.vhd" \
"../../../bd/Design_2/sim/Design_2.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

