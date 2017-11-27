onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fir128_1_opt

do {wave.do}

view wave
view structure
view signals

do {fir128_1.udo}

run -all

quit -force
