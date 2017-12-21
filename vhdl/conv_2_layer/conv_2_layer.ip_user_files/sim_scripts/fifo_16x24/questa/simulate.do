onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_16x24_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_16x24.udo}

run -all

quit -force
