vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../conv_2_controller.srcs/sources_1/ip/fifo_64/fifo_64_sim_netlist.vhdl" \


