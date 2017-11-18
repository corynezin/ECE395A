onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fir128_opt

do {wave.do}

view wave
view structure
view signals

do {fir128.udo}

run -all

quit -force
