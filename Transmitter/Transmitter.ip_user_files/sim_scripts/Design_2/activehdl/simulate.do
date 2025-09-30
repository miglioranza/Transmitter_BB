onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+Design_2 -L xilinx_vip -L xpm -L xil_defaultlib -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_7 -L ecc_v2_0_13 -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_8 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Design_2 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {Design_2.udo}

run -all

endsim

quit -force
