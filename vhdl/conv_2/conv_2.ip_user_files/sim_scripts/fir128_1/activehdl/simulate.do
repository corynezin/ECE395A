onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fir128_1 -L xil_defaultlib -L xpm -L xbip_utils_v3_0_7 -L axi_utils_v2_0_3 -L fir_compiler_v7_2_8 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fir128_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fir128_1.udo}

run -all

endsim

quit -force
