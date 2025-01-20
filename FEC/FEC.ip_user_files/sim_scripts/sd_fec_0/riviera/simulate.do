onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+sd_fec_0 -L xilinx_vip -L xpm -L ecc_v2_0_13 -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sd_fec_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {sd_fec_0.udo}

run -all

endsim

quit -force
