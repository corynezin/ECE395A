// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Sep 19 17:33:15 2017
// Host        : bcv-Vostro-430 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/bcv/Documents/ECE395A/vhdl/experiments/matmul_pl/matmul_pl.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_stub.v
// Design      : xbip_multadd_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_multadd_v3_0_10,Vivado 2017.2" *)
module xbip_multadd_0(A, B, C, PCIN, SUBTRACT, P, PCOUT)
/* synthesis syn_black_box black_box_pad_pin="A[7:0],B[7:0],C[105:0],PCIN[47:0],SUBTRACT,P[105:0],PCOUT[47:0]" */;
  input [7:0]A;
  input [7:0]B;
  input [105:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [105:0]P;
  output [47:0]PCOUT;
endmodule
