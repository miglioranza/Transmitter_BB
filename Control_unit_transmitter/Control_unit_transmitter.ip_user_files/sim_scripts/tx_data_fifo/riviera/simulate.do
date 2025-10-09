onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+tx_data_fifo -L xpm -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tx_data_fifo xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {tx_data_fifo.udo}

run -all

endsim

quit -force
