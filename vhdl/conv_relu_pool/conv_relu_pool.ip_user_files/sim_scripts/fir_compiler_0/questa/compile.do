vlib work
vlib msim

vlib msim/xbip_utils_v3_0_7
vlib msim/axi_utils_v2_0_3
vlib msim/fir_compiler_v7_2_8
vlib msim/xil_defaultlib

vmap xbip_utils_v3_0_7 msim/xbip_utils_v3_0_7
vmap axi_utils_v2_0_3 msim/axi_utils_v2_0_3
vmap fir_compiler_v7_2_8 msim/fir_compiler_v7_2_8
vmap xil_defaultlib msim/xil_defaultlib

vcom -work xbip_utils_v3_0_7 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_3 -64 -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_8 -64 -93 \
"../../../ipstatic/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../conv_relu_pool.srcs/sources_1/ip/fir_compiler_0/sim/fir_compiler_0.vhd" \


