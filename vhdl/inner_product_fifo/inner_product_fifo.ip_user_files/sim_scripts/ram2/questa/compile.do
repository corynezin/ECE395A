vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../inner_product_fifo.srcs/sources_1/ip/ram2/ram2_sim_netlist.vhdl" \


