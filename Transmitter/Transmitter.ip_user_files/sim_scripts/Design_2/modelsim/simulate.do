onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L xil_defaultlib -L ecc_v2_0_13 -L fec_5g_common_v1_1_1 -L sd_fec_v1_1_8 -L fifo_generator_v13_2_6 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Design_2 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Design_2.udo}

run -all

quit -force
