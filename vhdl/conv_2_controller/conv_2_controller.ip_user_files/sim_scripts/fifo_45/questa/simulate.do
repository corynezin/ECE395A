onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_45_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_45.udo}

run -all

quit -force
