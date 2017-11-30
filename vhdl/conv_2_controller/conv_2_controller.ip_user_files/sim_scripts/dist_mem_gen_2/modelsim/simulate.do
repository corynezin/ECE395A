onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.dist_mem_gen_2

do {wave.do}

view wave
view structure
view signals

do {dist_mem_gen_2.udo}

run -all

quit -force
