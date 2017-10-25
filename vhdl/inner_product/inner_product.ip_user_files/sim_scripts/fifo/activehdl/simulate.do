onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fifo -L xil_defaultlib -L secureip -O5 xil_defaultlib.fifo

do {wave.do}

view wave
view structure

do {fifo.udo}

run -all

endsim

quit -force
