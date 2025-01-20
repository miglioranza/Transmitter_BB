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
-makelib xcelium_lib/ecc_v2_0_13 \
  "../../../ipstatic/hdl/ecc_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fec_5g_common_v1_1_1 -sv \
  "../../../ipstatic/hdl/fec_5g_common_v1_1_rfs.sv" \
-endlib
-makelib xcelium_lib/sd_fec_v1_1_8 -sv \
  "../../../ipstatic/hdl/sd_fec_v1_1_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../FEC.gen/sources_1/ip/sd_fec_0/sim/sd_fec_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

