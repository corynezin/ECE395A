vlib work
vlib msim

vlib msim/xbip_utils_v3_0_7
vlib msim/xbip_pipe_v3_0_3
vlib msim/xbip_bram18k_v3_0_3
vlib msim/mult_gen_v12_0_12
vlib msim/xbip_dsp48_wrapper_v3_0_4
vlib msim/xbip_dsp48_addsub_v3_0_3
vlib msim/xbip_dsp48_multadd_v3_0_3
vlib msim/xbip_multadd_v3_0_10
vlib msim/xil_defaultlib

vmap xbip_utils_v3_0_7 msim/xbip_utils_v3_0_7
vmap xbip_pipe_v3_0_3 msim/xbip_pipe_v3_0_3
vmap xbip_bram18k_v3_0_3 msim/xbip_bram18k_v3_0_3
vmap mult_gen_v12_0_12 msim/mult_gen_v12_0_12
vmap xbip_dsp48_wrapper_v3_0_4 msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_3 msim/xbip_dsp48_addsub_v3_0_3
vmap xbip_dsp48_multadd_v3_0_3 msim/xbip_dsp48_multadd_v3_0_3
vmap xbip_multadd_v3_0_10 msim/xbip_multadd_v3_0_10
vmap xil_defaultlib msim/xil_defaultlib

vcom -work xbip_utils_v3_0_7 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -64 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_3 -64 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_12 -64 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_3 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_multadd_v3_0_10 -64 -93 \
"../../../ipstatic/hdl/xbip_multadd_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../matmul_pl.srcs/sources_1/ip/xbip_multadd_0/sim/xbip_multadd_0.vhd" \


