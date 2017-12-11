onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fifo_45 -L xil_defaultlib -L secureip -O5 xil_defaultlib.fifo_45

do {wave.do}

view wave
view structure

do {fifo_45.udo}

run -all

endsim

quit -force
