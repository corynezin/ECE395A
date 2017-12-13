onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ram2 -L xil_defaultlib -L secureip -O5 xil_defaultlib.ram2

do {wave.do}

view wave
view structure

do {ram2.udo}

run -all

endsim

quit -force
