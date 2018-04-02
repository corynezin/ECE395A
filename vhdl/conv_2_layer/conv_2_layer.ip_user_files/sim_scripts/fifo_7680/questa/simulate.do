onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_7680_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_7680.udo}

run -all

quit -force
