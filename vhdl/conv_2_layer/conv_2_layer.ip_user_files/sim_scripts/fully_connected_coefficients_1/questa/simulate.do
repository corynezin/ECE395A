onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fully_connected_coefficients_1_opt

do {wave.do}

view wave
view structure
view signals

do {fully_connected_coefficients_1.udo}

run -all

quit -force
