vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../inner_product.srcs/sources_1/ip/fifo/fifo_sim_netlist.vhdl" \


