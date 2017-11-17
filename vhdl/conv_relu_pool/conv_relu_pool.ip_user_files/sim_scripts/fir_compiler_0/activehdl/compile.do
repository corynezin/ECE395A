vlib work
vlib activehdl

vlib activehdl/xbip_utils_v3_0_7
vlib activehdl/axi_utils_v2_0_3
vlib activehdl/fir_compiler_v7_2_8
vlib activehdl/xil_defaultlib

vmap xbip_utils_v3_0_7 activehdl/xbip_utils_v3_0_7
vmap axi_utils_v2_0_3 activehdl/axi_utils_v2_0_3
vmap fir_compiler_v7_2_8 activehdl/fir_compiler_v7_2_8
vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xbip_utils_v3_0_7 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_3 -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_8 -93 \
"../../../ipstatic/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../conv_relu_pool.srcs/sources_1/ip/fir_compiler_0/sim/fir_compiler_0.vhd" \


