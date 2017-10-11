onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xbip_utils_v3_0_7 -L xbip_pipe_v3_0_3 -L xbip_bram18k_v3_0_3 -L mult_gen_v12_0_12 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_3 -L xbip_dsp48_multadd_v3_0_3 -L xbip_multadd_v3_0_10 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.mac

do {wave.do}

view wave
view structure
view signals

do {mac.udo}

run -all

quit -force
