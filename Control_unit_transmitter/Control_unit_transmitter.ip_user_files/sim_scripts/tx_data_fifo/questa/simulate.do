onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib tx_data_fifo_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {tx_data_fifo.udo}

run -all

quit -force
