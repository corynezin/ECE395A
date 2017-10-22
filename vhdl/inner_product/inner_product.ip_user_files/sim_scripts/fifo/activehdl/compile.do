vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../../inner_product.srcs/sources_1/ip/fifo/fifo_sim_netlist.vhdl" \


