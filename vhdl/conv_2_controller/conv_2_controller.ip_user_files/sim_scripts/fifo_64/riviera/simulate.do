onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fifo_64 -L xil_defaultlib -L secureip -O5 xil_defaultlib.fifo_64

do {wave.do}

view wave
view structure

do {fifo_64.udo}

run -all

endsim

quit -force
