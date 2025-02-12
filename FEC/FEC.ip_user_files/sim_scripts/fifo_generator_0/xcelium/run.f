-makelib xcelium_lib/xilinx_vip -sv \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/ihp/ihpusr/xilinx/vivado2021.2/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../FEC.gen/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

