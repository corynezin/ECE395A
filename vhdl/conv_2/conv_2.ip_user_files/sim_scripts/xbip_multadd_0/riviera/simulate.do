onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+xbip_multadd_0 -L xil_defaultlib -L xpm -L xbip_utils_v3_0_7 -L xbip_pipe_v3_0_3 -L xbip_bram18k_v3_0_3 -L mult_gen_v12_0_12 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_3 -L xbip_dsp48_multadd_v3_0_3 -L xbip_multadd_v3_0_10 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xbip_multadd_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {xbip_multadd_0.udo}

run -all

endsim

quit -force
