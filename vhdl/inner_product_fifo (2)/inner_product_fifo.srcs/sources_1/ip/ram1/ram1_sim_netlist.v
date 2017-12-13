// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Nov 25 16:18:34 2017
// Host        : nezin-desktop running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/nezin/Documents/ECE395A/vhdl/inner_product_fifo/inner_product_fifo.srcs/sources_1/ip/ram1/ram1_sim_netlist.v
// Design      : ram1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram1,dist_mem_gen_v8_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module ram1
   (a,
    spo);
  input [12:0]a;
  output [7:0]spo;

  wire [12:0]a;
  wire [7:0]spo;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "zynq" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "13" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "7680" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ram1.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  ram1_dist_mem_gen_v8_0_11 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "13" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "7680" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "zynq" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "ram1.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_11" *) 
module ram1_dist_mem_gen_v8_0_11
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [12:0]a;
  input [7:0]d;
  input [12:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [7:0]spo;
  output [7:0]dpo;
  output [7:0]qspo;
  output [7:0]qdpo;

  wire \<const0> ;
  wire [12:0]a;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g100_b0_n_0;
  wire g100_b1_n_0;
  wire g100_b2_n_0;
  wire g100_b3_n_0;
  wire g100_b4_n_0;
  wire g100_b5_n_0;
  wire g100_b6_n_0;
  wire g100_b7_n_0;
  wire g101_b0_n_0;
  wire g101_b1_n_0;
  wire g101_b2_n_0;
  wire g101_b3_n_0;
  wire g101_b4_n_0;
  wire g101_b5_n_0;
  wire g101_b6_n_0;
  wire g101_b7_n_0;
  wire g102_b0_n_0;
  wire g102_b1_n_0;
  wire g102_b2_n_0;
  wire g102_b3_n_0;
  wire g102_b4_n_0;
  wire g102_b5_n_0;
  wire g102_b6_n_0;
  wire g102_b7_n_0;
  wire g103_b0_n_0;
  wire g103_b1_n_0;
  wire g103_b2_n_0;
  wire g103_b3_n_0;
  wire g103_b4_n_0;
  wire g103_b5_n_0;
  wire g103_b6_n_0;
  wire g103_b7_n_0;
  wire g104_b0_n_0;
  wire g104_b1_n_0;
  wire g104_b2_n_0;
  wire g104_b3_n_0;
  wire g104_b4_n_0;
  wire g104_b5_n_0;
  wire g104_b6_n_0;
  wire g104_b7_n_0;
  wire g105_b0_n_0;
  wire g105_b1_n_0;
  wire g105_b2_n_0;
  wire g105_b3_n_0;
  wire g105_b4_n_0;
  wire g105_b5_n_0;
  wire g105_b6_n_0;
  wire g105_b7_n_0;
  wire g106_b0_n_0;
  wire g106_b1_n_0;
  wire g106_b2_n_0;
  wire g106_b3_n_0;
  wire g106_b4_n_0;
  wire g106_b5_n_0;
  wire g106_b6_n_0;
  wire g106_b7_n_0;
  wire g107_b0_n_0;
  wire g107_b1_n_0;
  wire g107_b2_n_0;
  wire g107_b3_n_0;
  wire g107_b4_n_0;
  wire g107_b5_n_0;
  wire g107_b6_n_0;
  wire g107_b7_n_0;
  wire g108_b0_n_0;
  wire g108_b1_n_0;
  wire g108_b2_n_0;
  wire g108_b3_n_0;
  wire g108_b4_n_0;
  wire g108_b5_n_0;
  wire g108_b6_n_0;
  wire g108_b7_n_0;
  wire g109_b0_n_0;
  wire g109_b1_n_0;
  wire g109_b2_n_0;
  wire g109_b3_n_0;
  wire g109_b4_n_0;
  wire g109_b5_n_0;
  wire g109_b6_n_0;
  wire g109_b7_n_0;
  wire g10_b0_n_0;
  wire g10_b1_n_0;
  wire g10_b2_n_0;
  wire g10_b3_n_0;
  wire g10_b4_n_0;
  wire g10_b5_n_0;
  wire g10_b6_n_0;
  wire g10_b7_n_0;
  wire g110_b0_n_0;
  wire g110_b1_n_0;
  wire g110_b2_n_0;
  wire g110_b3_n_0;
  wire g110_b4_n_0;
  wire g110_b5_n_0;
  wire g110_b6_n_0;
  wire g110_b7_n_0;
  wire g111_b0_n_0;
  wire g111_b1_n_0;
  wire g111_b2_n_0;
  wire g111_b3_n_0;
  wire g111_b4_n_0;
  wire g111_b5_n_0;
  wire g111_b6_n_0;
  wire g111_b7_n_0;
  wire g112_b0_n_0;
  wire g112_b1_n_0;
  wire g112_b2_n_0;
  wire g112_b3_n_0;
  wire g112_b4_n_0;
  wire g112_b5_n_0;
  wire g112_b6_n_0;
  wire g112_b7_n_0;
  wire g113_b0_n_0;
  wire g113_b1_n_0;
  wire g113_b2_n_0;
  wire g113_b3_n_0;
  wire g113_b4_n_0;
  wire g113_b5_n_0;
  wire g113_b6_n_0;
  wire g113_b7_n_0;
  wire g114_b0_n_0;
  wire g114_b1_n_0;
  wire g114_b2_n_0;
  wire g114_b3_n_0;
  wire g114_b4_n_0;
  wire g114_b5_n_0;
  wire g114_b6_n_0;
  wire g114_b7_n_0;
  wire g115_b0_n_0;
  wire g115_b1_n_0;
  wire g115_b2_n_0;
  wire g115_b3_n_0;
  wire g115_b4_n_0;
  wire g115_b5_n_0;
  wire g115_b6_n_0;
  wire g115_b7_n_0;
  wire g116_b0_n_0;
  wire g116_b1_n_0;
  wire g116_b2_n_0;
  wire g116_b3_n_0;
  wire g116_b4_n_0;
  wire g116_b5_n_0;
  wire g116_b6_n_0;
  wire g116_b7_n_0;
  wire g117_b0_n_0;
  wire g117_b1_n_0;
  wire g117_b2_n_0;
  wire g117_b3_n_0;
  wire g117_b4_n_0;
  wire g117_b5_n_0;
  wire g117_b6_n_0;
  wire g117_b7_n_0;
  wire g118_b0_n_0;
  wire g118_b1_n_0;
  wire g118_b2_n_0;
  wire g118_b3_n_0;
  wire g118_b4_n_0;
  wire g118_b5_n_0;
  wire g118_b6_n_0;
  wire g118_b7_n_0;
  wire g119_b0_n_0;
  wire g119_b1_n_0;
  wire g119_b2_n_0;
  wire g119_b3_n_0;
  wire g119_b4_n_0;
  wire g119_b5_n_0;
  wire g119_b6_n_0;
  wire g119_b7_n_0;
  wire g11_b0_n_0;
  wire g11_b1_n_0;
  wire g11_b2_n_0;
  wire g11_b3_n_0;
  wire g11_b4_n_0;
  wire g11_b5_n_0;
  wire g11_b6_n_0;
  wire g11_b7_n_0;
  wire g12_b0_n_0;
  wire g12_b1_n_0;
  wire g12_b2_n_0;
  wire g12_b3_n_0;
  wire g12_b4_n_0;
  wire g12_b5_n_0;
  wire g12_b6_n_0;
  wire g12_b7_n_0;
  wire g13_b0_n_0;
  wire g13_b1_n_0;
  wire g13_b2_n_0;
  wire g13_b3_n_0;
  wire g13_b4_n_0;
  wire g13_b5_n_0;
  wire g13_b6_n_0;
  wire g13_b7_n_0;
  wire g14_b0_n_0;
  wire g14_b1_n_0;
  wire g14_b2_n_0;
  wire g14_b3_n_0;
  wire g14_b4_n_0;
  wire g14_b5_n_0;
  wire g14_b6_n_0;
  wire g14_b7_n_0;
  wire g15_b0_n_0;
  wire g15_b1_n_0;
  wire g15_b2_n_0;
  wire g15_b3_n_0;
  wire g15_b4_n_0;
  wire g15_b5_n_0;
  wire g15_b6_n_0;
  wire g15_b7_n_0;
  wire g16_b0_n_0;
  wire g16_b1_n_0;
  wire g16_b2_n_0;
  wire g16_b3_n_0;
  wire g16_b4_n_0;
  wire g16_b5_n_0;
  wire g16_b6_n_0;
  wire g16_b7_n_0;
  wire g17_b0_n_0;
  wire g17_b1_n_0;
  wire g17_b2_n_0;
  wire g17_b3_n_0;
  wire g17_b4_n_0;
  wire g17_b5_n_0;
  wire g17_b6_n_0;
  wire g17_b7_n_0;
  wire g18_b0_n_0;
  wire g18_b1_n_0;
  wire g18_b2_n_0;
  wire g18_b3_n_0;
  wire g18_b4_n_0;
  wire g18_b5_n_0;
  wire g18_b6_n_0;
  wire g18_b7_n_0;
  wire g19_b0_n_0;
  wire g19_b1_n_0;
  wire g19_b2_n_0;
  wire g19_b3_n_0;
  wire g19_b4_n_0;
  wire g19_b5_n_0;
  wire g19_b6_n_0;
  wire g19_b7_n_0;
  wire g1_b0_n_0;
  wire g1_b1_n_0;
  wire g1_b2_n_0;
  wire g1_b3_n_0;
  wire g1_b4_n_0;
  wire g1_b5_n_0;
  wire g1_b6_n_0;
  wire g1_b7_n_0;
  wire g20_b0_n_0;
  wire g20_b1_n_0;
  wire g20_b2_n_0;
  wire g20_b3_n_0;
  wire g20_b4_n_0;
  wire g20_b5_n_0;
  wire g20_b6_n_0;
  wire g20_b7_n_0;
  wire g21_b0_n_0;
  wire g21_b1_n_0;
  wire g21_b2_n_0;
  wire g21_b3_n_0;
  wire g21_b4_n_0;
  wire g21_b5_n_0;
  wire g21_b6_n_0;
  wire g21_b7_n_0;
  wire g22_b0_n_0;
  wire g22_b1_n_0;
  wire g22_b2_n_0;
  wire g22_b3_n_0;
  wire g22_b4_n_0;
  wire g22_b5_n_0;
  wire g22_b6_n_0;
  wire g22_b7_n_0;
  wire g23_b0_n_0;
  wire g23_b1_n_0;
  wire g23_b2_n_0;
  wire g23_b3_n_0;
  wire g23_b4_n_0;
  wire g23_b5_n_0;
  wire g23_b6_n_0;
  wire g23_b7_n_0;
  wire g24_b0_n_0;
  wire g24_b1_n_0;
  wire g24_b2_n_0;
  wire g24_b3_n_0;
  wire g24_b4_n_0;
  wire g24_b5_n_0;
  wire g24_b6_n_0;
  wire g24_b7_n_0;
  wire g25_b0_n_0;
  wire g25_b1_n_0;
  wire g25_b2_n_0;
  wire g25_b3_n_0;
  wire g25_b4_n_0;
  wire g25_b5_n_0;
  wire g25_b6_n_0;
  wire g25_b7_n_0;
  wire g26_b0_n_0;
  wire g26_b1_n_0;
  wire g26_b2_n_0;
  wire g26_b3_n_0;
  wire g26_b4_n_0;
  wire g26_b5_n_0;
  wire g26_b6_n_0;
  wire g26_b7_n_0;
  wire g27_b0_n_0;
  wire g27_b1_n_0;
  wire g27_b2_n_0;
  wire g27_b3_n_0;
  wire g27_b4_n_0;
  wire g27_b5_n_0;
  wire g27_b6_n_0;
  wire g27_b7_n_0;
  wire g28_b0_n_0;
  wire g28_b1_n_0;
  wire g28_b2_n_0;
  wire g28_b3_n_0;
  wire g28_b4_n_0;
  wire g28_b5_n_0;
  wire g28_b6_n_0;
  wire g28_b7_n_0;
  wire g29_b0_n_0;
  wire g29_b1_n_0;
  wire g29_b2_n_0;
  wire g29_b3_n_0;
  wire g29_b4_n_0;
  wire g29_b5_n_0;
  wire g29_b6_n_0;
  wire g29_b7_n_0;
  wire g2_b0_n_0;
  wire g2_b1_n_0;
  wire g2_b2_n_0;
  wire g2_b3_n_0;
  wire g2_b4_n_0;
  wire g2_b5_n_0;
  wire g2_b6_n_0;
  wire g2_b7_n_0;
  wire g30_b0_n_0;
  wire g30_b1_n_0;
  wire g30_b2_n_0;
  wire g30_b3_n_0;
  wire g30_b4_n_0;
  wire g30_b5_n_0;
  wire g30_b6_n_0;
  wire g30_b7_n_0;
  wire g31_b0_n_0;
  wire g31_b1_n_0;
  wire g31_b2_n_0;
  wire g31_b3_n_0;
  wire g31_b4_n_0;
  wire g31_b5_n_0;
  wire g31_b6_n_0;
  wire g31_b7_n_0;
  wire g32_b0_n_0;
  wire g32_b1_n_0;
  wire g32_b2_n_0;
  wire g32_b3_n_0;
  wire g32_b4_n_0;
  wire g32_b5_n_0;
  wire g32_b6_n_0;
  wire g32_b7_n_0;
  wire g33_b0_n_0;
  wire g33_b1_n_0;
  wire g33_b2_n_0;
  wire g33_b3_n_0;
  wire g33_b4_n_0;
  wire g33_b5_n_0;
  wire g33_b6_n_0;
  wire g33_b7_n_0;
  wire g34_b0_n_0;
  wire g34_b1_n_0;
  wire g34_b2_n_0;
  wire g34_b3_n_0;
  wire g34_b4_n_0;
  wire g34_b5_n_0;
  wire g34_b6_n_0;
  wire g34_b7_n_0;
  wire g35_b0_n_0;
  wire g35_b1_n_0;
  wire g35_b2_n_0;
  wire g35_b3_n_0;
  wire g35_b4_n_0;
  wire g35_b5_n_0;
  wire g35_b6_n_0;
  wire g35_b7_n_0;
  wire g36_b0_n_0;
  wire g36_b1_n_0;
  wire g36_b2_n_0;
  wire g36_b3_n_0;
  wire g36_b4_n_0;
  wire g36_b5_n_0;
  wire g36_b6_n_0;
  wire g36_b7_n_0;
  wire g37_b0_n_0;
  wire g37_b1_n_0;
  wire g37_b2_n_0;
  wire g37_b3_n_0;
  wire g37_b4_n_0;
  wire g37_b5_n_0;
  wire g37_b6_n_0;
  wire g37_b7_n_0;
  wire g38_b0_n_0;
  wire g38_b1_n_0;
  wire g38_b2_n_0;
  wire g38_b3_n_0;
  wire g38_b4_n_0;
  wire g38_b5_n_0;
  wire g38_b6_n_0;
  wire g38_b7_n_0;
  wire g39_b0_n_0;
  wire g39_b1_n_0;
  wire g39_b2_n_0;
  wire g39_b3_n_0;
  wire g39_b4_n_0;
  wire g39_b5_n_0;
  wire g39_b6_n_0;
  wire g39_b7_n_0;
  wire g3_b0_n_0;
  wire g3_b1_n_0;
  wire g3_b2_n_0;
  wire g3_b3_n_0;
  wire g3_b4_n_0;
  wire g3_b5_n_0;
  wire g3_b6_n_0;
  wire g3_b7_n_0;
  wire g40_b0_n_0;
  wire g40_b1_n_0;
  wire g40_b2_n_0;
  wire g40_b3_n_0;
  wire g40_b4_n_0;
  wire g40_b5_n_0;
  wire g40_b6_n_0;
  wire g40_b7_n_0;
  wire g41_b0_n_0;
  wire g41_b1_n_0;
  wire g41_b2_n_0;
  wire g41_b3_n_0;
  wire g41_b4_n_0;
  wire g41_b5_n_0;
  wire g41_b6_n_0;
  wire g41_b7_n_0;
  wire g42_b0_n_0;
  wire g42_b1_n_0;
  wire g42_b2_n_0;
  wire g42_b3_n_0;
  wire g42_b4_n_0;
  wire g42_b5_n_0;
  wire g42_b6_n_0;
  wire g42_b7_n_0;
  wire g43_b0_n_0;
  wire g43_b1_n_0;
  wire g43_b2_n_0;
  wire g43_b3_n_0;
  wire g43_b4_n_0;
  wire g43_b5_n_0;
  wire g43_b6_n_0;
  wire g43_b7_n_0;
  wire g44_b0_n_0;
  wire g44_b1_n_0;
  wire g44_b2_n_0;
  wire g44_b3_n_0;
  wire g44_b4_n_0;
  wire g44_b5_n_0;
  wire g44_b6_n_0;
  wire g44_b7_n_0;
  wire g45_b0_n_0;
  wire g45_b1_n_0;
  wire g45_b2_n_0;
  wire g45_b3_n_0;
  wire g45_b4_n_0;
  wire g45_b5_n_0;
  wire g45_b6_n_0;
  wire g45_b7_n_0;
  wire g46_b0_n_0;
  wire g46_b1_n_0;
  wire g46_b2_n_0;
  wire g46_b3_n_0;
  wire g46_b4_n_0;
  wire g46_b5_n_0;
  wire g46_b6_n_0;
  wire g46_b7_n_0;
  wire g47_b0_n_0;
  wire g47_b1_n_0;
  wire g47_b2_n_0;
  wire g47_b3_n_0;
  wire g47_b4_n_0;
  wire g47_b5_n_0;
  wire g47_b6_n_0;
  wire g47_b7_n_0;
  wire g48_b0_n_0;
  wire g48_b1_n_0;
  wire g48_b2_n_0;
  wire g48_b3_n_0;
  wire g48_b4_n_0;
  wire g48_b5_n_0;
  wire g48_b6_n_0;
  wire g48_b7_n_0;
  wire g49_b0_n_0;
  wire g49_b1_n_0;
  wire g49_b2_n_0;
  wire g49_b3_n_0;
  wire g49_b4_n_0;
  wire g49_b5_n_0;
  wire g49_b6_n_0;
  wire g49_b7_n_0;
  wire g4_b0_n_0;
  wire g4_b1_n_0;
  wire g4_b2_n_0;
  wire g4_b3_n_0;
  wire g4_b4_n_0;
  wire g4_b5_n_0;
  wire g4_b6_n_0;
  wire g4_b7_n_0;
  wire g50_b0_n_0;
  wire g50_b1_n_0;
  wire g50_b2_n_0;
  wire g50_b3_n_0;
  wire g50_b4_n_0;
  wire g50_b5_n_0;
  wire g50_b6_n_0;
  wire g50_b7_n_0;
  wire g51_b0_n_0;
  wire g51_b1_n_0;
  wire g51_b2_n_0;
  wire g51_b3_n_0;
  wire g51_b4_n_0;
  wire g51_b5_n_0;
  wire g51_b6_n_0;
  wire g51_b7_n_0;
  wire g52_b0_n_0;
  wire g52_b1_n_0;
  wire g52_b2_n_0;
  wire g52_b3_n_0;
  wire g52_b4_n_0;
  wire g52_b5_n_0;
  wire g52_b6_n_0;
  wire g52_b7_n_0;
  wire g53_b0_n_0;
  wire g53_b1_n_0;
  wire g53_b2_n_0;
  wire g53_b3_n_0;
  wire g53_b4_n_0;
  wire g53_b5_n_0;
  wire g53_b6_n_0;
  wire g53_b7_n_0;
  wire g54_b0_n_0;
  wire g54_b1_n_0;
  wire g54_b2_n_0;
  wire g54_b3_n_0;
  wire g54_b4_n_0;
  wire g54_b5_n_0;
  wire g54_b6_n_0;
  wire g54_b7_n_0;
  wire g55_b0_n_0;
  wire g55_b1_n_0;
  wire g55_b2_n_0;
  wire g55_b3_n_0;
  wire g55_b4_n_0;
  wire g55_b5_n_0;
  wire g55_b6_n_0;
  wire g55_b7_n_0;
  wire g56_b0_n_0;
  wire g56_b1_n_0;
  wire g56_b2_n_0;
  wire g56_b3_n_0;
  wire g56_b4_n_0;
  wire g56_b5_n_0;
  wire g56_b6_n_0;
  wire g56_b7_n_0;
  wire g57_b0_n_0;
  wire g57_b1_n_0;
  wire g57_b2_n_0;
  wire g57_b3_n_0;
  wire g57_b4_n_0;
  wire g57_b5_n_0;
  wire g57_b6_n_0;
  wire g57_b7_n_0;
  wire g58_b0_n_0;
  wire g58_b1_n_0;
  wire g58_b2_n_0;
  wire g58_b3_n_0;
  wire g58_b4_n_0;
  wire g58_b5_n_0;
  wire g58_b6_n_0;
  wire g58_b7_n_0;
  wire g59_b0_n_0;
  wire g59_b1_n_0;
  wire g59_b2_n_0;
  wire g59_b3_n_0;
  wire g59_b4_n_0;
  wire g59_b5_n_0;
  wire g59_b6_n_0;
  wire g59_b7_n_0;
  wire g5_b0_n_0;
  wire g5_b1_n_0;
  wire g5_b2_n_0;
  wire g5_b3_n_0;
  wire g5_b4_n_0;
  wire g5_b5_n_0;
  wire g5_b6_n_0;
  wire g5_b7_n_0;
  wire g60_b0_n_0;
  wire g60_b1_n_0;
  wire g60_b2_n_0;
  wire g60_b3_n_0;
  wire g60_b4_n_0;
  wire g60_b5_n_0;
  wire g60_b6_n_0;
  wire g60_b7_n_0;
  wire g61_b0_n_0;
  wire g61_b1_n_0;
  wire g61_b2_n_0;
  wire g61_b3_n_0;
  wire g61_b4_n_0;
  wire g61_b5_n_0;
  wire g61_b6_n_0;
  wire g61_b7_n_0;
  wire g62_b0_n_0;
  wire g62_b1_n_0;
  wire g62_b2_n_0;
  wire g62_b3_n_0;
  wire g62_b4_n_0;
  wire g62_b5_n_0;
  wire g62_b6_n_0;
  wire g62_b7_n_0;
  wire g63_b0_n_0;
  wire g63_b1_n_0;
  wire g63_b2_n_0;
  wire g63_b3_n_0;
  wire g63_b4_n_0;
  wire g63_b5_n_0;
  wire g63_b6_n_0;
  wire g63_b7_n_0;
  wire g64_b0_n_0;
  wire g64_b1_n_0;
  wire g64_b2_n_0;
  wire g64_b3_n_0;
  wire g64_b4_n_0;
  wire g64_b5_n_0;
  wire g64_b6_n_0;
  wire g64_b7_n_0;
  wire g65_b0_n_0;
  wire g65_b1_n_0;
  wire g65_b2_n_0;
  wire g65_b3_n_0;
  wire g65_b4_n_0;
  wire g65_b5_n_0;
  wire g65_b6_n_0;
  wire g65_b7_n_0;
  wire g66_b0_n_0;
  wire g66_b1_n_0;
  wire g66_b2_n_0;
  wire g66_b3_n_0;
  wire g66_b4_n_0;
  wire g66_b5_n_0;
  wire g66_b6_n_0;
  wire g66_b7_n_0;
  wire g67_b0_n_0;
  wire g67_b1_n_0;
  wire g67_b2_n_0;
  wire g67_b3_n_0;
  wire g67_b4_n_0;
  wire g67_b5_n_0;
  wire g67_b6_n_0;
  wire g67_b7_n_0;
  wire g68_b0_n_0;
  wire g68_b1_n_0;
  wire g68_b2_n_0;
  wire g68_b3_n_0;
  wire g68_b4_n_0;
  wire g68_b5_n_0;
  wire g68_b6_n_0;
  wire g68_b7_n_0;
  wire g69_b0_n_0;
  wire g69_b1_n_0;
  wire g69_b2_n_0;
  wire g69_b3_n_0;
  wire g69_b4_n_0;
  wire g69_b5_n_0;
  wire g69_b6_n_0;
  wire g69_b7_n_0;
  wire g6_b0_n_0;
  wire g6_b1_n_0;
  wire g6_b2_n_0;
  wire g6_b3_n_0;
  wire g6_b4_n_0;
  wire g6_b5_n_0;
  wire g6_b6_n_0;
  wire g6_b7_n_0;
  wire g70_b0_n_0;
  wire g70_b1_n_0;
  wire g70_b2_n_0;
  wire g70_b3_n_0;
  wire g70_b4_n_0;
  wire g70_b5_n_0;
  wire g70_b6_n_0;
  wire g70_b7_n_0;
  wire g71_b0_n_0;
  wire g71_b1_n_0;
  wire g71_b2_n_0;
  wire g71_b3_n_0;
  wire g71_b4_n_0;
  wire g71_b5_n_0;
  wire g71_b6_n_0;
  wire g71_b7_n_0;
  wire g72_b0_n_0;
  wire g72_b1_n_0;
  wire g72_b2_n_0;
  wire g72_b3_n_0;
  wire g72_b4_n_0;
  wire g72_b5_n_0;
  wire g72_b6_n_0;
  wire g72_b7_n_0;
  wire g73_b0_n_0;
  wire g73_b1_n_0;
  wire g73_b2_n_0;
  wire g73_b3_n_0;
  wire g73_b4_n_0;
  wire g73_b5_n_0;
  wire g73_b6_n_0;
  wire g73_b7_n_0;
  wire g74_b0_n_0;
  wire g74_b1_n_0;
  wire g74_b2_n_0;
  wire g74_b3_n_0;
  wire g74_b4_n_0;
  wire g74_b5_n_0;
  wire g74_b6_n_0;
  wire g74_b7_n_0;
  wire g75_b0_n_0;
  wire g75_b1_n_0;
  wire g75_b2_n_0;
  wire g75_b3_n_0;
  wire g75_b4_n_0;
  wire g75_b5_n_0;
  wire g75_b6_n_0;
  wire g75_b7_n_0;
  wire g76_b0_n_0;
  wire g76_b1_n_0;
  wire g76_b2_n_0;
  wire g76_b3_n_0;
  wire g76_b4_n_0;
  wire g76_b5_n_0;
  wire g76_b6_n_0;
  wire g76_b7_n_0;
  wire g77_b0_n_0;
  wire g77_b1_n_0;
  wire g77_b2_n_0;
  wire g77_b3_n_0;
  wire g77_b4_n_0;
  wire g77_b5_n_0;
  wire g77_b6_n_0;
  wire g77_b7_n_0;
  wire g78_b0_n_0;
  wire g78_b1_n_0;
  wire g78_b2_n_0;
  wire g78_b3_n_0;
  wire g78_b4_n_0;
  wire g78_b5_n_0;
  wire g78_b6_n_0;
  wire g78_b7_n_0;
  wire g79_b0_n_0;
  wire g79_b1_n_0;
  wire g79_b2_n_0;
  wire g79_b3_n_0;
  wire g79_b4_n_0;
  wire g79_b5_n_0;
  wire g79_b6_n_0;
  wire g79_b7_n_0;
  wire g7_b0_n_0;
  wire g7_b1_n_0;
  wire g7_b2_n_0;
  wire g7_b3_n_0;
  wire g7_b4_n_0;
  wire g7_b5_n_0;
  wire g7_b6_n_0;
  wire g7_b7_n_0;
  wire g80_b0_n_0;
  wire g80_b1_n_0;
  wire g80_b2_n_0;
  wire g80_b3_n_0;
  wire g80_b4_n_0;
  wire g80_b5_n_0;
  wire g80_b6_n_0;
  wire g80_b7_n_0;
  wire g81_b0_n_0;
  wire g81_b1_n_0;
  wire g81_b2_n_0;
  wire g81_b3_n_0;
  wire g81_b4_n_0;
  wire g81_b5_n_0;
  wire g81_b6_n_0;
  wire g81_b7_n_0;
  wire g82_b0_n_0;
  wire g82_b1_n_0;
  wire g82_b2_n_0;
  wire g82_b3_n_0;
  wire g82_b4_n_0;
  wire g82_b5_n_0;
  wire g82_b6_n_0;
  wire g82_b7_n_0;
  wire g83_b0_n_0;
  wire g83_b1_n_0;
  wire g83_b2_n_0;
  wire g83_b3_n_0;
  wire g83_b4_n_0;
  wire g83_b5_n_0;
  wire g83_b6_n_0;
  wire g83_b7_n_0;
  wire g84_b0_n_0;
  wire g84_b1_n_0;
  wire g84_b2_n_0;
  wire g84_b3_n_0;
  wire g84_b4_n_0;
  wire g84_b5_n_0;
  wire g84_b6_n_0;
  wire g84_b7_n_0;
  wire g85_b0_n_0;
  wire g85_b1_n_0;
  wire g85_b2_n_0;
  wire g85_b3_n_0;
  wire g85_b4_n_0;
  wire g85_b5_n_0;
  wire g85_b6_n_0;
  wire g85_b7_n_0;
  wire g86_b0_n_0;
  wire g86_b1_n_0;
  wire g86_b2_n_0;
  wire g86_b3_n_0;
  wire g86_b4_n_0;
  wire g86_b5_n_0;
  wire g86_b6_n_0;
  wire g86_b7_n_0;
  wire g87_b0_n_0;
  wire g87_b1_n_0;
  wire g87_b2_n_0;
  wire g87_b3_n_0;
  wire g87_b4_n_0;
  wire g87_b5_n_0;
  wire g87_b6_n_0;
  wire g87_b7_n_0;
  wire g88_b0_n_0;
  wire g88_b1_n_0;
  wire g88_b2_n_0;
  wire g88_b3_n_0;
  wire g88_b4_n_0;
  wire g88_b5_n_0;
  wire g88_b6_n_0;
  wire g88_b7_n_0;
  wire g89_b0_n_0;
  wire g89_b1_n_0;
  wire g89_b2_n_0;
  wire g89_b3_n_0;
  wire g89_b4_n_0;
  wire g89_b5_n_0;
  wire g89_b6_n_0;
  wire g89_b7_n_0;
  wire g8_b0_n_0;
  wire g8_b1_n_0;
  wire g8_b2_n_0;
  wire g8_b3_n_0;
  wire g8_b4_n_0;
  wire g8_b5_n_0;
  wire g8_b6_n_0;
  wire g8_b7_n_0;
  wire g90_b0_n_0;
  wire g90_b1_n_0;
  wire g90_b2_n_0;
  wire g90_b3_n_0;
  wire g90_b4_n_0;
  wire g90_b5_n_0;
  wire g90_b6_n_0;
  wire g90_b7_n_0;
  wire g91_b0_n_0;
  wire g91_b1_n_0;
  wire g91_b2_n_0;
  wire g91_b3_n_0;
  wire g91_b4_n_0;
  wire g91_b5_n_0;
  wire g91_b6_n_0;
  wire g91_b7_n_0;
  wire g92_b0_n_0;
  wire g92_b1_n_0;
  wire g92_b2_n_0;
  wire g92_b3_n_0;
  wire g92_b4_n_0;
  wire g92_b5_n_0;
  wire g92_b6_n_0;
  wire g92_b7_n_0;
  wire g93_b0_n_0;
  wire g93_b1_n_0;
  wire g93_b2_n_0;
  wire g93_b3_n_0;
  wire g93_b4_n_0;
  wire g93_b5_n_0;
  wire g93_b6_n_0;
  wire g93_b7_n_0;
  wire g94_b0_n_0;
  wire g94_b1_n_0;
  wire g94_b2_n_0;
  wire g94_b3_n_0;
  wire g94_b4_n_0;
  wire g94_b5_n_0;
  wire g94_b6_n_0;
  wire g94_b7_n_0;
  wire g95_b0_n_0;
  wire g95_b1_n_0;
  wire g95_b2_n_0;
  wire g95_b3_n_0;
  wire g95_b4_n_0;
  wire g95_b5_n_0;
  wire g95_b6_n_0;
  wire g95_b7_n_0;
  wire g96_b0_n_0;
  wire g96_b1_n_0;
  wire g96_b2_n_0;
  wire g96_b3_n_0;
  wire g96_b4_n_0;
  wire g96_b5_n_0;
  wire g96_b6_n_0;
  wire g96_b7_n_0;
  wire g97_b0_n_0;
  wire g97_b1_n_0;
  wire g97_b2_n_0;
  wire g97_b3_n_0;
  wire g97_b4_n_0;
  wire g97_b5_n_0;
  wire g97_b6_n_0;
  wire g97_b7_n_0;
  wire g98_b0_n_0;
  wire g98_b1_n_0;
  wire g98_b2_n_0;
  wire g98_b3_n_0;
  wire g98_b4_n_0;
  wire g98_b5_n_0;
  wire g98_b6_n_0;
  wire g98_b7_n_0;
  wire g99_b0_n_0;
  wire g99_b1_n_0;
  wire g99_b2_n_0;
  wire g99_b3_n_0;
  wire g99_b4_n_0;
  wire g99_b5_n_0;
  wire g99_b6_n_0;
  wire g99_b7_n_0;
  wire g9_b0_n_0;
  wire g9_b1_n_0;
  wire g9_b2_n_0;
  wire g9_b3_n_0;
  wire g9_b4_n_0;
  wire g9_b5_n_0;
  wire g9_b6_n_0;
  wire g9_b7_n_0;
  wire [7:0]spo;
  wire \spo[0]_INST_0_i_10_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_17_n_0 ;
  wire \spo[0]_INST_0_i_18_n_0 ;
  wire \spo[0]_INST_0_i_19_n_0 ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_20_n_0 ;
  wire \spo[0]_INST_0_i_21_n_0 ;
  wire \spo[0]_INST_0_i_22_n_0 ;
  wire \spo[0]_INST_0_i_23_n_0 ;
  wire \spo[0]_INST_0_i_24_n_0 ;
  wire \spo[0]_INST_0_i_25_n_0 ;
  wire \spo[0]_INST_0_i_26_n_0 ;
  wire \spo[0]_INST_0_i_27_n_0 ;
  wire \spo[0]_INST_0_i_28_n_0 ;
  wire \spo[0]_INST_0_i_29_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_30_n_0 ;
  wire \spo[0]_INST_0_i_31_n_0 ;
  wire \spo[0]_INST_0_i_32_n_0 ;
  wire \spo[0]_INST_0_i_33_n_0 ;
  wire \spo[0]_INST_0_i_34_n_0 ;
  wire \spo[0]_INST_0_i_35_n_0 ;
  wire \spo[0]_INST_0_i_36_n_0 ;
  wire \spo[0]_INST_0_i_37_n_0 ;
  wire \spo[0]_INST_0_i_38_n_0 ;
  wire \spo[0]_INST_0_i_39_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_40_n_0 ;
  wire \spo[0]_INST_0_i_41_n_0 ;
  wire \spo[0]_INST_0_i_42_n_0 ;
  wire \spo[0]_INST_0_i_43_n_0 ;
  wire \spo[0]_INST_0_i_44_n_0 ;
  wire \spo[0]_INST_0_i_45_n_0 ;
  wire \spo[0]_INST_0_i_46_n_0 ;
  wire \spo[0]_INST_0_i_47_n_0 ;
  wire \spo[0]_INST_0_i_48_n_0 ;
  wire \spo[0]_INST_0_i_49_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_50_n_0 ;
  wire \spo[0]_INST_0_i_51_n_0 ;
  wire \spo[0]_INST_0_i_52_n_0 ;
  wire \spo[0]_INST_0_i_53_n_0 ;
  wire \spo[0]_INST_0_i_54_n_0 ;
  wire \spo[0]_INST_0_i_55_n_0 ;
  wire \spo[0]_INST_0_i_56_n_0 ;
  wire \spo[0]_INST_0_i_57_n_0 ;
  wire \spo[0]_INST_0_i_58_n_0 ;
  wire \spo[0]_INST_0_i_59_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_60_n_0 ;
  wire \spo[0]_INST_0_i_61_n_0 ;
  wire \spo[0]_INST_0_i_62_n_0 ;
  wire \spo[0]_INST_0_i_63_n_0 ;
  wire \spo[0]_INST_0_i_64_n_0 ;
  wire \spo[0]_INST_0_i_65_n_0 ;
  wire \spo[0]_INST_0_i_66_n_0 ;
  wire \spo[0]_INST_0_i_67_n_0 ;
  wire \spo[0]_INST_0_i_68_n_0 ;
  wire \spo[0]_INST_0_i_69_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_70_n_0 ;
  wire \spo[0]_INST_0_i_71_n_0 ;
  wire \spo[0]_INST_0_i_72_n_0 ;
  wire \spo[0]_INST_0_i_73_n_0 ;
  wire \spo[0]_INST_0_i_74_n_0 ;
  wire \spo[0]_INST_0_i_75_n_0 ;
  wire \spo[0]_INST_0_i_76_n_0 ;
  wire \spo[0]_INST_0_i_77_n_0 ;
  wire \spo[0]_INST_0_i_78_n_0 ;
  wire \spo[0]_INST_0_i_79_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_80_n_0 ;
  wire \spo[0]_INST_0_i_81_n_0 ;
  wire \spo[0]_INST_0_i_82_n_0 ;
  wire \spo[0]_INST_0_i_83_n_0 ;
  wire \spo[0]_INST_0_i_84_n_0 ;
  wire \spo[0]_INST_0_i_85_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[0]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_15_n_0 ;
  wire \spo[1]_INST_0_i_16_n_0 ;
  wire \spo[1]_INST_0_i_17_n_0 ;
  wire \spo[1]_INST_0_i_18_n_0 ;
  wire \spo[1]_INST_0_i_19_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_20_n_0 ;
  wire \spo[1]_INST_0_i_21_n_0 ;
  wire \spo[1]_INST_0_i_22_n_0 ;
  wire \spo[1]_INST_0_i_23_n_0 ;
  wire \spo[1]_INST_0_i_24_n_0 ;
  wire \spo[1]_INST_0_i_25_n_0 ;
  wire \spo[1]_INST_0_i_26_n_0 ;
  wire \spo[1]_INST_0_i_27_n_0 ;
  wire \spo[1]_INST_0_i_28_n_0 ;
  wire \spo[1]_INST_0_i_29_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_30_n_0 ;
  wire \spo[1]_INST_0_i_31_n_0 ;
  wire \spo[1]_INST_0_i_32_n_0 ;
  wire \spo[1]_INST_0_i_33_n_0 ;
  wire \spo[1]_INST_0_i_34_n_0 ;
  wire \spo[1]_INST_0_i_35_n_0 ;
  wire \spo[1]_INST_0_i_36_n_0 ;
  wire \spo[1]_INST_0_i_37_n_0 ;
  wire \spo[1]_INST_0_i_38_n_0 ;
  wire \spo[1]_INST_0_i_39_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_40_n_0 ;
  wire \spo[1]_INST_0_i_41_n_0 ;
  wire \spo[1]_INST_0_i_42_n_0 ;
  wire \spo[1]_INST_0_i_43_n_0 ;
  wire \spo[1]_INST_0_i_44_n_0 ;
  wire \spo[1]_INST_0_i_45_n_0 ;
  wire \spo[1]_INST_0_i_46_n_0 ;
  wire \spo[1]_INST_0_i_47_n_0 ;
  wire \spo[1]_INST_0_i_48_n_0 ;
  wire \spo[1]_INST_0_i_49_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_50_n_0 ;
  wire \spo[1]_INST_0_i_51_n_0 ;
  wire \spo[1]_INST_0_i_52_n_0 ;
  wire \spo[1]_INST_0_i_53_n_0 ;
  wire \spo[1]_INST_0_i_54_n_0 ;
  wire \spo[1]_INST_0_i_55_n_0 ;
  wire \spo[1]_INST_0_i_56_n_0 ;
  wire \spo[1]_INST_0_i_57_n_0 ;
  wire \spo[1]_INST_0_i_58_n_0 ;
  wire \spo[1]_INST_0_i_59_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_60_n_0 ;
  wire \spo[1]_INST_0_i_61_n_0 ;
  wire \spo[1]_INST_0_i_62_n_0 ;
  wire \spo[1]_INST_0_i_63_n_0 ;
  wire \spo[1]_INST_0_i_64_n_0 ;
  wire \spo[1]_INST_0_i_65_n_0 ;
  wire \spo[1]_INST_0_i_66_n_0 ;
  wire \spo[1]_INST_0_i_67_n_0 ;
  wire \spo[1]_INST_0_i_68_n_0 ;
  wire \spo[1]_INST_0_i_69_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_70_n_0 ;
  wire \spo[1]_INST_0_i_71_n_0 ;
  wire \spo[1]_INST_0_i_72_n_0 ;
  wire \spo[1]_INST_0_i_73_n_0 ;
  wire \spo[1]_INST_0_i_74_n_0 ;
  wire \spo[1]_INST_0_i_75_n_0 ;
  wire \spo[1]_INST_0_i_76_n_0 ;
  wire \spo[1]_INST_0_i_77_n_0 ;
  wire \spo[1]_INST_0_i_78_n_0 ;
  wire \spo[1]_INST_0_i_79_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_80_n_0 ;
  wire \spo[1]_INST_0_i_81_n_0 ;
  wire \spo[1]_INST_0_i_82_n_0 ;
  wire \spo[1]_INST_0_i_83_n_0 ;
  wire \spo[1]_INST_0_i_84_n_0 ;
  wire \spo[1]_INST_0_i_85_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_19_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_20_n_0 ;
  wire \spo[2]_INST_0_i_21_n_0 ;
  wire \spo[2]_INST_0_i_22_n_0 ;
  wire \spo[2]_INST_0_i_23_n_0 ;
  wire \spo[2]_INST_0_i_24_n_0 ;
  wire \spo[2]_INST_0_i_25_n_0 ;
  wire \spo[2]_INST_0_i_26_n_0 ;
  wire \spo[2]_INST_0_i_27_n_0 ;
  wire \spo[2]_INST_0_i_28_n_0 ;
  wire \spo[2]_INST_0_i_29_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_30_n_0 ;
  wire \spo[2]_INST_0_i_31_n_0 ;
  wire \spo[2]_INST_0_i_32_n_0 ;
  wire \spo[2]_INST_0_i_33_n_0 ;
  wire \spo[2]_INST_0_i_34_n_0 ;
  wire \spo[2]_INST_0_i_35_n_0 ;
  wire \spo[2]_INST_0_i_36_n_0 ;
  wire \spo[2]_INST_0_i_37_n_0 ;
  wire \spo[2]_INST_0_i_38_n_0 ;
  wire \spo[2]_INST_0_i_39_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_40_n_0 ;
  wire \spo[2]_INST_0_i_41_n_0 ;
  wire \spo[2]_INST_0_i_42_n_0 ;
  wire \spo[2]_INST_0_i_43_n_0 ;
  wire \spo[2]_INST_0_i_44_n_0 ;
  wire \spo[2]_INST_0_i_45_n_0 ;
  wire \spo[2]_INST_0_i_46_n_0 ;
  wire \spo[2]_INST_0_i_47_n_0 ;
  wire \spo[2]_INST_0_i_48_n_0 ;
  wire \spo[2]_INST_0_i_49_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_50_n_0 ;
  wire \spo[2]_INST_0_i_51_n_0 ;
  wire \spo[2]_INST_0_i_52_n_0 ;
  wire \spo[2]_INST_0_i_53_n_0 ;
  wire \spo[2]_INST_0_i_54_n_0 ;
  wire \spo[2]_INST_0_i_55_n_0 ;
  wire \spo[2]_INST_0_i_56_n_0 ;
  wire \spo[2]_INST_0_i_57_n_0 ;
  wire \spo[2]_INST_0_i_58_n_0 ;
  wire \spo[2]_INST_0_i_59_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_60_n_0 ;
  wire \spo[2]_INST_0_i_61_n_0 ;
  wire \spo[2]_INST_0_i_62_n_0 ;
  wire \spo[2]_INST_0_i_63_n_0 ;
  wire \spo[2]_INST_0_i_64_n_0 ;
  wire \spo[2]_INST_0_i_65_n_0 ;
  wire \spo[2]_INST_0_i_66_n_0 ;
  wire \spo[2]_INST_0_i_67_n_0 ;
  wire \spo[2]_INST_0_i_68_n_0 ;
  wire \spo[2]_INST_0_i_69_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_70_n_0 ;
  wire \spo[2]_INST_0_i_71_n_0 ;
  wire \spo[2]_INST_0_i_72_n_0 ;
  wire \spo[2]_INST_0_i_73_n_0 ;
  wire \spo[2]_INST_0_i_74_n_0 ;
  wire \spo[2]_INST_0_i_75_n_0 ;
  wire \spo[2]_INST_0_i_76_n_0 ;
  wire \spo[2]_INST_0_i_77_n_0 ;
  wire \spo[2]_INST_0_i_78_n_0 ;
  wire \spo[2]_INST_0_i_79_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_80_n_0 ;
  wire \spo[2]_INST_0_i_81_n_0 ;
  wire \spo[2]_INST_0_i_82_n_0 ;
  wire \spo[2]_INST_0_i_83_n_0 ;
  wire \spo[2]_INST_0_i_84_n_0 ;
  wire \spo[2]_INST_0_i_85_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_18_n_0 ;
  wire \spo[3]_INST_0_i_19_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_20_n_0 ;
  wire \spo[3]_INST_0_i_21_n_0 ;
  wire \spo[3]_INST_0_i_22_n_0 ;
  wire \spo[3]_INST_0_i_23_n_0 ;
  wire \spo[3]_INST_0_i_24_n_0 ;
  wire \spo[3]_INST_0_i_25_n_0 ;
  wire \spo[3]_INST_0_i_26_n_0 ;
  wire \spo[3]_INST_0_i_27_n_0 ;
  wire \spo[3]_INST_0_i_28_n_0 ;
  wire \spo[3]_INST_0_i_29_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_30_n_0 ;
  wire \spo[3]_INST_0_i_31_n_0 ;
  wire \spo[3]_INST_0_i_32_n_0 ;
  wire \spo[3]_INST_0_i_33_n_0 ;
  wire \spo[3]_INST_0_i_34_n_0 ;
  wire \spo[3]_INST_0_i_35_n_0 ;
  wire \spo[3]_INST_0_i_36_n_0 ;
  wire \spo[3]_INST_0_i_37_n_0 ;
  wire \spo[3]_INST_0_i_38_n_0 ;
  wire \spo[3]_INST_0_i_39_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_40_n_0 ;
  wire \spo[3]_INST_0_i_41_n_0 ;
  wire \spo[3]_INST_0_i_42_n_0 ;
  wire \spo[3]_INST_0_i_43_n_0 ;
  wire \spo[3]_INST_0_i_44_n_0 ;
  wire \spo[3]_INST_0_i_45_n_0 ;
  wire \spo[3]_INST_0_i_46_n_0 ;
  wire \spo[3]_INST_0_i_47_n_0 ;
  wire \spo[3]_INST_0_i_48_n_0 ;
  wire \spo[3]_INST_0_i_49_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_50_n_0 ;
  wire \spo[3]_INST_0_i_51_n_0 ;
  wire \spo[3]_INST_0_i_52_n_0 ;
  wire \spo[3]_INST_0_i_53_n_0 ;
  wire \spo[3]_INST_0_i_54_n_0 ;
  wire \spo[3]_INST_0_i_55_n_0 ;
  wire \spo[3]_INST_0_i_56_n_0 ;
  wire \spo[3]_INST_0_i_57_n_0 ;
  wire \spo[3]_INST_0_i_58_n_0 ;
  wire \spo[3]_INST_0_i_59_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_60_n_0 ;
  wire \spo[3]_INST_0_i_61_n_0 ;
  wire \spo[3]_INST_0_i_62_n_0 ;
  wire \spo[3]_INST_0_i_63_n_0 ;
  wire \spo[3]_INST_0_i_64_n_0 ;
  wire \spo[3]_INST_0_i_65_n_0 ;
  wire \spo[3]_INST_0_i_66_n_0 ;
  wire \spo[3]_INST_0_i_67_n_0 ;
  wire \spo[3]_INST_0_i_68_n_0 ;
  wire \spo[3]_INST_0_i_69_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_70_n_0 ;
  wire \spo[3]_INST_0_i_71_n_0 ;
  wire \spo[3]_INST_0_i_72_n_0 ;
  wire \spo[3]_INST_0_i_73_n_0 ;
  wire \spo[3]_INST_0_i_74_n_0 ;
  wire \spo[3]_INST_0_i_75_n_0 ;
  wire \spo[3]_INST_0_i_76_n_0 ;
  wire \spo[3]_INST_0_i_77_n_0 ;
  wire \spo[3]_INST_0_i_78_n_0 ;
  wire \spo[3]_INST_0_i_79_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_80_n_0 ;
  wire \spo[3]_INST_0_i_81_n_0 ;
  wire \spo[3]_INST_0_i_82_n_0 ;
  wire \spo[3]_INST_0_i_83_n_0 ;
  wire \spo[3]_INST_0_i_84_n_0 ;
  wire \spo[3]_INST_0_i_85_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_17_n_0 ;
  wire \spo[4]_INST_0_i_18_n_0 ;
  wire \spo[4]_INST_0_i_19_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_20_n_0 ;
  wire \spo[4]_INST_0_i_21_n_0 ;
  wire \spo[4]_INST_0_i_22_n_0 ;
  wire \spo[4]_INST_0_i_23_n_0 ;
  wire \spo[4]_INST_0_i_24_n_0 ;
  wire \spo[4]_INST_0_i_25_n_0 ;
  wire \spo[4]_INST_0_i_26_n_0 ;
  wire \spo[4]_INST_0_i_27_n_0 ;
  wire \spo[4]_INST_0_i_28_n_0 ;
  wire \spo[4]_INST_0_i_29_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_30_n_0 ;
  wire \spo[4]_INST_0_i_31_n_0 ;
  wire \spo[4]_INST_0_i_32_n_0 ;
  wire \spo[4]_INST_0_i_33_n_0 ;
  wire \spo[4]_INST_0_i_34_n_0 ;
  wire \spo[4]_INST_0_i_35_n_0 ;
  wire \spo[4]_INST_0_i_36_n_0 ;
  wire \spo[4]_INST_0_i_37_n_0 ;
  wire \spo[4]_INST_0_i_38_n_0 ;
  wire \spo[4]_INST_0_i_39_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_40_n_0 ;
  wire \spo[4]_INST_0_i_41_n_0 ;
  wire \spo[4]_INST_0_i_42_n_0 ;
  wire \spo[4]_INST_0_i_43_n_0 ;
  wire \spo[4]_INST_0_i_44_n_0 ;
  wire \spo[4]_INST_0_i_45_n_0 ;
  wire \spo[4]_INST_0_i_46_n_0 ;
  wire \spo[4]_INST_0_i_47_n_0 ;
  wire \spo[4]_INST_0_i_48_n_0 ;
  wire \spo[4]_INST_0_i_49_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_50_n_0 ;
  wire \spo[4]_INST_0_i_51_n_0 ;
  wire \spo[4]_INST_0_i_52_n_0 ;
  wire \spo[4]_INST_0_i_53_n_0 ;
  wire \spo[4]_INST_0_i_54_n_0 ;
  wire \spo[4]_INST_0_i_55_n_0 ;
  wire \spo[4]_INST_0_i_56_n_0 ;
  wire \spo[4]_INST_0_i_57_n_0 ;
  wire \spo[4]_INST_0_i_58_n_0 ;
  wire \spo[4]_INST_0_i_59_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_60_n_0 ;
  wire \spo[4]_INST_0_i_61_n_0 ;
  wire \spo[4]_INST_0_i_62_n_0 ;
  wire \spo[4]_INST_0_i_63_n_0 ;
  wire \spo[4]_INST_0_i_64_n_0 ;
  wire \spo[4]_INST_0_i_65_n_0 ;
  wire \spo[4]_INST_0_i_66_n_0 ;
  wire \spo[4]_INST_0_i_67_n_0 ;
  wire \spo[4]_INST_0_i_68_n_0 ;
  wire \spo[4]_INST_0_i_69_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_70_n_0 ;
  wire \spo[4]_INST_0_i_71_n_0 ;
  wire \spo[4]_INST_0_i_72_n_0 ;
  wire \spo[4]_INST_0_i_73_n_0 ;
  wire \spo[4]_INST_0_i_74_n_0 ;
  wire \spo[4]_INST_0_i_75_n_0 ;
  wire \spo[4]_INST_0_i_76_n_0 ;
  wire \spo[4]_INST_0_i_77_n_0 ;
  wire \spo[4]_INST_0_i_78_n_0 ;
  wire \spo[4]_INST_0_i_79_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_80_n_0 ;
  wire \spo[4]_INST_0_i_81_n_0 ;
  wire \spo[4]_INST_0_i_82_n_0 ;
  wire \spo[4]_INST_0_i_83_n_0 ;
  wire \spo[4]_INST_0_i_84_n_0 ;
  wire \spo[4]_INST_0_i_85_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_19_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_20_n_0 ;
  wire \spo[5]_INST_0_i_21_n_0 ;
  wire \spo[5]_INST_0_i_22_n_0 ;
  wire \spo[5]_INST_0_i_23_n_0 ;
  wire \spo[5]_INST_0_i_24_n_0 ;
  wire \spo[5]_INST_0_i_25_n_0 ;
  wire \spo[5]_INST_0_i_26_n_0 ;
  wire \spo[5]_INST_0_i_27_n_0 ;
  wire \spo[5]_INST_0_i_28_n_0 ;
  wire \spo[5]_INST_0_i_29_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_30_n_0 ;
  wire \spo[5]_INST_0_i_31_n_0 ;
  wire \spo[5]_INST_0_i_32_n_0 ;
  wire \spo[5]_INST_0_i_33_n_0 ;
  wire \spo[5]_INST_0_i_34_n_0 ;
  wire \spo[5]_INST_0_i_35_n_0 ;
  wire \spo[5]_INST_0_i_36_n_0 ;
  wire \spo[5]_INST_0_i_37_n_0 ;
  wire \spo[5]_INST_0_i_38_n_0 ;
  wire \spo[5]_INST_0_i_39_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_40_n_0 ;
  wire \spo[5]_INST_0_i_41_n_0 ;
  wire \spo[5]_INST_0_i_42_n_0 ;
  wire \spo[5]_INST_0_i_43_n_0 ;
  wire \spo[5]_INST_0_i_44_n_0 ;
  wire \spo[5]_INST_0_i_45_n_0 ;
  wire \spo[5]_INST_0_i_46_n_0 ;
  wire \spo[5]_INST_0_i_47_n_0 ;
  wire \spo[5]_INST_0_i_48_n_0 ;
  wire \spo[5]_INST_0_i_49_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_50_n_0 ;
  wire \spo[5]_INST_0_i_51_n_0 ;
  wire \spo[5]_INST_0_i_52_n_0 ;
  wire \spo[5]_INST_0_i_53_n_0 ;
  wire \spo[5]_INST_0_i_54_n_0 ;
  wire \spo[5]_INST_0_i_55_n_0 ;
  wire \spo[5]_INST_0_i_56_n_0 ;
  wire \spo[5]_INST_0_i_57_n_0 ;
  wire \spo[5]_INST_0_i_58_n_0 ;
  wire \spo[5]_INST_0_i_59_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_60_n_0 ;
  wire \spo[5]_INST_0_i_61_n_0 ;
  wire \spo[5]_INST_0_i_62_n_0 ;
  wire \spo[5]_INST_0_i_63_n_0 ;
  wire \spo[5]_INST_0_i_64_n_0 ;
  wire \spo[5]_INST_0_i_65_n_0 ;
  wire \spo[5]_INST_0_i_66_n_0 ;
  wire \spo[5]_INST_0_i_67_n_0 ;
  wire \spo[5]_INST_0_i_68_n_0 ;
  wire \spo[5]_INST_0_i_69_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_70_n_0 ;
  wire \spo[5]_INST_0_i_71_n_0 ;
  wire \spo[5]_INST_0_i_72_n_0 ;
  wire \spo[5]_INST_0_i_73_n_0 ;
  wire \spo[5]_INST_0_i_74_n_0 ;
  wire \spo[5]_INST_0_i_75_n_0 ;
  wire \spo[5]_INST_0_i_76_n_0 ;
  wire \spo[5]_INST_0_i_77_n_0 ;
  wire \spo[5]_INST_0_i_78_n_0 ;
  wire \spo[5]_INST_0_i_79_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_80_n_0 ;
  wire \spo[5]_INST_0_i_81_n_0 ;
  wire \spo[5]_INST_0_i_82_n_0 ;
  wire \spo[5]_INST_0_i_83_n_0 ;
  wire \spo[5]_INST_0_i_84_n_0 ;
  wire \spo[5]_INST_0_i_85_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_12_n_0 ;
  wire \spo[6]_INST_0_i_13_n_0 ;
  wire \spo[6]_INST_0_i_14_n_0 ;
  wire \spo[6]_INST_0_i_15_n_0 ;
  wire \spo[6]_INST_0_i_16_n_0 ;
  wire \spo[6]_INST_0_i_17_n_0 ;
  wire \spo[6]_INST_0_i_18_n_0 ;
  wire \spo[6]_INST_0_i_19_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_20_n_0 ;
  wire \spo[6]_INST_0_i_21_n_0 ;
  wire \spo[6]_INST_0_i_22_n_0 ;
  wire \spo[6]_INST_0_i_23_n_0 ;
  wire \spo[6]_INST_0_i_24_n_0 ;
  wire \spo[6]_INST_0_i_25_n_0 ;
  wire \spo[6]_INST_0_i_26_n_0 ;
  wire \spo[6]_INST_0_i_27_n_0 ;
  wire \spo[6]_INST_0_i_28_n_0 ;
  wire \spo[6]_INST_0_i_29_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_30_n_0 ;
  wire \spo[6]_INST_0_i_31_n_0 ;
  wire \spo[6]_INST_0_i_32_n_0 ;
  wire \spo[6]_INST_0_i_33_n_0 ;
  wire \spo[6]_INST_0_i_34_n_0 ;
  wire \spo[6]_INST_0_i_35_n_0 ;
  wire \spo[6]_INST_0_i_36_n_0 ;
  wire \spo[6]_INST_0_i_37_n_0 ;
  wire \spo[6]_INST_0_i_38_n_0 ;
  wire \spo[6]_INST_0_i_39_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_40_n_0 ;
  wire \spo[6]_INST_0_i_41_n_0 ;
  wire \spo[6]_INST_0_i_42_n_0 ;
  wire \spo[6]_INST_0_i_43_n_0 ;
  wire \spo[6]_INST_0_i_44_n_0 ;
  wire \spo[6]_INST_0_i_45_n_0 ;
  wire \spo[6]_INST_0_i_46_n_0 ;
  wire \spo[6]_INST_0_i_47_n_0 ;
  wire \spo[6]_INST_0_i_48_n_0 ;
  wire \spo[6]_INST_0_i_49_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_50_n_0 ;
  wire \spo[6]_INST_0_i_51_n_0 ;
  wire \spo[6]_INST_0_i_52_n_0 ;
  wire \spo[6]_INST_0_i_53_n_0 ;
  wire \spo[6]_INST_0_i_54_n_0 ;
  wire \spo[6]_INST_0_i_55_n_0 ;
  wire \spo[6]_INST_0_i_56_n_0 ;
  wire \spo[6]_INST_0_i_57_n_0 ;
  wire \spo[6]_INST_0_i_58_n_0 ;
  wire \spo[6]_INST_0_i_59_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_60_n_0 ;
  wire \spo[6]_INST_0_i_61_n_0 ;
  wire \spo[6]_INST_0_i_62_n_0 ;
  wire \spo[6]_INST_0_i_63_n_0 ;
  wire \spo[6]_INST_0_i_64_n_0 ;
  wire \spo[6]_INST_0_i_65_n_0 ;
  wire \spo[6]_INST_0_i_66_n_0 ;
  wire \spo[6]_INST_0_i_67_n_0 ;
  wire \spo[6]_INST_0_i_68_n_0 ;
  wire \spo[6]_INST_0_i_69_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_70_n_0 ;
  wire \spo[6]_INST_0_i_71_n_0 ;
  wire \spo[6]_INST_0_i_72_n_0 ;
  wire \spo[6]_INST_0_i_73_n_0 ;
  wire \spo[6]_INST_0_i_74_n_0 ;
  wire \spo[6]_INST_0_i_75_n_0 ;
  wire \spo[6]_INST_0_i_76_n_0 ;
  wire \spo[6]_INST_0_i_77_n_0 ;
  wire \spo[6]_INST_0_i_78_n_0 ;
  wire \spo[6]_INST_0_i_79_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_80_n_0 ;
  wire \spo[6]_INST_0_i_81_n_0 ;
  wire \spo[6]_INST_0_i_82_n_0 ;
  wire \spo[6]_INST_0_i_83_n_0 ;
  wire \spo[6]_INST_0_i_84_n_0 ;
  wire \spo[6]_INST_0_i_85_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[7]_INST_0_i_10_n_0 ;
  wire \spo[7]_INST_0_i_11_n_0 ;
  wire \spo[7]_INST_0_i_12_n_0 ;
  wire \spo[7]_INST_0_i_13_n_0 ;
  wire \spo[7]_INST_0_i_14_n_0 ;
  wire \spo[7]_INST_0_i_15_n_0 ;
  wire \spo[7]_INST_0_i_16_n_0 ;
  wire \spo[7]_INST_0_i_17_n_0 ;
  wire \spo[7]_INST_0_i_18_n_0 ;
  wire \spo[7]_INST_0_i_19_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_20_n_0 ;
  wire \spo[7]_INST_0_i_21_n_0 ;
  wire \spo[7]_INST_0_i_22_n_0 ;
  wire \spo[7]_INST_0_i_23_n_0 ;
  wire \spo[7]_INST_0_i_24_n_0 ;
  wire \spo[7]_INST_0_i_25_n_0 ;
  wire \spo[7]_INST_0_i_26_n_0 ;
  wire \spo[7]_INST_0_i_27_n_0 ;
  wire \spo[7]_INST_0_i_28_n_0 ;
  wire \spo[7]_INST_0_i_29_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_30_n_0 ;
  wire \spo[7]_INST_0_i_31_n_0 ;
  wire \spo[7]_INST_0_i_32_n_0 ;
  wire \spo[7]_INST_0_i_33_n_0 ;
  wire \spo[7]_INST_0_i_34_n_0 ;
  wire \spo[7]_INST_0_i_35_n_0 ;
  wire \spo[7]_INST_0_i_36_n_0 ;
  wire \spo[7]_INST_0_i_37_n_0 ;
  wire \spo[7]_INST_0_i_38_n_0 ;
  wire \spo[7]_INST_0_i_39_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_40_n_0 ;
  wire \spo[7]_INST_0_i_41_n_0 ;
  wire \spo[7]_INST_0_i_42_n_0 ;
  wire \spo[7]_INST_0_i_43_n_0 ;
  wire \spo[7]_INST_0_i_44_n_0 ;
  wire \spo[7]_INST_0_i_45_n_0 ;
  wire \spo[7]_INST_0_i_46_n_0 ;
  wire \spo[7]_INST_0_i_47_n_0 ;
  wire \spo[7]_INST_0_i_48_n_0 ;
  wire \spo[7]_INST_0_i_49_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_50_n_0 ;
  wire \spo[7]_INST_0_i_51_n_0 ;
  wire \spo[7]_INST_0_i_52_n_0 ;
  wire \spo[7]_INST_0_i_53_n_0 ;
  wire \spo[7]_INST_0_i_54_n_0 ;
  wire \spo[7]_INST_0_i_55_n_0 ;
  wire \spo[7]_INST_0_i_56_n_0 ;
  wire \spo[7]_INST_0_i_57_n_0 ;
  wire \spo[7]_INST_0_i_58_n_0 ;
  wire \spo[7]_INST_0_i_59_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_60_n_0 ;
  wire \spo[7]_INST_0_i_61_n_0 ;
  wire \spo[7]_INST_0_i_62_n_0 ;
  wire \spo[7]_INST_0_i_63_n_0 ;
  wire \spo[7]_INST_0_i_64_n_0 ;
  wire \spo[7]_INST_0_i_65_n_0 ;
  wire \spo[7]_INST_0_i_66_n_0 ;
  wire \spo[7]_INST_0_i_67_n_0 ;
  wire \spo[7]_INST_0_i_68_n_0 ;
  wire \spo[7]_INST_0_i_69_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_70_n_0 ;
  wire \spo[7]_INST_0_i_71_n_0 ;
  wire \spo[7]_INST_0_i_72_n_0 ;
  wire \spo[7]_INST_0_i_73_n_0 ;
  wire \spo[7]_INST_0_i_74_n_0 ;
  wire \spo[7]_INST_0_i_75_n_0 ;
  wire \spo[7]_INST_0_i_76_n_0 ;
  wire \spo[7]_INST_0_i_77_n_0 ;
  wire \spo[7]_INST_0_i_78_n_0 ;
  wire \spo[7]_INST_0_i_79_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_80_n_0 ;
  wire \spo[7]_INST_0_i_81_n_0 ;
  wire \spo[7]_INST_0_i_82_n_0 ;
  wire \spo[7]_INST_0_i_83_n_0 ;
  wire \spo[7]_INST_0_i_84_n_0 ;
  wire \spo[7]_INST_0_i_85_n_0 ;
  wire \spo[7]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_9_n_0 ;

  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h17CCED815032EBB2)) 
    g0_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h1F6BDDEE48291974)) 
    g0_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'hCC9FCC709D2E53B9)) 
    g0_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h1838B04FD9C423EF)) 
    g0_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h4E964EE532F268B0)) 
    g0_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'h87404F0A65375836)) 
    g0_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'hEB1A02D00A4B4648)) 
    g0_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h2E90FCDF15DA9AE6)) 
    g0_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'hC144D4B14F107F8F)) 
    g100_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g100_b0_n_0));
  LUT6 #(
    .INIT(64'h6A4F71FE723BE14D)) 
    g100_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g100_b1_n_0));
  LUT6 #(
    .INIT(64'hF646E4255F9B44FE)) 
    g100_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g100_b2_n_0));
  LUT6 #(
    .INIT(64'h4D1F4B7366E5BC65)) 
    g100_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g100_b3_n_0));
  LUT6 #(
    .INIT(64'h4D1B7DE68E6319FD)) 
    g100_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g100_b4_n_0));
  LUT6 #(
    .INIT(64'h74AC95657B7AE9D3)) 
    g100_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g100_b5_n_0));
  LUT6 #(
    .INIT(64'h02962E86295C572A)) 
    g100_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g100_b6_n_0));
  LUT6 #(
    .INIT(64'hB5357A225F3B2830)) 
    g100_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g100_b7_n_0));
  LUT6 #(
    .INIT(64'h172F685EF5FAA856)) 
    g101_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g101_b0_n_0));
  LUT6 #(
    .INIT(64'h17B606C983AF9F09)) 
    g101_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g101_b1_n_0));
  LUT6 #(
    .INIT(64'hB2B805E6D897A9CC)) 
    g101_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g101_b2_n_0));
  LUT6 #(
    .INIT(64'h5860E1B3E6D9CB28)) 
    g101_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g101_b3_n_0));
  LUT6 #(
    .INIT(64'h8F1E340161ACE15D)) 
    g101_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g101_b4_n_0));
  LUT6 #(
    .INIT(64'h151C54EF88079B49)) 
    g101_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g101_b5_n_0));
  LUT6 #(
    .INIT(64'h5213DAFA6CA2430B)) 
    g101_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g101_b6_n_0));
  LUT6 #(
    .INIT(64'h1431CE16A6B79FEF)) 
    g101_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g101_b7_n_0));
  LUT6 #(
    .INIT(64'hDA043C4F08F81B26)) 
    g102_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g102_b0_n_0));
  LUT6 #(
    .INIT(64'h481E44BFA77BE8CC)) 
    g102_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g102_b1_n_0));
  LUT6 #(
    .INIT(64'h00B0E54D17E683E1)) 
    g102_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g102_b2_n_0));
  LUT6 #(
    .INIT(64'h808BCAFB13E7E3B5)) 
    g102_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g102_b3_n_0));
  LUT6 #(
    .INIT(64'hC47C3E5F9C36F243)) 
    g102_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g102_b4_n_0));
  LUT6 #(
    .INIT(64'h539EBA53DFDB94F0)) 
    g102_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g102_b5_n_0));
  LUT6 #(
    .INIT(64'h64D1D993731AE566)) 
    g102_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g102_b6_n_0));
  LUT6 #(
    .INIT(64'h8C32952E30F5DA9A)) 
    g102_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g102_b7_n_0));
  LUT6 #(
    .INIT(64'h84BD33DED3F32D4B)) 
    g103_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g103_b0_n_0));
  LUT6 #(
    .INIT(64'h19CD510228A80DBF)) 
    g103_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g103_b1_n_0));
  LUT6 #(
    .INIT(64'h79502EF6FA6FDBB8)) 
    g103_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g103_b2_n_0));
  LUT6 #(
    .INIT(64'h52A5FD3041AABBFA)) 
    g103_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g103_b3_n_0));
  LUT6 #(
    .INIT(64'h92EBC17A1055DF50)) 
    g103_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g103_b4_n_0));
  LUT6 #(
    .INIT(64'hE12B351312CC4866)) 
    g103_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g103_b5_n_0));
  LUT6 #(
    .INIT(64'h974BB4DBF6E0B631)) 
    g103_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g103_b6_n_0));
  LUT6 #(
    .INIT(64'h1952EC6A35CE3517)) 
    g103_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g103_b7_n_0));
  LUT6 #(
    .INIT(64'hBC4C6F30FE59491C)) 
    g104_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g104_b0_n_0));
  LUT6 #(
    .INIT(64'hDC82ACD901ECE0B3)) 
    g104_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g104_b1_n_0));
  LUT6 #(
    .INIT(64'hC81A8731EBA72129)) 
    g104_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g104_b2_n_0));
  LUT6 #(
    .INIT(64'h23FA750914FA271A)) 
    g104_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g104_b3_n_0));
  LUT6 #(
    .INIT(64'h25209F67D4F598D8)) 
    g104_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g104_b4_n_0));
  LUT6 #(
    .INIT(64'hE3AB0B35E54ECF31)) 
    g104_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g104_b5_n_0));
  LUT6 #(
    .INIT(64'hAAEF1B0999329495)) 
    g104_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g104_b6_n_0));
  LUT6 #(
    .INIT(64'hA3E0D471C1AB92DC)) 
    g104_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g104_b7_n_0));
  LUT6 #(
    .INIT(64'h9ACECA91E6E9EF3B)) 
    g105_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g105_b0_n_0));
  LUT6 #(
    .INIT(64'h973A8C9899510CE7)) 
    g105_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g105_b1_n_0));
  LUT6 #(
    .INIT(64'hC2516E1E860FEA62)) 
    g105_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g105_b2_n_0));
  LUT6 #(
    .INIT(64'hFBD8F8BBB1751B4F)) 
    g105_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g105_b3_n_0));
  LUT6 #(
    .INIT(64'hDE615AC955648333)) 
    g105_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g105_b4_n_0));
  LUT6 #(
    .INIT(64'h88A553ADC2FB5718)) 
    g105_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g105_b5_n_0));
  LUT6 #(
    .INIT(64'h7ABEA7BC7D92005B)) 
    g105_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g105_b6_n_0));
  LUT6 #(
    .INIT(64'hF31E01FBFB7BFB50)) 
    g105_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g105_b7_n_0));
  LUT6 #(
    .INIT(64'h27B3EFEA000A5693)) 
    g106_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g106_b0_n_0));
  LUT6 #(
    .INIT(64'hB1CEEAF1289EDB23)) 
    g106_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g106_b1_n_0));
  LUT6 #(
    .INIT(64'h57713B83BE9FCFBA)) 
    g106_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g106_b2_n_0));
  LUT6 #(
    .INIT(64'h64924F351BC4847A)) 
    g106_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g106_b3_n_0));
  LUT6 #(
    .INIT(64'h52269553AFF1ED46)) 
    g106_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g106_b4_n_0));
  LUT6 #(
    .INIT(64'h2BD87E22AEC40D73)) 
    g106_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g106_b5_n_0));
  LUT6 #(
    .INIT(64'h2567431DBA6293F5)) 
    g106_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g106_b6_n_0));
  LUT6 #(
    .INIT(64'h14849EEBA03CB021)) 
    g106_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g106_b7_n_0));
  LUT6 #(
    .INIT(64'hA4B1F4101163EB0B)) 
    g107_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g107_b0_n_0));
  LUT6 #(
    .INIT(64'h62C1867DF8D6BB7D)) 
    g107_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g107_b1_n_0));
  LUT6 #(
    .INIT(64'h52457961D356CDB0)) 
    g107_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g107_b2_n_0));
  LUT6 #(
    .INIT(64'hB1434AEF29422477)) 
    g107_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g107_b3_n_0));
  LUT6 #(
    .INIT(64'h4091B52FE7C38A30)) 
    g107_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g107_b4_n_0));
  LUT6 #(
    .INIT(64'h137F1FDC46F7B382)) 
    g107_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g107_b5_n_0));
  LUT6 #(
    .INIT(64'hBEDE321DC08F363F)) 
    g107_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g107_b6_n_0));
  LUT6 #(
    .INIT(64'hEBE92454929506F4)) 
    g107_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g107_b7_n_0));
  LUT6 #(
    .INIT(64'hC68455457AC6B1F8)) 
    g108_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g108_b0_n_0));
  LUT6 #(
    .INIT(64'h8FDA03F9DDEF5492)) 
    g108_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g108_b1_n_0));
  LUT6 #(
    .INIT(64'h498D4E91C85DC930)) 
    g108_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g108_b2_n_0));
  LUT6 #(
    .INIT(64'h34A093C2FB7F9870)) 
    g108_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g108_b3_n_0));
  LUT6 #(
    .INIT(64'h7CE985C7214AC2D6)) 
    g108_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g108_b4_n_0));
  LUT6 #(
    .INIT(64'h0668C24B46DC81F2)) 
    g108_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g108_b5_n_0));
  LUT6 #(
    .INIT(64'hCD8500553216CA8C)) 
    g108_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g108_b6_n_0));
  LUT6 #(
    .INIT(64'h0B8460E56EE26638)) 
    g108_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g108_b7_n_0));
  LUT6 #(
    .INIT(64'h4C1D24B3C7F934C4)) 
    g109_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g109_b0_n_0));
  LUT6 #(
    .INIT(64'h957029DC8969F536)) 
    g109_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g109_b1_n_0));
  LUT6 #(
    .INIT(64'hF14F94AA636FCCA8)) 
    g109_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g109_b2_n_0));
  LUT6 #(
    .INIT(64'hA3D0E3464A0C6C2A)) 
    g109_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g109_b3_n_0));
  LUT6 #(
    .INIT(64'h4BD778D2A2200ECA)) 
    g109_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g109_b4_n_0));
  LUT6 #(
    .INIT(64'hC0F74FBAD041546C)) 
    g109_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g109_b5_n_0));
  LUT6 #(
    .INIT(64'h510BB754D68CF28D)) 
    g109_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g109_b6_n_0));
  LUT6 #(
    .INIT(64'hF51D622C6505C14A)) 
    g109_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g109_b7_n_0));
  LUT6 #(
    .INIT(64'h15FAB7B456C1D56A)) 
    g10_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b0_n_0));
  LUT6 #(
    .INIT(64'hC4CFB32A84150F06)) 
    g10_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b1_n_0));
  LUT6 #(
    .INIT(64'h5642A008794245A4)) 
    g10_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b2_n_0));
  LUT6 #(
    .INIT(64'h1CB343DD37C9B794)) 
    g10_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b3_n_0));
  LUT6 #(
    .INIT(64'h8709A7AAC65D4DB2)) 
    g10_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b4_n_0));
  LUT6 #(
    .INIT(64'hC974BC51C63D99DC)) 
    g10_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b5_n_0));
  LUT6 #(
    .INIT(64'h0834F998F9CCFC23)) 
    g10_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b6_n_0));
  LUT6 #(
    .INIT(64'h3D43EE61BF642DFD)) 
    g10_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g10_b7_n_0));
  LUT6 #(
    .INIT(64'hF632EED520968438)) 
    g110_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g110_b0_n_0));
  LUT6 #(
    .INIT(64'hE8B0B01EF24392D1)) 
    g110_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g110_b1_n_0));
  LUT6 #(
    .INIT(64'hAF2C9E99736DE688)) 
    g110_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g110_b2_n_0));
  LUT6 #(
    .INIT(64'h6D04A25EF62427F0)) 
    g110_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g110_b3_n_0));
  LUT6 #(
    .INIT(64'hB237B35C9540A936)) 
    g110_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g110_b4_n_0));
  LUT6 #(
    .INIT(64'h3EB2C6B1A4CAC9ED)) 
    g110_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g110_b5_n_0));
  LUT6 #(
    .INIT(64'hE6FA5E07D57530B7)) 
    g110_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g110_b6_n_0));
  LUT6 #(
    .INIT(64'h320206DA3466E394)) 
    g110_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g110_b7_n_0));
  LUT6 #(
    .INIT(64'h416E422FAFAE043B)) 
    g111_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g111_b0_n_0));
  LUT6 #(
    .INIT(64'h568268301B4E10F2)) 
    g111_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g111_b1_n_0));
  LUT6 #(
    .INIT(64'hB57AE9304052B735)) 
    g111_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g111_b2_n_0));
  LUT6 #(
    .INIT(64'h63ACC3909452E99D)) 
    g111_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g111_b3_n_0));
  LUT6 #(
    .INIT(64'hE9DB0DA03000E4A5)) 
    g111_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g111_b4_n_0));
  LUT6 #(
    .INIT(64'hE636FD59FDDB9E0E)) 
    g111_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g111_b5_n_0));
  LUT6 #(
    .INIT(64'h4B430B79A0909A20)) 
    g111_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g111_b6_n_0));
  LUT6 #(
    .INIT(64'h40F7F8C455212394)) 
    g111_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g111_b7_n_0));
  LUT6 #(
    .INIT(64'hEBDDF74590FAE0F0)) 
    g112_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g112_b0_n_0));
  LUT6 #(
    .INIT(64'h1058CF29A7066690)) 
    g112_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g112_b1_n_0));
  LUT6 #(
    .INIT(64'h832AFAA65AC0EFE9)) 
    g112_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g112_b2_n_0));
  LUT6 #(
    .INIT(64'h485523D6B6B5A5C8)) 
    g112_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g112_b3_n_0));
  LUT6 #(
    .INIT(64'h29013666C0C98BC0)) 
    g112_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g112_b4_n_0));
  LUT6 #(
    .INIT(64'hC4E5331D2D668E7B)) 
    g112_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g112_b5_n_0));
  LUT6 #(
    .INIT(64'h2D5B9F14A0EEEB7D)) 
    g112_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g112_b6_n_0));
  LUT6 #(
    .INIT(64'h2AC0AC28E7ADB70E)) 
    g112_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g112_b7_n_0));
  LUT6 #(
    .INIT(64'hD98B5D4E9587AE54)) 
    g113_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g113_b0_n_0));
  LUT6 #(
    .INIT(64'h2E4CC4A93E7CAB8D)) 
    g113_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g113_b1_n_0));
  LUT6 #(
    .INIT(64'h40A65D36FDE017C3)) 
    g113_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g113_b2_n_0));
  LUT6 #(
    .INIT(64'hB9582F4E309330BB)) 
    g113_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g113_b3_n_0));
  LUT6 #(
    .INIT(64'hF2673DAC6014E0F0)) 
    g113_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g113_b4_n_0));
  LUT6 #(
    .INIT(64'h6CCE17FFED0C2984)) 
    g113_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g113_b5_n_0));
  LUT6 #(
    .INIT(64'hDF1039C8960B936E)) 
    g113_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g113_b6_n_0));
  LUT6 #(
    .INIT(64'h7B9843F13894A220)) 
    g113_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g113_b7_n_0));
  LUT6 #(
    .INIT(64'h369A67FE440A336A)) 
    g114_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g114_b0_n_0));
  LUT6 #(
    .INIT(64'h5667CB6F92CE7947)) 
    g114_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g114_b1_n_0));
  LUT6 #(
    .INIT(64'h8CAD5D68034BDDFC)) 
    g114_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g114_b2_n_0));
  LUT6 #(
    .INIT(64'h841B387737EE2017)) 
    g114_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g114_b3_n_0));
  LUT6 #(
    .INIT(64'hAD93485E1128CF30)) 
    g114_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g114_b4_n_0));
  LUT6 #(
    .INIT(64'h6F86BAB8A4B05961)) 
    g114_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g114_b5_n_0));
  LUT6 #(
    .INIT(64'h536FE81EBC062EED)) 
    g114_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g114_b6_n_0));
  LUT6 #(
    .INIT(64'h8FED24DA13117058)) 
    g114_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g114_b7_n_0));
  LUT6 #(
    .INIT(64'h6D33E5DBAAC3789E)) 
    g115_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g115_b0_n_0));
  LUT6 #(
    .INIT(64'hD0C5A85BA2A5A82D)) 
    g115_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g115_b1_n_0));
  LUT6 #(
    .INIT(64'h8D23B1F4C82AC710)) 
    g115_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g115_b2_n_0));
  LUT6 #(
    .INIT(64'hFD9C5191A340C03B)) 
    g115_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g115_b3_n_0));
  LUT6 #(
    .INIT(64'hC4655D1AF4425912)) 
    g115_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g115_b4_n_0));
  LUT6 #(
    .INIT(64'h7BC85D83ECDAA60E)) 
    g115_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g115_b5_n_0));
  LUT6 #(
    .INIT(64'hBB06E39B8321EBE6)) 
    g115_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g115_b6_n_0));
  LUT6 #(
    .INIT(64'hE81115BC76F620A0)) 
    g115_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g115_b7_n_0));
  LUT6 #(
    .INIT(64'h531423A802F2F9E7)) 
    g116_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g116_b0_n_0));
  LUT6 #(
    .INIT(64'h5D264A995A081D53)) 
    g116_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g116_b1_n_0));
  LUT6 #(
    .INIT(64'hE36849BD2ABB07CD)) 
    g116_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g116_b2_n_0));
  LUT6 #(
    .INIT(64'hF632E086641C8882)) 
    g116_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g116_b3_n_0));
  LUT6 #(
    .INIT(64'h748B0612706DA721)) 
    g116_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g116_b4_n_0));
  LUT6 #(
    .INIT(64'h0FFF4F562A118286)) 
    g116_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g116_b5_n_0));
  LUT6 #(
    .INIT(64'h9DE1461E6EA89B9B)) 
    g116_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g116_b6_n_0));
  LUT6 #(
    .INIT(64'h7529C042A1213FDE)) 
    g116_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g116_b7_n_0));
  LUT6 #(
    .INIT(64'h685726779369D148)) 
    g117_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g117_b0_n_0));
  LUT6 #(
    .INIT(64'h427D47AB6BD89BD4)) 
    g117_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g117_b1_n_0));
  LUT6 #(
    .INIT(64'h0F8E423A78226377)) 
    g117_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g117_b2_n_0));
  LUT6 #(
    .INIT(64'h50FA4F8A13B0D822)) 
    g117_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g117_b3_n_0));
  LUT6 #(
    .INIT(64'h2BBE5FD86F47663E)) 
    g117_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g117_b4_n_0));
  LUT6 #(
    .INIT(64'hF041A70A3AE03076)) 
    g117_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g117_b5_n_0));
  LUT6 #(
    .INIT(64'hB3E3DA576E87325E)) 
    g117_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g117_b6_n_0));
  LUT6 #(
    .INIT(64'h4F598F1DF2186EA2)) 
    g117_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g117_b7_n_0));
  LUT6 #(
    .INIT(64'h0A0FB32D22A02ECF)) 
    g118_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g118_b0_n_0));
  LUT6 #(
    .INIT(64'hCB79D195550611BF)) 
    g118_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g118_b1_n_0));
  LUT6 #(
    .INIT(64'h38C42C158ED9F5ED)) 
    g118_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g118_b2_n_0));
  LUT6 #(
    .INIT(64'hF2F32E8DB59336B1)) 
    g118_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g118_b3_n_0));
  LUT6 #(
    .INIT(64'hCCCBBED29663EBB6)) 
    g118_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g118_b4_n_0));
  LUT6 #(
    .INIT(64'hF5BB3E1492CF5FE1)) 
    g118_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g118_b5_n_0));
  LUT6 #(
    .INIT(64'h73B4295B2196D022)) 
    g118_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g118_b6_n_0));
  LUT6 #(
    .INIT(64'hCCF7815D24B340FF)) 
    g118_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g118_b7_n_0));
  LUT6 #(
    .INIT(64'h52DC4D039F7AC944)) 
    g119_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g119_b0_n_0));
  LUT6 #(
    .INIT(64'hFFF761CE361BBCA4)) 
    g119_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g119_b1_n_0));
  LUT6 #(
    .INIT(64'hB39C5128619DB6A4)) 
    g119_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g119_b2_n_0));
  LUT6 #(
    .INIT(64'h97F37C9B65C1D931)) 
    g119_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g119_b3_n_0));
  LUT6 #(
    .INIT(64'hEAFCDF3255D989A4)) 
    g119_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g119_b4_n_0));
  LUT6 #(
    .INIT(64'h7BF8522606DCDC9D)) 
    g119_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g119_b5_n_0));
  LUT6 #(
    .INIT(64'h5D400199D8AAF5BD)) 
    g119_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g119_b6_n_0));
  LUT6 #(
    .INIT(64'hA4938FEFE3D801E9)) 
    g119_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g119_b7_n_0));
  LUT6 #(
    .INIT(64'h94D5F96AFBF59F00)) 
    g11_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b0_n_0));
  LUT6 #(
    .INIT(64'h49CF1B0C8BBBD822)) 
    g11_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b1_n_0));
  LUT6 #(
    .INIT(64'h3A09EB00B77D89DE)) 
    g11_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b2_n_0));
  LUT6 #(
    .INIT(64'h41BB7255D3AD976C)) 
    g11_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b3_n_0));
  LUT6 #(
    .INIT(64'h908EDB920A7BA947)) 
    g11_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b4_n_0));
  LUT6 #(
    .INIT(64'hB1AB105EDCC67746)) 
    g11_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b5_n_0));
  LUT6 #(
    .INIT(64'h674DD48745BEBD71)) 
    g11_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b6_n_0));
  LUT6 #(
    .INIT(64'h2DC3CE21E3F3DCAC)) 
    g11_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g11_b7_n_0));
  LUT6 #(
    .INIT(64'h4488DAD8CDB16513)) 
    g12_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b0_n_0));
  LUT6 #(
    .INIT(64'h9432538923E298D5)) 
    g12_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b1_n_0));
  LUT6 #(
    .INIT(64'hC577798F3AD9024A)) 
    g12_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b2_n_0));
  LUT6 #(
    .INIT(64'hEB03EA293116D92F)) 
    g12_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b3_n_0));
  LUT6 #(
    .INIT(64'h334DC1D53140C183)) 
    g12_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b4_n_0));
  LUT6 #(
    .INIT(64'h8542BCBFA9ED1DEC)) 
    g12_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b5_n_0));
  LUT6 #(
    .INIT(64'h6395A470AE82FB39)) 
    g12_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b6_n_0));
  LUT6 #(
    .INIT(64'hD4E94AA1C881CE22)) 
    g12_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g12_b7_n_0));
  LUT6 #(
    .INIT(64'h8C1A7953DA1145E8)) 
    g13_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b0_n_0));
  LUT6 #(
    .INIT(64'hE56B20FD516CD707)) 
    g13_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b1_n_0));
  LUT6 #(
    .INIT(64'h2B0F16B73B784FA7)) 
    g13_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b2_n_0));
  LUT6 #(
    .INIT(64'hB5F662527870872D)) 
    g13_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b3_n_0));
  LUT6 #(
    .INIT(64'h97C21A7DA73409BB)) 
    g13_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b4_n_0));
  LUT6 #(
    .INIT(64'hD02700B7D114869C)) 
    g13_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b5_n_0));
  LUT6 #(
    .INIT(64'h5784B82F21EA68E0)) 
    g13_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b6_n_0));
  LUT6 #(
    .INIT(64'h827A962EC06D1FA3)) 
    g13_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g13_b7_n_0));
  LUT6 #(
    .INIT(64'h2FB32392DA971147)) 
    g14_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b0_n_0));
  LUT6 #(
    .INIT(64'h8DC2E587D8F816DA)) 
    g14_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b1_n_0));
  LUT6 #(
    .INIT(64'h1F2FD2020F93A070)) 
    g14_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b2_n_0));
  LUT6 #(
    .INIT(64'h41F76F4567060C69)) 
    g14_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b3_n_0));
  LUT6 #(
    .INIT(64'h53FA48E8F791F0D7)) 
    g14_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b4_n_0));
  LUT6 #(
    .INIT(64'hF93A3252E5BE6818)) 
    g14_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b5_n_0));
  LUT6 #(
    .INIT(64'h7C8EF39FF3F52171)) 
    g14_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b6_n_0));
  LUT6 #(
    .INIT(64'hB695EED3BAA289A6)) 
    g14_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g14_b7_n_0));
  LUT6 #(
    .INIT(64'hA449E74784FDFAD6)) 
    g15_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b0_n_0));
  LUT6 #(
    .INIT(64'h1E44F7FE86BA3A4F)) 
    g15_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b1_n_0));
  LUT6 #(
    .INIT(64'hA635E657F4CC8E89)) 
    g15_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b2_n_0));
  LUT6 #(
    .INIT(64'hE8A50703868C0232)) 
    g15_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b3_n_0));
  LUT6 #(
    .INIT(64'hF8D9B8B3DAF29E5C)) 
    g15_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b4_n_0));
  LUT6 #(
    .INIT(64'h4BFAC714DA55DE64)) 
    g15_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b5_n_0));
  LUT6 #(
    .INIT(64'hF7ACC121096B6D5A)) 
    g15_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b6_n_0));
  LUT6 #(
    .INIT(64'h6601114A5E56642C)) 
    g15_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g15_b7_n_0));
  LUT6 #(
    .INIT(64'h6CF7E8ACA7D694FE)) 
    g16_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g16_b0_n_0));
  LUT6 #(
    .INIT(64'h0ABD4C722D0B9F23)) 
    g16_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g16_b1_n_0));
  LUT6 #(
    .INIT(64'hC9085D6C14DF5D77)) 
    g16_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g16_b2_n_0));
  LUT6 #(
    .INIT(64'h8C1C6B818D220783)) 
    g16_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g16_b3_n_0));
  LUT6 #(
    .INIT(64'hF0362B0E04D104C9)) 
    g16_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g16_b4_n_0));
  LUT6 #(
    .INIT(64'h89F3FFA589F97074)) 
    g16_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g16_b5_n_0));
  LUT6 #(
    .INIT(64'h35F66D882AFCD332)) 
    g16_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g16_b6_n_0));
  LUT6 #(
    .INIT(64'hA9C53AFBBB7F3CBF)) 
    g16_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g16_b7_n_0));
  LUT6 #(
    .INIT(64'h99C7E5D217A8C836)) 
    g17_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g17_b0_n_0));
  LUT6 #(
    .INIT(64'h0D7401D7299B3995)) 
    g17_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g17_b1_n_0));
  LUT6 #(
    .INIT(64'h46489EF5329E68AB)) 
    g17_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g17_b2_n_0));
  LUT6 #(
    .INIT(64'h19AB26CDDE9D8FDE)) 
    g17_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g17_b3_n_0));
  LUT6 #(
    .INIT(64'hD57A6D799577EFA5)) 
    g17_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g17_b4_n_0));
  LUT6 #(
    .INIT(64'hD1D7FE7FD8613800)) 
    g17_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g17_b5_n_0));
  LUT6 #(
    .INIT(64'hC7AA8F23516B500F)) 
    g17_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g17_b6_n_0));
  LUT6 #(
    .INIT(64'h02A7B7065FDD7932)) 
    g17_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g17_b7_n_0));
  LUT6 #(
    .INIT(64'hC5C708D53E931449)) 
    g18_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g18_b0_n_0));
  LUT6 #(
    .INIT(64'hAF771F231B3C41B7)) 
    g18_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g18_b1_n_0));
  LUT6 #(
    .INIT(64'hB0A33CC1AD7D7300)) 
    g18_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g18_b2_n_0));
  LUT6 #(
    .INIT(64'hF0ED4A94DE2A227B)) 
    g18_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g18_b3_n_0));
  LUT6 #(
    .INIT(64'h89DCA68A44924FBA)) 
    g18_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g18_b4_n_0));
  LUT6 #(
    .INIT(64'hBC35400E5493CCEB)) 
    g18_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g18_b5_n_0));
  LUT6 #(
    .INIT(64'hA059C47D0348433A)) 
    g18_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g18_b6_n_0));
  LUT6 #(
    .INIT(64'h44DF4448D20511C9)) 
    g18_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g18_b7_n_0));
  LUT6 #(
    .INIT(64'h74F8455D69E7182A)) 
    g19_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g19_b0_n_0));
  LUT6 #(
    .INIT(64'hB0605D82264F0EA8)) 
    g19_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g19_b1_n_0));
  LUT6 #(
    .INIT(64'h7D389314B39DBE23)) 
    g19_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g19_b2_n_0));
  LUT6 #(
    .INIT(64'h0F14B27E08363A84)) 
    g19_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g19_b3_n_0));
  LUT6 #(
    .INIT(64'h6246DBFB0DD998FD)) 
    g19_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g19_b4_n_0));
  LUT6 #(
    .INIT(64'h9438E09C21D5C44B)) 
    g19_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g19_b5_n_0));
  LUT6 #(
    .INIT(64'h1E90CEBFD5550740)) 
    g19_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g19_b6_n_0));
  LUT6 #(
    .INIT(64'h7F17D96ECCEBBD4A)) 
    g19_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g19_b7_n_0));
  LUT6 #(
    .INIT(64'hAD1A396935699B05)) 
    g1_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b0_n_0));
  LUT6 #(
    .INIT(64'hA2D484843429330D)) 
    g1_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b1_n_0));
  LUT6 #(
    .INIT(64'hC98CD9A5695E7B53)) 
    g1_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b2_n_0));
  LUT6 #(
    .INIT(64'hB5B0665E9457375F)) 
    g1_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b3_n_0));
  LUT6 #(
    .INIT(64'h004EE54E0DDAB7BC)) 
    g1_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b4_n_0));
  LUT6 #(
    .INIT(64'h2976FEC460AE5D9C)) 
    g1_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b5_n_0));
  LUT6 #(
    .INIT(64'hFA2BAE872F22A803)) 
    g1_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b6_n_0));
  LUT6 #(
    .INIT(64'hD8131D671F44BCE4)) 
    g1_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g1_b7_n_0));
  LUT6 #(
    .INIT(64'hF1F354D428CA6F54)) 
    g20_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g20_b0_n_0));
  LUT6 #(
    .INIT(64'h041815F0C914EB06)) 
    g20_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g20_b1_n_0));
  LUT6 #(
    .INIT(64'hA803D65455E87047)) 
    g20_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g20_b2_n_0));
  LUT6 #(
    .INIT(64'h4996258BF26A70EB)) 
    g20_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g20_b3_n_0));
  LUT6 #(
    .INIT(64'hEE0C4C6DEF51F415)) 
    g20_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g20_b4_n_0));
  LUT6 #(
    .INIT(64'h658B5CC3E5C57308)) 
    g20_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g20_b5_n_0));
  LUT6 #(
    .INIT(64'h51EDC31989282E79)) 
    g20_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g20_b6_n_0));
  LUT6 #(
    .INIT(64'hFCA07442145261E9)) 
    g20_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g20_b7_n_0));
  LUT6 #(
    .INIT(64'hFF7E8313DE0DDD3F)) 
    g21_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g21_b0_n_0));
  LUT6 #(
    .INIT(64'h35E011F639823585)) 
    g21_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g21_b1_n_0));
  LUT6 #(
    .INIT(64'h1B959F2FC63C323B)) 
    g21_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g21_b2_n_0));
  LUT6 #(
    .INIT(64'h2519F4D86E69FCEE)) 
    g21_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g21_b3_n_0));
  LUT6 #(
    .INIT(64'hE35FA872A95C8492)) 
    g21_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g21_b4_n_0));
  LUT6 #(
    .INIT(64'h01C84358A801B977)) 
    g21_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g21_b5_n_0));
  LUT6 #(
    .INIT(64'h3B8194B6001182EE)) 
    g21_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g21_b6_n_0));
  LUT6 #(
    .INIT(64'hF2E27F3431B2C8B1)) 
    g21_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g21_b7_n_0));
  LUT6 #(
    .INIT(64'h30E7AAEEF19B9583)) 
    g22_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g22_b0_n_0));
  LUT6 #(
    .INIT(64'h36AE493BE32D9671)) 
    g22_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g22_b1_n_0));
  LUT6 #(
    .INIT(64'h6EAF1B0647932FB7)) 
    g22_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g22_b2_n_0));
  LUT6 #(
    .INIT(64'hBB50E8860E223581)) 
    g22_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g22_b3_n_0));
  LUT6 #(
    .INIT(64'h184A0FE1869AF795)) 
    g22_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g22_b4_n_0));
  LUT6 #(
    .INIT(64'h83F67B55F38EF32C)) 
    g22_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g22_b5_n_0));
  LUT6 #(
    .INIT(64'hCD288B283D66DECD)) 
    g22_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g22_b6_n_0));
  LUT6 #(
    .INIT(64'hFCAD39D77EA71959)) 
    g22_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g22_b7_n_0));
  LUT6 #(
    .INIT(64'h2C5DE0CFDFB52656)) 
    g23_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g23_b0_n_0));
  LUT6 #(
    .INIT(64'hF78F12907DEFBA72)) 
    g23_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g23_b1_n_0));
  LUT6 #(
    .INIT(64'hD081023AE836D65C)) 
    g23_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g23_b2_n_0));
  LUT6 #(
    .INIT(64'h4CEB72A71A0BE04C)) 
    g23_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g23_b3_n_0));
  LUT6 #(
    .INIT(64'hE02B57B82C595487)) 
    g23_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g23_b4_n_0));
  LUT6 #(
    .INIT(64'hB85ECA71423C5E59)) 
    g23_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g23_b5_n_0));
  LUT6 #(
    .INIT(64'hEC63E93DDB96171E)) 
    g23_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g23_b6_n_0));
  LUT6 #(
    .INIT(64'h74DA2850F72D6E2B)) 
    g23_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g23_b7_n_0));
  LUT6 #(
    .INIT(64'hDB8C46F3AE16D62D)) 
    g24_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g24_b0_n_0));
  LUT6 #(
    .INIT(64'h421473E74BFFD267)) 
    g24_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g24_b1_n_0));
  LUT6 #(
    .INIT(64'h5B79F859986B73D3)) 
    g24_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g24_b2_n_0));
  LUT6 #(
    .INIT(64'h2775EF99AE50E923)) 
    g24_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g24_b3_n_0));
  LUT6 #(
    .INIT(64'h7C124CBA729CFA76)) 
    g24_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g24_b4_n_0));
  LUT6 #(
    .INIT(64'h0A4E78547ED71766)) 
    g24_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g24_b5_n_0));
  LUT6 #(
    .INIT(64'hDCE9762CA25CC5A6)) 
    g24_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g24_b6_n_0));
  LUT6 #(
    .INIT(64'hED7E08D17D17B3EB)) 
    g24_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g24_b7_n_0));
  LUT6 #(
    .INIT(64'h993DB09C77169F11)) 
    g25_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g25_b0_n_0));
  LUT6 #(
    .INIT(64'h70E7CCD64E8B2795)) 
    g25_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g25_b1_n_0));
  LUT6 #(
    .INIT(64'h5927D981A249B3D6)) 
    g25_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g25_b2_n_0));
  LUT6 #(
    .INIT(64'h394ECD56579EF0FE)) 
    g25_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g25_b3_n_0));
  LUT6 #(
    .INIT(64'h15D6F685305C5DAE)) 
    g25_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g25_b4_n_0));
  LUT6 #(
    .INIT(64'h66CB99277D4F82F6)) 
    g25_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g25_b5_n_0));
  LUT6 #(
    .INIT(64'hAABB5896101D2C42)) 
    g25_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g25_b6_n_0));
  LUT6 #(
    .INIT(64'h651AA773CB939E10)) 
    g25_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g25_b7_n_0));
  LUT6 #(
    .INIT(64'hB5BA49E200A31EB8)) 
    g26_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g26_b0_n_0));
  LUT6 #(
    .INIT(64'h27B7A06124201EE6)) 
    g26_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g26_b1_n_0));
  LUT6 #(
    .INIT(64'hBBB8C62F38F5D08D)) 
    g26_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g26_b2_n_0));
  LUT6 #(
    .INIT(64'h52BBAFCB39648AF1)) 
    g26_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g26_b3_n_0));
  LUT6 #(
    .INIT(64'hC0F95CDC044CB3BB)) 
    g26_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g26_b4_n_0));
  LUT6 #(
    .INIT(64'h791668B3CC32FED7)) 
    g26_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g26_b5_n_0));
  LUT6 #(
    .INIT(64'h9B9E8E3152B80DD7)) 
    g26_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g26_b6_n_0));
  LUT6 #(
    .INIT(64'h42AB19C6687B4F79)) 
    g26_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g26_b7_n_0));
  LUT6 #(
    .INIT(64'h6B4CA62102FE479F)) 
    g27_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g27_b0_n_0));
  LUT6 #(
    .INIT(64'hA66F4EA28C4C2E11)) 
    g27_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g27_b1_n_0));
  LUT6 #(
    .INIT(64'h4511337EDD9F1C84)) 
    g27_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g27_b2_n_0));
  LUT6 #(
    .INIT(64'h584DC7345DBF4D5B)) 
    g27_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g27_b3_n_0));
  LUT6 #(
    .INIT(64'h043D438389FA1D02)) 
    g27_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g27_b4_n_0));
  LUT6 #(
    .INIT(64'h057069F4CDDA2D4C)) 
    g27_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g27_b5_n_0));
  LUT6 #(
    .INIT(64'h8648435B512E47C1)) 
    g27_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g27_b6_n_0));
  LUT6 #(
    .INIT(64'hDF7B7ACF40A28E72)) 
    g27_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g27_b7_n_0));
  LUT6 #(
    .INIT(64'hE0F5542627662D93)) 
    g28_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g28_b0_n_0));
  LUT6 #(
    .INIT(64'h2D9810AD49842BF2)) 
    g28_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g28_b1_n_0));
  LUT6 #(
    .INIT(64'h66A5AD85DF0992C4)) 
    g28_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g28_b2_n_0));
  LUT6 #(
    .INIT(64'h4B511415C3FD29B6)) 
    g28_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g28_b3_n_0));
  LUT6 #(
    .INIT(64'h60079A480AD05BDA)) 
    g28_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g28_b4_n_0));
  LUT6 #(
    .INIT(64'h562334F27C7242A3)) 
    g28_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g28_b5_n_0));
  LUT6 #(
    .INIT(64'h70334E9731FD25C1)) 
    g28_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g28_b6_n_0));
  LUT6 #(
    .INIT(64'h15DA9C6AE6DB1979)) 
    g28_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g28_b7_n_0));
  LUT6 #(
    .INIT(64'h65B445856DF0E104)) 
    g29_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g29_b0_n_0));
  LUT6 #(
    .INIT(64'h1BDCC38E49883CDB)) 
    g29_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g29_b1_n_0));
  LUT6 #(
    .INIT(64'h89C4FEE759B7BAE4)) 
    g29_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g29_b2_n_0));
  LUT6 #(
    .INIT(64'hAECC06187C30956A)) 
    g29_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g29_b3_n_0));
  LUT6 #(
    .INIT(64'hA1507836C67CFE83)) 
    g29_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g29_b4_n_0));
  LUT6 #(
    .INIT(64'hFBDDF3E29CFDAC00)) 
    g29_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g29_b5_n_0));
  LUT6 #(
    .INIT(64'hDB0F857F9D0A3909)) 
    g29_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g29_b6_n_0));
  LUT6 #(
    .INIT(64'h37255F874468D912)) 
    g29_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g29_b7_n_0));
  LUT6 #(
    .INIT(64'hA467E14FFD70C972)) 
    g2_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b0_n_0));
  LUT6 #(
    .INIT(64'h2AA80A7748F78A3C)) 
    g2_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b1_n_0));
  LUT6 #(
    .INIT(64'hC7DDC43AAA335599)) 
    g2_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b2_n_0));
  LUT6 #(
    .INIT(64'h3032873F36649001)) 
    g2_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b3_n_0));
  LUT6 #(
    .INIT(64'hC1F5CCD02C39B7AF)) 
    g2_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b4_n_0));
  LUT6 #(
    .INIT(64'hE3C00CD9880B73EC)) 
    g2_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b5_n_0));
  LUT6 #(
    .INIT(64'h1372B382E4D0C524)) 
    g2_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b6_n_0));
  LUT6 #(
    .INIT(64'h483034190273A4DA)) 
    g2_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g2_b7_n_0));
  LUT6 #(
    .INIT(64'hD94DBD2CF7A7C20E)) 
    g30_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g30_b0_n_0));
  LUT6 #(
    .INIT(64'hF459424EE7F0C0F1)) 
    g30_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g30_b1_n_0));
  LUT6 #(
    .INIT(64'hC502994AF766560C)) 
    g30_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g30_b2_n_0));
  LUT6 #(
    .INIT(64'hA6ACB805736B606F)) 
    g30_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g30_b3_n_0));
  LUT6 #(
    .INIT(64'hECEE4A3E145726BA)) 
    g30_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g30_b4_n_0));
  LUT6 #(
    .INIT(64'h854993FFBC2FED72)) 
    g30_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g30_b5_n_0));
  LUT6 #(
    .INIT(64'h62A30D34BC98B008)) 
    g30_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g30_b6_n_0));
  LUT6 #(
    .INIT(64'h36B034B086E4A1E4)) 
    g30_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g30_b7_n_0));
  LUT6 #(
    .INIT(64'h63C41FFC581796E2)) 
    g31_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g31_b0_n_0));
  LUT6 #(
    .INIT(64'h8EA83A16A3A9D1E5)) 
    g31_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g31_b1_n_0));
  LUT6 #(
    .INIT(64'h409233EF6A8AD0F5)) 
    g31_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g31_b2_n_0));
  LUT6 #(
    .INIT(64'hBFBA98C00A7B790C)) 
    g31_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g31_b3_n_0));
  LUT6 #(
    .INIT(64'h8D9D6B1CF1109B5A)) 
    g31_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g31_b4_n_0));
  LUT6 #(
    .INIT(64'hA32FAABAE700B010)) 
    g31_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g31_b5_n_0));
  LUT6 #(
    .INIT(64'h411C11ACB14BBA71)) 
    g31_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g31_b6_n_0));
  LUT6 #(
    .INIT(64'h408A4352421D3877)) 
    g31_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g31_b7_n_0));
  LUT6 #(
    .INIT(64'h06A96D80FE8489F6)) 
    g32_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g32_b0_n_0));
  LUT6 #(
    .INIT(64'h804290D3D6774C59)) 
    g32_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g32_b1_n_0));
  LUT6 #(
    .INIT(64'hDE843610FDBDC14B)) 
    g32_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g32_b2_n_0));
  LUT6 #(
    .INIT(64'hD507A9071FE3DDCB)) 
    g32_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g32_b3_n_0));
  LUT6 #(
    .INIT(64'h42B559BC29C4969F)) 
    g32_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g32_b4_n_0));
  LUT6 #(
    .INIT(64'hFCCC5F3BBEA220EC)) 
    g32_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g32_b5_n_0));
  LUT6 #(
    .INIT(64'h1F78C5FE0DB22075)) 
    g32_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g32_b6_n_0));
  LUT6 #(
    .INIT(64'h4D0ECCA2154DE9EC)) 
    g32_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g32_b7_n_0));
  LUT6 #(
    .INIT(64'hC184C74CC8D804A1)) 
    g33_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g33_b0_n_0));
  LUT6 #(
    .INIT(64'h9E11300B6ED6A7F8)) 
    g33_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g33_b1_n_0));
  LUT6 #(
    .INIT(64'h9146594489A09E65)) 
    g33_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g33_b2_n_0));
  LUT6 #(
    .INIT(64'hBC4E903F993BE9E9)) 
    g33_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g33_b3_n_0));
  LUT6 #(
    .INIT(64'hB813CD19F876D44E)) 
    g33_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g33_b4_n_0));
  LUT6 #(
    .INIT(64'h5A5CF0B056635541)) 
    g33_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g33_b5_n_0));
  LUT6 #(
    .INIT(64'h2B3E78C83091851F)) 
    g33_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g33_b6_n_0));
  LUT6 #(
    .INIT(64'h322965DFF0A48CE4)) 
    g33_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g33_b7_n_0));
  LUT6 #(
    .INIT(64'h20DBECAEA968F9D8)) 
    g34_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g34_b0_n_0));
  LUT6 #(
    .INIT(64'h9F296D5DD89A9DCF)) 
    g34_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g34_b1_n_0));
  LUT6 #(
    .INIT(64'h0C90A0A0FA92734D)) 
    g34_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g34_b2_n_0));
  LUT6 #(
    .INIT(64'hD768C969F32CA038)) 
    g34_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g34_b3_n_0));
  LUT6 #(
    .INIT(64'hFD91C261C951313D)) 
    g34_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g34_b4_n_0));
  LUT6 #(
    .INIT(64'h3836A04E740EB208)) 
    g34_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g34_b5_n_0));
  LUT6 #(
    .INIT(64'h141BF9B4BA1AA7FC)) 
    g34_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g34_b6_n_0));
  LUT6 #(
    .INIT(64'hCC4C7F26EBA88650)) 
    g34_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g34_b7_n_0));
  LUT6 #(
    .INIT(64'hB9FF11EFFC126C76)) 
    g35_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g35_b0_n_0));
  LUT6 #(
    .INIT(64'hF9D21A2F97B1A791)) 
    g35_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g35_b1_n_0));
  LUT6 #(
    .INIT(64'hFC36F3669D713686)) 
    g35_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g35_b2_n_0));
  LUT6 #(
    .INIT(64'h28548948BA2E1C27)) 
    g35_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g35_b3_n_0));
  LUT6 #(
    .INIT(64'hB9FE14AC05B203F9)) 
    g35_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g35_b4_n_0));
  LUT6 #(
    .INIT(64'hF1E3D912684B732A)) 
    g35_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g35_b5_n_0));
  LUT6 #(
    .INIT(64'h515762754A306D78)) 
    g35_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g35_b6_n_0));
  LUT6 #(
    .INIT(64'hA322CC027C1CA646)) 
    g35_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g35_b7_n_0));
  LUT6 #(
    .INIT(64'hD2CE9789A5B907BB)) 
    g36_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g36_b0_n_0));
  LUT6 #(
    .INIT(64'h1B2AF263F2090658)) 
    g36_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g36_b1_n_0));
  LUT6 #(
    .INIT(64'h175A52F76113CD33)) 
    g36_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g36_b2_n_0));
  LUT6 #(
    .INIT(64'hD3E66CF81F62287A)) 
    g36_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g36_b3_n_0));
  LUT6 #(
    .INIT(64'h98DCCAE9E38398F7)) 
    g36_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g36_b4_n_0));
  LUT6 #(
    .INIT(64'hF776680F35602583)) 
    g36_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g36_b5_n_0));
  LUT6 #(
    .INIT(64'h7B9D85213113ECBE)) 
    g36_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g36_b6_n_0));
  LUT6 #(
    .INIT(64'h419BC7295E7377C4)) 
    g36_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g36_b7_n_0));
  LUT6 #(
    .INIT(64'h36E7FE8A19B4F4FC)) 
    g37_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g37_b0_n_0));
  LUT6 #(
    .INIT(64'h2E4CF35EC3923435)) 
    g37_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g37_b1_n_0));
  LUT6 #(
    .INIT(64'hF352040D4F75F7C6)) 
    g37_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g37_b2_n_0));
  LUT6 #(
    .INIT(64'h4C53974A0CC3EA20)) 
    g37_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g37_b3_n_0));
  LUT6 #(
    .INIT(64'hDA2AE36806A3ABAA)) 
    g37_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g37_b4_n_0));
  LUT6 #(
    .INIT(64'hEF1CD9F22F950D81)) 
    g37_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g37_b5_n_0));
  LUT6 #(
    .INIT(64'hEE13205CA804BB01)) 
    g37_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g37_b6_n_0));
  LUT6 #(
    .INIT(64'h1CA480B6377B56C0)) 
    g37_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g37_b7_n_0));
  LUT6 #(
    .INIT(64'h51B5A6AFFCEEDBD9)) 
    g38_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g38_b0_n_0));
  LUT6 #(
    .INIT(64'hC1F49FD8F274BCA0)) 
    g38_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g38_b1_n_0));
  LUT6 #(
    .INIT(64'hF079CFC90335BB6D)) 
    g38_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g38_b2_n_0));
  LUT6 #(
    .INIT(64'h0477BF20161583AC)) 
    g38_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g38_b3_n_0));
  LUT6 #(
    .INIT(64'h566F6B358728E0C1)) 
    g38_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g38_b4_n_0));
  LUT6 #(
    .INIT(64'h86D08043BF46592D)) 
    g38_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g38_b5_n_0));
  LUT6 #(
    .INIT(64'h5B6246B46E40C385)) 
    g38_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g38_b6_n_0));
  LUT6 #(
    .INIT(64'h33AF8E3F4C396A69)) 
    g38_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g38_b7_n_0));
  LUT6 #(
    .INIT(64'h2938496C7FCC1BDE)) 
    g39_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g39_b0_n_0));
  LUT6 #(
    .INIT(64'h2193947CE1D5EDE3)) 
    g39_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g39_b1_n_0));
  LUT6 #(
    .INIT(64'h8B9592AD532C77BA)) 
    g39_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g39_b2_n_0));
  LUT6 #(
    .INIT(64'h6621A9EFE2543FE4)) 
    g39_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g39_b3_n_0));
  LUT6 #(
    .INIT(64'hB28AC5E65B39ED8F)) 
    g39_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g39_b4_n_0));
  LUT6 #(
    .INIT(64'h8CABB39DBD9329D0)) 
    g39_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g39_b5_n_0));
  LUT6 #(
    .INIT(64'hDAD6A67BDE7747F4)) 
    g39_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g39_b6_n_0));
  LUT6 #(
    .INIT(64'hE9A3A502245F9B28)) 
    g39_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g39_b7_n_0));
  LUT6 #(
    .INIT(64'hCC8D2AC873914B8A)) 
    g3_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b0_n_0));
  LUT6 #(
    .INIT(64'h1FC808D0455E3B14)) 
    g3_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b1_n_0));
  LUT6 #(
    .INIT(64'h62BC406279C336EE)) 
    g3_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b2_n_0));
  LUT6 #(
    .INIT(64'hCA7FC775439B5922)) 
    g3_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b3_n_0));
  LUT6 #(
    .INIT(64'h3801B85F8116FBCC)) 
    g3_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b4_n_0));
  LUT6 #(
    .INIT(64'hFAC431496050984B)) 
    g3_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b5_n_0));
  LUT6 #(
    .INIT(64'hAA17AF4F57C523E8)) 
    g3_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b6_n_0));
  LUT6 #(
    .INIT(64'h133F1CDB45D1D983)) 
    g3_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g3_b7_n_0));
  LUT6 #(
    .INIT(64'h062D1A33DA6B570F)) 
    g40_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g40_b0_n_0));
  LUT6 #(
    .INIT(64'hF8B991F0710D5830)) 
    g40_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g40_b1_n_0));
  LUT6 #(
    .INIT(64'hED27BC9A666729C5)) 
    g40_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g40_b2_n_0));
  LUT6 #(
    .INIT(64'hBC7DACEA036FE23D)) 
    g40_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g40_b3_n_0));
  LUT6 #(
    .INIT(64'hA99326BF80FA18A4)) 
    g40_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g40_b4_n_0));
  LUT6 #(
    .INIT(64'h71FA192039D2635B)) 
    g40_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g40_b5_n_0));
  LUT6 #(
    .INIT(64'h8E096B6085A37166)) 
    g40_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g40_b6_n_0));
  LUT6 #(
    .INIT(64'hFB275435F7042D07)) 
    g40_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g40_b7_n_0));
  LUT6 #(
    .INIT(64'h176BEC1186945542)) 
    g41_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g41_b0_n_0));
  LUT6 #(
    .INIT(64'h069AA87B0A0263AF)) 
    g41_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g41_b1_n_0));
  LUT6 #(
    .INIT(64'hF8257BF3C2C0BE3C)) 
    g41_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g41_b2_n_0));
  LUT6 #(
    .INIT(64'h04270326D4B08BE6)) 
    g41_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g41_b3_n_0));
  LUT6 #(
    .INIT(64'hC03B816B5E2B1A0C)) 
    g41_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g41_b4_n_0));
  LUT6 #(
    .INIT(64'h51E40A68BFFBF573)) 
    g41_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g41_b5_n_0));
  LUT6 #(
    .INIT(64'h9253CACAE9B06B1B)) 
    g41_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g41_b6_n_0));
  LUT6 #(
    .INIT(64'hE19302F3B9F84A6F)) 
    g41_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g41_b7_n_0));
  LUT6 #(
    .INIT(64'h81D420EFEC30DB8C)) 
    g42_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g42_b0_n_0));
  LUT6 #(
    .INIT(64'h572F13BFE0ECBBB2)) 
    g42_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g42_b1_n_0));
  LUT6 #(
    .INIT(64'h2C8C72AB96337CC0)) 
    g42_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g42_b2_n_0));
  LUT6 #(
    .INIT(64'hF4A38C5C8A1CB1C6)) 
    g42_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g42_b3_n_0));
  LUT6 #(
    .INIT(64'h2F46D65D5D2D9FA0)) 
    g42_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g42_b4_n_0));
  LUT6 #(
    .INIT(64'h8D01DC506149D182)) 
    g42_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g42_b5_n_0));
  LUT6 #(
    .INIT(64'hDFF63119537F3EF8)) 
    g42_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g42_b6_n_0));
  LUT6 #(
    .INIT(64'h7C9E8F5FD461849F)) 
    g42_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g42_b7_n_0));
  LUT6 #(
    .INIT(64'hAAF1724820BE408D)) 
    g43_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g43_b0_n_0));
  LUT6 #(
    .INIT(64'h8E53E04E3E7E007F)) 
    g43_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g43_b1_n_0));
  LUT6 #(
    .INIT(64'h45A8C8DD61B29934)) 
    g43_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g43_b2_n_0));
  LUT6 #(
    .INIT(64'h355BD8F0347DA223)) 
    g43_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g43_b3_n_0));
  LUT6 #(
    .INIT(64'hC7E60DB8B4675E91)) 
    g43_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g43_b4_n_0));
  LUT6 #(
    .INIT(64'h33EB5EB1E0D17728)) 
    g43_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g43_b5_n_0));
  LUT6 #(
    .INIT(64'h2B693F8BEB9A9028)) 
    g43_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g43_b6_n_0));
  LUT6 #(
    .INIT(64'h8CCE593F3B9AAC55)) 
    g43_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g43_b7_n_0));
  LUT6 #(
    .INIT(64'h64B0D9957CF0E1A1)) 
    g44_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g44_b0_n_0));
  LUT6 #(
    .INIT(64'h3EDCABF637BF9B1B)) 
    g44_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g44_b1_n_0));
  LUT6 #(
    .INIT(64'h60E0C27A0D4EC533)) 
    g44_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g44_b2_n_0));
  LUT6 #(
    .INIT(64'hF58355C2DAA7252C)) 
    g44_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g44_b3_n_0));
  LUT6 #(
    .INIT(64'hC43D639BE29C84AC)) 
    g44_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g44_b4_n_0));
  LUT6 #(
    .INIT(64'hA91E5AA4D942153B)) 
    g44_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g44_b5_n_0));
  LUT6 #(
    .INIT(64'h1308756D4DC46AA5)) 
    g44_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g44_b6_n_0));
  LUT6 #(
    .INIT(64'h1718A329BD417DC3)) 
    g44_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g44_b7_n_0));
  LUT6 #(
    .INIT(64'hE7E8ABF00AF3B93F)) 
    g45_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g45_b0_n_0));
  LUT6 #(
    .INIT(64'h650A1458C9818C16)) 
    g45_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g45_b1_n_0));
  LUT6 #(
    .INIT(64'hB38994AC6CA18A54)) 
    g45_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g45_b2_n_0));
  LUT6 #(
    .INIT(64'h9FD21526AE1560D4)) 
    g45_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g45_b3_n_0));
  LUT6 #(
    .INIT(64'h997B14EA668C6086)) 
    g45_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g45_b4_n_0));
  LUT6 #(
    .INIT(64'h44BBB9D2339FCF81)) 
    g45_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g45_b5_n_0));
  LUT6 #(
    .INIT(64'h3029743D5F5EB5DD)) 
    g45_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g45_b6_n_0));
  LUT6 #(
    .INIT(64'hB541C08706E73186)) 
    g45_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g45_b7_n_0));
  LUT6 #(
    .INIT(64'h8B041DB88C3A395A)) 
    g46_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g46_b0_n_0));
  LUT6 #(
    .INIT(64'h4063392D2B099547)) 
    g46_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g46_b1_n_0));
  LUT6 #(
    .INIT(64'hA9C4162121EFE591)) 
    g46_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g46_b2_n_0));
  LUT6 #(
    .INIT(64'h09C426AC6115912F)) 
    g46_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g46_b3_n_0));
  LUT6 #(
    .INIT(64'h0C505CA5D4419F9C)) 
    g46_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g46_b4_n_0));
  LUT6 #(
    .INIT(64'h5A6E8311B45D5318)) 
    g46_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g46_b5_n_0));
  LUT6 #(
    .INIT(64'h64B366EA98CD25FD)) 
    g46_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g46_b6_n_0));
  LUT6 #(
    .INIT(64'hFCE8C75F61D9291B)) 
    g46_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g46_b7_n_0));
  LUT6 #(
    .INIT(64'h1F18F5B47D2A615B)) 
    g47_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g47_b0_n_0));
  LUT6 #(
    .INIT(64'hBDF9A91DF5A194F1)) 
    g47_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g47_b1_n_0));
  LUT6 #(
    .INIT(64'hEA322565AA5D0650)) 
    g47_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g47_b2_n_0));
  LUT6 #(
    .INIT(64'h14982EC94BF5131B)) 
    g47_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g47_b3_n_0));
  LUT6 #(
    .INIT(64'h1AEF2A291DA20F6A)) 
    g47_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g47_b4_n_0));
  LUT6 #(
    .INIT(64'h32A6E9A34E3DB8D0)) 
    g47_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g47_b5_n_0));
  LUT6 #(
    .INIT(64'h95D4D6228C317B46)) 
    g47_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g47_b6_n_0));
  LUT6 #(
    .INIT(64'h520C591ECC666BB3)) 
    g47_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g47_b7_n_0));
  LUT6 #(
    .INIT(64'hE1E06CC6B7B4F289)) 
    g48_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g48_b0_n_0));
  LUT6 #(
    .INIT(64'h1C4C129BE19C24FC)) 
    g48_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g48_b1_n_0));
  LUT6 #(
    .INIT(64'h40A14618F32F5C41)) 
    g48_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g48_b2_n_0));
  LUT6 #(
    .INIT(64'h5F8341573C08C817)) 
    g48_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g48_b3_n_0));
  LUT6 #(
    .INIT(64'h58881CB9325B23DD)) 
    g48_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g48_b4_n_0));
  LUT6 #(
    .INIT(64'h9ECC849B22C2188A)) 
    g48_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g48_b5_n_0));
  LUT6 #(
    .INIT(64'h969AC7DE651C3D48)) 
    g48_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g48_b6_n_0));
  LUT6 #(
    .INIT(64'hC53EA70A2262EE2B)) 
    g48_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g48_b7_n_0));
  LUT6 #(
    .INIT(64'hEBC2F145F1C86CB6)) 
    g49_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g49_b0_n_0));
  LUT6 #(
    .INIT(64'hFBC36413E6903B11)) 
    g49_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g49_b1_n_0));
  LUT6 #(
    .INIT(64'hE1D56DEA70651E4C)) 
    g49_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g49_b2_n_0));
  LUT6 #(
    .INIT(64'h6B24248C23BEFBD9)) 
    g49_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g49_b3_n_0));
  LUT6 #(
    .INIT(64'hC9F8C5F8AF2F96CF)) 
    g49_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g49_b4_n_0));
  LUT6 #(
    .INIT(64'h5690FCF8D720777B)) 
    g49_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g49_b5_n_0));
  LUT6 #(
    .INIT(64'hBB7B6661896CA146)) 
    g49_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g49_b6_n_0));
  LUT6 #(
    .INIT(64'h18C9E0CA1E2A3969)) 
    g49_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g49_b7_n_0));
  LUT6 #(
    .INIT(64'h66450870876F8E6A)) 
    g4_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b0_n_0));
  LUT6 #(
    .INIT(64'h06E4F374F1646FF0)) 
    g4_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b1_n_0));
  LUT6 #(
    .INIT(64'hD17E9F1F75B89862)) 
    g4_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b2_n_0));
  LUT6 #(
    .INIT(64'h2CF987C862DC1B84)) 
    g4_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b3_n_0));
  LUT6 #(
    .INIT(64'h1DE7D03FB930128D)) 
    g4_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b4_n_0));
  LUT6 #(
    .INIT(64'h52553E045C022E85)) 
    g4_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b5_n_0));
  LUT6 #(
    .INIT(64'hC1E99A5ABECC7F42)) 
    g4_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b6_n_0));
  LUT6 #(
    .INIT(64'h07B5EA0DF9001072)) 
    g4_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g4_b7_n_0));
  LUT6 #(
    .INIT(64'h5CD5347A9B3A0584)) 
    g50_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g50_b0_n_0));
  LUT6 #(
    .INIT(64'h16B3ADD5924AF508)) 
    g50_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g50_b1_n_0));
  LUT6 #(
    .INIT(64'h7C8628385BC6514B)) 
    g50_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g50_b2_n_0));
  LUT6 #(
    .INIT(64'h7D1F3885407BD8A4)) 
    g50_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g50_b3_n_0));
  LUT6 #(
    .INIT(64'h5961E2C8E58DDE1E)) 
    g50_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g50_b4_n_0));
  LUT6 #(
    .INIT(64'h45027D6023D9CBF7)) 
    g50_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g50_b5_n_0));
  LUT6 #(
    .INIT(64'hD420851F8A540FDB)) 
    g50_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g50_b6_n_0));
  LUT6 #(
    .INIT(64'h994633E8F8E258C0)) 
    g50_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g50_b7_n_0));
  LUT6 #(
    .INIT(64'h4E1FEA8208565588)) 
    g51_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g51_b0_n_0));
  LUT6 #(
    .INIT(64'h5BDF01177C1A298B)) 
    g51_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g51_b1_n_0));
  LUT6 #(
    .INIT(64'hAD9D2AD8CC05952E)) 
    g51_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g51_b2_n_0));
  LUT6 #(
    .INIT(64'h836F66DBA9C2B256)) 
    g51_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g51_b3_n_0));
  LUT6 #(
    .INIT(64'h4F7C45B83010D51B)) 
    g51_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g51_b4_n_0));
  LUT6 #(
    .INIT(64'hEC47E28A4F31B638)) 
    g51_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g51_b5_n_0));
  LUT6 #(
    .INIT(64'h44D20E158050D4DD)) 
    g51_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g51_b6_n_0));
  LUT6 #(
    .INIT(64'hFDDBE2BB7DBF6319)) 
    g51_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g51_b7_n_0));
  LUT6 #(
    .INIT(64'hEF2A2245EBE49691)) 
    g52_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g52_b0_n_0));
  LUT6 #(
    .INIT(64'hF8FE8A62FA38C47F)) 
    g52_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g52_b1_n_0));
  LUT6 #(
    .INIT(64'hDD8CD11A121A2F7B)) 
    g52_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g52_b2_n_0));
  LUT6 #(
    .INIT(64'h7D1C296D3CB3E5D4)) 
    g52_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g52_b3_n_0));
  LUT6 #(
    .INIT(64'h63A4A85A27ECC65B)) 
    g52_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g52_b4_n_0));
  LUT6 #(
    .INIT(64'hB66894B4306562C7)) 
    g52_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g52_b5_n_0));
  LUT6 #(
    .INIT(64'hBE1822B02EC92AF9)) 
    g52_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g52_b6_n_0));
  LUT6 #(
    .INIT(64'h3E8F6E5EF07ED412)) 
    g52_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g52_b7_n_0));
  LUT6 #(
    .INIT(64'h022FAFD127E071E9)) 
    g53_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g53_b0_n_0));
  LUT6 #(
    .INIT(64'h68DB35CAEF299B37)) 
    g53_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g53_b1_n_0));
  LUT6 #(
    .INIT(64'h78D289BA10539116)) 
    g53_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g53_b2_n_0));
  LUT6 #(
    .INIT(64'hDF942CDBD966FD2F)) 
    g53_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g53_b3_n_0));
  LUT6 #(
    .INIT(64'h96785F06497AB352)) 
    g53_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g53_b4_n_0));
  LUT6 #(
    .INIT(64'h38D06FE9E49C065E)) 
    g53_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g53_b5_n_0));
  LUT6 #(
    .INIT(64'h7032F610C0F15206)) 
    g53_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g53_b6_n_0));
  LUT6 #(
    .INIT(64'hB7CCFB3A8D03F0B0)) 
    g53_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g53_b7_n_0));
  LUT6 #(
    .INIT(64'h59AC89D36B6578F5)) 
    g54_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g54_b0_n_0));
  LUT6 #(
    .INIT(64'h0239E20A18C0D7E8)) 
    g54_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g54_b1_n_0));
  LUT6 #(
    .INIT(64'hEE7F1D84F52B0F80)) 
    g54_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g54_b2_n_0));
  LUT6 #(
    .INIT(64'h0DF62751AA2B8590)) 
    g54_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g54_b3_n_0));
  LUT6 #(
    .INIT(64'h7CB2F7268EA19044)) 
    g54_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g54_b4_n_0));
  LUT6 #(
    .INIT(64'hD7DFEE31FFBF2047)) 
    g54_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g54_b5_n_0));
  LUT6 #(
    .INIT(64'h1919307AFE25B3AA)) 
    g54_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g54_b6_n_0));
  LUT6 #(
    .INIT(64'h3C295047C64E36E1)) 
    g54_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g54_b7_n_0));
  LUT6 #(
    .INIT(64'h4A6A15325E91A724)) 
    g55_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g55_b0_n_0));
  LUT6 #(
    .INIT(64'h50B38243A3AD3943)) 
    g55_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g55_b1_n_0));
  LUT6 #(
    .INIT(64'hD7974FA3B0AA1730)) 
    g55_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g55_b2_n_0));
  LUT6 #(
    .INIT(64'h26CEB8F322C977E5)) 
    g55_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g55_b3_n_0));
  LUT6 #(
    .INIT(64'hCEE555D05EE24E52)) 
    g55_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g55_b4_n_0));
  LUT6 #(
    .INIT(64'hA1101F2E9A967E78)) 
    g55_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g55_b5_n_0));
  LUT6 #(
    .INIT(64'h52A801F815077B00)) 
    g55_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g55_b6_n_0));
  LUT6 #(
    .INIT(64'h51496A7F96245A53)) 
    g55_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g55_b7_n_0));
  LUT6 #(
    .INIT(64'h22746D7E1FFD34AF)) 
    g56_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g56_b0_n_0));
  LUT6 #(
    .INIT(64'h62606287C09E11D0)) 
    g56_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g56_b1_n_0));
  LUT6 #(
    .INIT(64'hAD6D14F84AEE010F)) 
    g56_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g56_b2_n_0));
  LUT6 #(
    .INIT(64'h4E8D0C75F746E37F)) 
    g56_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g56_b3_n_0));
  LUT6 #(
    .INIT(64'hE93E27696C3B64F2)) 
    g56_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g56_b4_n_0));
  LUT6 #(
    .INIT(64'h8B19F3CFE38F8A34)) 
    g56_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g56_b5_n_0));
  LUT6 #(
    .INIT(64'hA4743E538F7AC286)) 
    g56_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g56_b6_n_0));
  LUT6 #(
    .INIT(64'hD20B4E729E5A85A0)) 
    g56_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g56_b7_n_0));
  LUT6 #(
    .INIT(64'hD38F363C7323F84D)) 
    g57_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g57_b0_n_0));
  LUT6 #(
    .INIT(64'h95673C0CD59E950F)) 
    g57_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g57_b1_n_0));
  LUT6 #(
    .INIT(64'h68C8F1FA7D143E07)) 
    g57_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g57_b2_n_0));
  LUT6 #(
    .INIT(64'h248F842992DCA498)) 
    g57_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g57_b3_n_0));
  LUT6 #(
    .INIT(64'hB01A4B03B9871004)) 
    g57_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g57_b4_n_0));
  LUT6 #(
    .INIT(64'hF3F659DB969329AB)) 
    g57_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g57_b5_n_0));
  LUT6 #(
    .INIT(64'hFB5F9CED881C3FDD)) 
    g57_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g57_b6_n_0));
  LUT6 #(
    .INIT(64'h8BE95BE29A1D724A)) 
    g57_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g57_b7_n_0));
  LUT6 #(
    .INIT(64'h98B76F6C0E052C91)) 
    g58_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g58_b0_n_0));
  LUT6 #(
    .INIT(64'h0C9A2DFD3062FA5E)) 
    g58_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g58_b1_n_0));
  LUT6 #(
    .INIT(64'hC30F83EFAD17CF5F)) 
    g58_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g58_b2_n_0));
  LUT6 #(
    .INIT(64'hEFF20FDB4926EFBA)) 
    g58_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g58_b3_n_0));
  LUT6 #(
    .INIT(64'h156D7EE7001C6281)) 
    g58_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g58_b4_n_0));
  LUT6 #(
    .INIT(64'h066B993D0FFC1111)) 
    g58_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g58_b5_n_0));
  LUT6 #(
    .INIT(64'hDC6A3F3AFAF5D2B2)) 
    g58_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g58_b6_n_0));
  LUT6 #(
    .INIT(64'h95BECF71E7BF3418)) 
    g58_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g58_b7_n_0));
  LUT6 #(
    .INIT(64'h2EC063E252F85374)) 
    g59_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g59_b0_n_0));
  LUT6 #(
    .INIT(64'hD98CEBFB54BE2604)) 
    g59_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g59_b1_n_0));
  LUT6 #(
    .INIT(64'hFBFAF6289AB48238)) 
    g59_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g59_b2_n_0));
  LUT6 #(
    .INIT(64'h2D73441A3ABDC488)) 
    g59_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g59_b3_n_0));
  LUT6 #(
    .INIT(64'hE3BFB2196A1CE7D1)) 
    g59_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g59_b4_n_0));
  LUT6 #(
    .INIT(64'h2C64FD739560178E)) 
    g59_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g59_b5_n_0));
  LUT6 #(
    .INIT(64'hBC8295455C182844)) 
    g59_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g59_b6_n_0));
  LUT6 #(
    .INIT(64'hB69A65A865F5A703)) 
    g59_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g59_b7_n_0));
  LUT6 #(
    .INIT(64'h9A448601B744634E)) 
    g5_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b0_n_0));
  LUT6 #(
    .INIT(64'hDB88C0EFFBF95CC3)) 
    g5_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b1_n_0));
  LUT6 #(
    .INIT(64'h7CAB8AB18B3252FA)) 
    g5_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b2_n_0));
  LUT6 #(
    .INIT(64'h4A879487CCC0E349)) 
    g5_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b3_n_0));
  LUT6 #(
    .INIT(64'h5001AA026CA1DC33)) 
    g5_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b4_n_0));
  LUT6 #(
    .INIT(64'h11D412EC4DC29918)) 
    g5_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b5_n_0));
  LUT6 #(
    .INIT(64'h9E4A74F3B7EC82CC)) 
    g5_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b6_n_0));
  LUT6 #(
    .INIT(64'hD5D92A890A2F5184)) 
    g5_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g5_b7_n_0));
  LUT6 #(
    .INIT(64'hB033697FA752196C)) 
    g60_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g60_b0_n_0));
  LUT6 #(
    .INIT(64'h89422DCC32E76E54)) 
    g60_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g60_b1_n_0));
  LUT6 #(
    .INIT(64'hF5738DA15C615D30)) 
    g60_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g60_b2_n_0));
  LUT6 #(
    .INIT(64'hD20D5C996F56238E)) 
    g60_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g60_b3_n_0));
  LUT6 #(
    .INIT(64'hEAD255452ACFB509)) 
    g60_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g60_b4_n_0));
  LUT6 #(
    .INIT(64'h549DCFF8675C9674)) 
    g60_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g60_b5_n_0));
  LUT6 #(
    .INIT(64'hB5AB67C8D0B15552)) 
    g60_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g60_b6_n_0));
  LUT6 #(
    .INIT(64'h0CC2B3BC49D1D3FA)) 
    g60_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g60_b7_n_0));
  LUT6 #(
    .INIT(64'h2F58256691A9BF2D)) 
    g61_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g61_b0_n_0));
  LUT6 #(
    .INIT(64'hF820A16350C7FF14)) 
    g61_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g61_b1_n_0));
  LUT6 #(
    .INIT(64'h4436BE1C97A46525)) 
    g61_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g61_b2_n_0));
  LUT6 #(
    .INIT(64'h409494F2FD44207F)) 
    g61_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g61_b3_n_0));
  LUT6 #(
    .INIT(64'h8387B569FF36F6F5)) 
    g61_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g61_b4_n_0));
  LUT6 #(
    .INIT(64'hE057212DACD2F993)) 
    g61_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g61_b5_n_0));
  LUT6 #(
    .INIT(64'h3ABBAC24163F2A6F)) 
    g61_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g61_b6_n_0));
  LUT6 #(
    .INIT(64'hD594F6A198B3D2DE)) 
    g61_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g61_b7_n_0));
  LUT6 #(
    .INIT(64'h84C4CDD029880AB3)) 
    g62_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g62_b0_n_0));
  LUT6 #(
    .INIT(64'hF7245ED0AFADC7FB)) 
    g62_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g62_b1_n_0));
  LUT6 #(
    .INIT(64'hDB22744FB5A21712)) 
    g62_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g62_b2_n_0));
  LUT6 #(
    .INIT(64'hB50886962B80FF2D)) 
    g62_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g62_b3_n_0));
  LUT6 #(
    .INIT(64'h58C8351AC3F129FF)) 
    g62_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g62_b4_n_0));
  LUT6 #(
    .INIT(64'h318A2E50CE114ACA)) 
    g62_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g62_b5_n_0));
  LUT6 #(
    .INIT(64'h98410A86515375AD)) 
    g62_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g62_b6_n_0));
  LUT6 #(
    .INIT(64'h685C8CB9500203D6)) 
    g62_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g62_b7_n_0));
  LUT6 #(
    .INIT(64'hC1514D61341A2310)) 
    g63_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g63_b0_n_0));
  LUT6 #(
    .INIT(64'hB2FE4C7C0636E512)) 
    g63_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g63_b1_n_0));
  LUT6 #(
    .INIT(64'h32451B713C1B8B8F)) 
    g63_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g63_b2_n_0));
  LUT6 #(
    .INIT(64'h54B7E1FE5B93036E)) 
    g63_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g63_b3_n_0));
  LUT6 #(
    .INIT(64'h0CD9AEF042B813A3)) 
    g63_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g63_b4_n_0));
  LUT6 #(
    .INIT(64'hA9F0F796D3D92D86)) 
    g63_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g63_b5_n_0));
  LUT6 #(
    .INIT(64'h01861FE7C30557A7)) 
    g63_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g63_b6_n_0));
  LUT6 #(
    .INIT(64'hE871A7A188AD4697)) 
    g63_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g63_b7_n_0));
  LUT6 #(
    .INIT(64'hCEBC25934984671C)) 
    g64_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g64_b0_n_0));
  LUT6 #(
    .INIT(64'h38202B408E46FA73)) 
    g64_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g64_b1_n_0));
  LUT6 #(
    .INIT(64'hF16168DC67C885AD)) 
    g64_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g64_b2_n_0));
  LUT6 #(
    .INIT(64'hEB9D0576442E7523)) 
    g64_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g64_b3_n_0));
  LUT6 #(
    .INIT(64'h1D6B89ACCFA1A7F2)) 
    g64_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g64_b4_n_0));
  LUT6 #(
    .INIT(64'hC2BBDEF527E801D4)) 
    g64_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g64_b5_n_0));
  LUT6 #(
    .INIT(64'hE989618E280012AE)) 
    g64_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g64_b6_n_0));
  LUT6 #(
    .INIT(64'h7A21264EFF135616)) 
    g64_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g64_b7_n_0));
  LUT6 #(
    .INIT(64'h440D50648A984084)) 
    g65_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g65_b0_n_0));
  LUT6 #(
    .INIT(64'hEA71C4F6D75A340F)) 
    g65_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g65_b1_n_0));
  LUT6 #(
    .INIT(64'hDCA1D273F33BE8D0)) 
    g65_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g65_b2_n_0));
  LUT6 #(
    .INIT(64'h84A2C8E9BC26E2C2)) 
    g65_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g65_b3_n_0));
  LUT6 #(
    .INIT(64'hAC6284828415E4A3)) 
    g65_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g65_b4_n_0));
  LUT6 #(
    .INIT(64'h4926A75061AAD2FC)) 
    g65_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g65_b5_n_0));
  LUT6 #(
    .INIT(64'hAAD2E08DFED57649)) 
    g65_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g65_b6_n_0));
  LUT6 #(
    .INIT(64'h23144B52234768AA)) 
    g65_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g65_b7_n_0));
  LUT6 #(
    .INIT(64'hD788EB205DAD81FD)) 
    g66_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g66_b0_n_0));
  LUT6 #(
    .INIT(64'h38B45F9B0735F9E1)) 
    g66_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g66_b1_n_0));
  LUT6 #(
    .INIT(64'h97179D8C6ABCC090)) 
    g66_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g66_b2_n_0));
  LUT6 #(
    .INIT(64'h3B5573F7C0A9965D)) 
    g66_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g66_b3_n_0));
  LUT6 #(
    .INIT(64'h5BDE4A6BB8D28215)) 
    g66_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g66_b4_n_0));
  LUT6 #(
    .INIT(64'hA7FA07A23867DA21)) 
    g66_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g66_b5_n_0));
  LUT6 #(
    .INIT(64'h00F7C64BC76B28F6)) 
    g66_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g66_b6_n_0));
  LUT6 #(
    .INIT(64'h5B5F1EE6A41EE2FF)) 
    g66_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g66_b7_n_0));
  LUT6 #(
    .INIT(64'hDAF20EA2BF9B7845)) 
    g67_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g67_b0_n_0));
  LUT6 #(
    .INIT(64'hFF08D1D3D5196B8F)) 
    g67_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g67_b1_n_0));
  LUT6 #(
    .INIT(64'h0AECF29BAD6EB9D1)) 
    g67_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g67_b2_n_0));
  LUT6 #(
    .INIT(64'h9441558B9A78D2CA)) 
    g67_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g67_b3_n_0));
  LUT6 #(
    .INIT(64'h71135FC42C04D460)) 
    g67_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g67_b4_n_0));
  LUT6 #(
    .INIT(64'h08991774C71E40FE)) 
    g67_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g67_b5_n_0));
  LUT6 #(
    .INIT(64'h638761659B866278)) 
    g67_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g67_b6_n_0));
  LUT6 #(
    .INIT(64'h4BCBBDA894A3EE22)) 
    g67_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g67_b7_n_0));
  LUT6 #(
    .INIT(64'hCD3AAF2B3C6E4F63)) 
    g68_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g68_b0_n_0));
  LUT6 #(
    .INIT(64'h209409CD508D9162)) 
    g68_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g68_b1_n_0));
  LUT6 #(
    .INIT(64'hCD29BD4611D14C3D)) 
    g68_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g68_b2_n_0));
  LUT6 #(
    .INIT(64'hAC2806B2396E09AA)) 
    g68_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g68_b3_n_0));
  LUT6 #(
    .INIT(64'h0129AEDE4579F975)) 
    g68_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g68_b4_n_0));
  LUT6 #(
    .INIT(64'hD0FAF5EDFC3DEB88)) 
    g68_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g68_b5_n_0));
  LUT6 #(
    .INIT(64'h522864909114934A)) 
    g68_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g68_b6_n_0));
  LUT6 #(
    .INIT(64'h464B6B3E4CF15C45)) 
    g68_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g68_b7_n_0));
  LUT6 #(
    .INIT(64'h93B8F5C2D30EA91C)) 
    g69_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g69_b0_n_0));
  LUT6 #(
    .INIT(64'h3AAAB2545BF431F0)) 
    g69_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g69_b1_n_0));
  LUT6 #(
    .INIT(64'h13FA993D41EF68FE)) 
    g69_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g69_b2_n_0));
  LUT6 #(
    .INIT(64'h7B32E91E5A6E912A)) 
    g69_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g69_b3_n_0));
  LUT6 #(
    .INIT(64'hB10325B41A489F2E)) 
    g69_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g69_b4_n_0));
  LUT6 #(
    .INIT(64'h7FE32D8343FADB57)) 
    g69_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g69_b5_n_0));
  LUT6 #(
    .INIT(64'hC2D0BE8EAAB083BA)) 
    g69_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g69_b6_n_0));
  LUT6 #(
    .INIT(64'hA889E575929AA431)) 
    g69_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g69_b7_n_0));
  LUT6 #(
    .INIT(64'hA0B073BC70B132A5)) 
    g6_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b0_n_0));
  LUT6 #(
    .INIT(64'h2C759A05EB62FFA1)) 
    g6_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b1_n_0));
  LUT6 #(
    .INIT(64'hA2C0D12DDC690118)) 
    g6_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b2_n_0));
  LUT6 #(
    .INIT(64'hD5E907548EE6A046)) 
    g6_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b3_n_0));
  LUT6 #(
    .INIT(64'h2F34B382B8BFC767)) 
    g6_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b4_n_0));
  LUT6 #(
    .INIT(64'h1DED7864ED86AA03)) 
    g6_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b5_n_0));
  LUT6 #(
    .INIT(64'h25231249BFA24FD7)) 
    g6_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b6_n_0));
  LUT6 #(
    .INIT(64'hA8CFDC1DCF023860)) 
    g6_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g6_b7_n_0));
  LUT6 #(
    .INIT(64'h99B105BB2DA7FF70)) 
    g70_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g70_b0_n_0));
  LUT6 #(
    .INIT(64'hE93B3AA1AAC4E7B8)) 
    g70_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g70_b1_n_0));
  LUT6 #(
    .INIT(64'h4C5A0824635C29B9)) 
    g70_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g70_b2_n_0));
  LUT6 #(
    .INIT(64'h7BCCBF3466D8B80E)) 
    g70_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g70_b3_n_0));
  LUT6 #(
    .INIT(64'h818DB01E34CCF5A9)) 
    g70_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g70_b4_n_0));
  LUT6 #(
    .INIT(64'h7DAD99A1B93594BC)) 
    g70_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g70_b5_n_0));
  LUT6 #(
    .INIT(64'h88FB355E81A561CD)) 
    g70_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g70_b6_n_0));
  LUT6 #(
    .INIT(64'h859B96AA7BED53A9)) 
    g70_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g70_b7_n_0));
  LUT6 #(
    .INIT(64'hA7223CCF1A89A912)) 
    g71_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g71_b0_n_0));
  LUT6 #(
    .INIT(64'h9A0204BF0CC67876)) 
    g71_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g71_b1_n_0));
  LUT6 #(
    .INIT(64'h549B0A833EBDB96F)) 
    g71_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g71_b2_n_0));
  LUT6 #(
    .INIT(64'h08A07632DB84E84A)) 
    g71_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g71_b3_n_0));
  LUT6 #(
    .INIT(64'h73A9350467A242B7)) 
    g71_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g71_b4_n_0));
  LUT6 #(
    .INIT(64'hA578EF961AD31B83)) 
    g71_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g71_b5_n_0));
  LUT6 #(
    .INIT(64'h9DC7278729F38CB1)) 
    g71_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g71_b6_n_0));
  LUT6 #(
    .INIT(64'hBE3D2D8D4DA9587E)) 
    g71_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g71_b7_n_0));
  LUT6 #(
    .INIT(64'h8766899C86C58FB6)) 
    g72_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g72_b0_n_0));
  LUT6 #(
    .INIT(64'hED554D46AF2A8480)) 
    g72_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g72_b1_n_0));
  LUT6 #(
    .INIT(64'h04AD0EFB621E0116)) 
    g72_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g72_b2_n_0));
  LUT6 #(
    .INIT(64'hC6C65E397F2C7D19)) 
    g72_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g72_b3_n_0));
  LUT6 #(
    .INIT(64'h93873469EEFC9A6F)) 
    g72_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g72_b4_n_0));
  LUT6 #(
    .INIT(64'h4571906729C97731)) 
    g72_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g72_b5_n_0));
  LUT6 #(
    .INIT(64'h313954F2CF04BB37)) 
    g72_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g72_b6_n_0));
  LUT6 #(
    .INIT(64'hC0497CFEB98A0090)) 
    g72_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g72_b7_n_0));
  LUT6 #(
    .INIT(64'h2114F24DCCCE0629)) 
    g73_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g73_b0_n_0));
  LUT6 #(
    .INIT(64'h502D3D4FA9AA768E)) 
    g73_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g73_b1_n_0));
  LUT6 #(
    .INIT(64'h3B4E6C9269761EF5)) 
    g73_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g73_b2_n_0));
  LUT6 #(
    .INIT(64'h883482282E5CA693)) 
    g73_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g73_b3_n_0));
  LUT6 #(
    .INIT(64'h4E9069C353A152D9)) 
    g73_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g73_b4_n_0));
  LUT6 #(
    .INIT(64'hBCF1A81F7BDB054A)) 
    g73_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g73_b5_n_0));
  LUT6 #(
    .INIT(64'h6B7CF5D6D25C1CA3)) 
    g73_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g73_b6_n_0));
  LUT6 #(
    .INIT(64'h0752EF41F35EC833)) 
    g73_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g73_b7_n_0));
  LUT6 #(
    .INIT(64'hF03969753FFC98BE)) 
    g74_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g74_b0_n_0));
  LUT6 #(
    .INIT(64'h73270609F9CD5E49)) 
    g74_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g74_b1_n_0));
  LUT6 #(
    .INIT(64'h5FEAD79BFF8F196F)) 
    g74_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g74_b2_n_0));
  LUT6 #(
    .INIT(64'h33D6F578903411ED)) 
    g74_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g74_b3_n_0));
  LUT6 #(
    .INIT(64'h65C770BBA119F47D)) 
    g74_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g74_b4_n_0));
  LUT6 #(
    .INIT(64'h3886E6CCCFF597AF)) 
    g74_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g74_b5_n_0));
  LUT6 #(
    .INIT(64'h3C0419F78B7B1E3F)) 
    g74_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g74_b6_n_0));
  LUT6 #(
    .INIT(64'hE9D6DB4783AEB2B1)) 
    g74_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g74_b7_n_0));
  LUT6 #(
    .INIT(64'hA1AD74A08A6159F2)) 
    g75_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g75_b0_n_0));
  LUT6 #(
    .INIT(64'hF477D49C5231B404)) 
    g75_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g75_b1_n_0));
  LUT6 #(
    .INIT(64'h0F80B0E47B0D4961)) 
    g75_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g75_b2_n_0));
  LUT6 #(
    .INIT(64'h20D1708E36D5F39D)) 
    g75_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g75_b3_n_0));
  LUT6 #(
    .INIT(64'h881F1DEFD866EFBD)) 
    g75_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g75_b4_n_0));
  LUT6 #(
    .INIT(64'h42F4D1A1DB21B67D)) 
    g75_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g75_b5_n_0));
  LUT6 #(
    .INIT(64'hC361F9129C4CF786)) 
    g75_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g75_b6_n_0));
  LUT6 #(
    .INIT(64'hDA32787033988E7E)) 
    g75_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g75_b7_n_0));
  LUT6 #(
    .INIT(64'h91847919F5E383CD)) 
    g76_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g76_b0_n_0));
  LUT6 #(
    .INIT(64'h9E78F3003886B790)) 
    g76_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g76_b1_n_0));
  LUT6 #(
    .INIT(64'h257F2451F096F738)) 
    g76_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g76_b2_n_0));
  LUT6 #(
    .INIT(64'h252D718346FF9BF2)) 
    g76_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g76_b3_n_0));
  LUT6 #(
    .INIT(64'hA21701CF3C3B0399)) 
    g76_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g76_b4_n_0));
  LUT6 #(
    .INIT(64'hADF6BD81A6210786)) 
    g76_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g76_b5_n_0));
  LUT6 #(
    .INIT(64'hFB5E67AB4CABA544)) 
    g76_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g76_b6_n_0));
  LUT6 #(
    .INIT(64'hFDCDFE38ECD7FDE4)) 
    g76_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g76_b7_n_0));
  LUT6 #(
    .INIT(64'hF6FED4DA94E29BD2)) 
    g77_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g77_b0_n_0));
  LUT6 #(
    .INIT(64'h98CE0C1D00978682)) 
    g77_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g77_b1_n_0));
  LUT6 #(
    .INIT(64'hD6EC3F887A2A573F)) 
    g77_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g77_b2_n_0));
  LUT6 #(
    .INIT(64'h121A4347B289091C)) 
    g77_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g77_b3_n_0));
  LUT6 #(
    .INIT(64'hE772635FD0B753B6)) 
    g77_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g77_b4_n_0));
  LUT6 #(
    .INIT(64'h9408DCF0B1E3DACD)) 
    g77_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g77_b5_n_0));
  LUT6 #(
    .INIT(64'hDFEBA46A294C3095)) 
    g77_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g77_b6_n_0));
  LUT6 #(
    .INIT(64'h1C0ABCEB06906656)) 
    g77_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g77_b7_n_0));
  LUT6 #(
    .INIT(64'h3F29A1CF881ED633)) 
    g78_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g78_b0_n_0));
  LUT6 #(
    .INIT(64'hE607D56B6B1E98E6)) 
    g78_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g78_b1_n_0));
  LUT6 #(
    .INIT(64'hAA2DAE56FA6086C5)) 
    g78_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g78_b2_n_0));
  LUT6 #(
    .INIT(64'h25ACA995F2580FE9)) 
    g78_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g78_b3_n_0));
  LUT6 #(
    .INIT(64'h8FE31A4B1F297E79)) 
    g78_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g78_b4_n_0));
  LUT6 #(
    .INIT(64'h45D51383F8B1C65F)) 
    g78_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g78_b5_n_0));
  LUT6 #(
    .INIT(64'hB73A8CDA3E028A0F)) 
    g78_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g78_b6_n_0));
  LUT6 #(
    .INIT(64'h6EBB60DDF044C1EA)) 
    g78_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g78_b7_n_0));
  LUT6 #(
    .INIT(64'h4BA816C0DD1DCD1D)) 
    g79_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g79_b0_n_0));
  LUT6 #(
    .INIT(64'hD80C243B4C94C4DF)) 
    g79_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g79_b1_n_0));
  LUT6 #(
    .INIT(64'hE9BE7A18CC8263BD)) 
    g79_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g79_b2_n_0));
  LUT6 #(
    .INIT(64'h2A1B706E67B17A77)) 
    g79_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g79_b3_n_0));
  LUT6 #(
    .INIT(64'h00C4EFA493098236)) 
    g79_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g79_b4_n_0));
  LUT6 #(
    .INIT(64'h2D22EC457A38712E)) 
    g79_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g79_b5_n_0));
  LUT6 #(
    .INIT(64'h76416C167E44B285)) 
    g79_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g79_b6_n_0));
  LUT6 #(
    .INIT(64'hDFAFD591428FECA7)) 
    g79_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g79_b7_n_0));
  LUT6 #(
    .INIT(64'h3C626CCD0C1DEA1D)) 
    g7_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b0_n_0));
  LUT6 #(
    .INIT(64'h43E5AC4F61ECA764)) 
    g7_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b1_n_0));
  LUT6 #(
    .INIT(64'h49F005A1D1E575D4)) 
    g7_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b2_n_0));
  LUT6 #(
    .INIT(64'hBCD3549E8C333876)) 
    g7_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b3_n_0));
  LUT6 #(
    .INIT(64'hF3073C0D8E90B1BF)) 
    g7_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b4_n_0));
  LUT6 #(
    .INIT(64'hE03A5954424B5C03)) 
    g7_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b5_n_0));
  LUT6 #(
    .INIT(64'h15C271E297EA4638)) 
    g7_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b6_n_0));
  LUT6 #(
    .INIT(64'h1C7623739BC7F099)) 
    g7_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g7_b7_n_0));
  LUT6 #(
    .INIT(64'hA9AA31A5C13B3A93)) 
    g80_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g80_b0_n_0));
  LUT6 #(
    .INIT(64'hE1847BA071C18917)) 
    g80_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g80_b1_n_0));
  LUT6 #(
    .INIT(64'h5A49A6F1DDE809D8)) 
    g80_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g80_b2_n_0));
  LUT6 #(
    .INIT(64'hFC5147B2F183EDB5)) 
    g80_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g80_b3_n_0));
  LUT6 #(
    .INIT(64'h53F450343DB658F3)) 
    g80_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g80_b4_n_0));
  LUT6 #(
    .INIT(64'h8A4F209C6AAD78F0)) 
    g80_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g80_b5_n_0));
  LUT6 #(
    .INIT(64'hDFE8E5B721681E3A)) 
    g80_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g80_b6_n_0));
  LUT6 #(
    .INIT(64'h399AD9DCAF05650A)) 
    g80_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g80_b7_n_0));
  LUT6 #(
    .INIT(64'h57BCEAA530CE45BF)) 
    g81_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g81_b0_n_0));
  LUT6 #(
    .INIT(64'hC845C2B253F2AEE4)) 
    g81_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g81_b1_n_0));
  LUT6 #(
    .INIT(64'h12646340A706E305)) 
    g81_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g81_b2_n_0));
  LUT6 #(
    .INIT(64'h138BEA92EE3FACDA)) 
    g81_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g81_b3_n_0));
  LUT6 #(
    .INIT(64'h9276573D9B70313B)) 
    g81_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g81_b4_n_0));
  LUT6 #(
    .INIT(64'h578244AE50C047BB)) 
    g81_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g81_b5_n_0));
  LUT6 #(
    .INIT(64'h43D5DBD4CD0A05FC)) 
    g81_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g81_b6_n_0));
  LUT6 #(
    .INIT(64'hCE17A17593FC4129)) 
    g81_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g81_b7_n_0));
  LUT6 #(
    .INIT(64'h57586B4B466EA5DB)) 
    g82_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g82_b0_n_0));
  LUT6 #(
    .INIT(64'hC579F58715D76FD4)) 
    g82_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g82_b1_n_0));
  LUT6 #(
    .INIT(64'h443CA414FB42973A)) 
    g82_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g82_b2_n_0));
  LUT6 #(
    .INIT(64'h0BFF63E81B2EC175)) 
    g82_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g82_b3_n_0));
  LUT6 #(
    .INIT(64'hE37915011ABA2683)) 
    g82_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g82_b4_n_0));
  LUT6 #(
    .INIT(64'h586885B8ED0EBA6D)) 
    g82_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g82_b5_n_0));
  LUT6 #(
    .INIT(64'h4B66F7A721BB048A)) 
    g82_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g82_b6_n_0));
  LUT6 #(
    .INIT(64'h873F5AC9DF91A907)) 
    g82_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g82_b7_n_0));
  LUT6 #(
    .INIT(64'h020AA91E3DDF23E0)) 
    g83_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g83_b0_n_0));
  LUT6 #(
    .INIT(64'h73A35D5335495F69)) 
    g83_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g83_b1_n_0));
  LUT6 #(
    .INIT(64'h3D300BB353BBE5C5)) 
    g83_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g83_b2_n_0));
  LUT6 #(
    .INIT(64'hD9962B17264FBD4B)) 
    g83_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g83_b3_n_0));
  LUT6 #(
    .INIT(64'hAB9C359DDB98EAB5)) 
    g83_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g83_b4_n_0));
  LUT6 #(
    .INIT(64'hE4D8EB1171D96C9B)) 
    g83_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g83_b5_n_0));
  LUT6 #(
    .INIT(64'hAFB650FF15B9B4D0)) 
    g83_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g83_b6_n_0));
  LUT6 #(
    .INIT(64'h53199AA7BC93554B)) 
    g83_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g83_b7_n_0));
  LUT6 #(
    .INIT(64'h493875370F1BBE50)) 
    g84_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g84_b0_n_0));
  LUT6 #(
    .INIT(64'hB2CD5AB43379FE05)) 
    g84_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g84_b1_n_0));
  LUT6 #(
    .INIT(64'h5FDE05FE5213F9F3)) 
    g84_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g84_b2_n_0));
  LUT6 #(
    .INIT(64'h7B68FEB2B93B3E24)) 
    g84_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g84_b3_n_0));
  LUT6 #(
    .INIT(64'h980FC35CD9753B0F)) 
    g84_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g84_b4_n_0));
  LUT6 #(
    .INIT(64'h556ED4470E8E7494)) 
    g84_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g84_b5_n_0));
  LUT6 #(
    .INIT(64'h72063C87C18E7417)) 
    g84_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g84_b6_n_0));
  LUT6 #(
    .INIT(64'h5C7E9251CAFFD345)) 
    g84_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g84_b7_n_0));
  LUT6 #(
    .INIT(64'h19FF1E9693CF465E)) 
    g85_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g85_b0_n_0));
  LUT6 #(
    .INIT(64'h8B423A242311F7C2)) 
    g85_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g85_b1_n_0));
  LUT6 #(
    .INIT(64'h0915ED5B276C8F74)) 
    g85_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g85_b2_n_0));
  LUT6 #(
    .INIT(64'hB4A69365DACF197E)) 
    g85_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g85_b3_n_0));
  LUT6 #(
    .INIT(64'h1484FB7453ADFAA3)) 
    g85_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g85_b4_n_0));
  LUT6 #(
    .INIT(64'hCB8C99F67F5140F4)) 
    g85_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g85_b5_n_0));
  LUT6 #(
    .INIT(64'h7267DEDB0720A842)) 
    g85_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g85_b6_n_0));
  LUT6 #(
    .INIT(64'h1373081E5E877930)) 
    g85_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g85_b7_n_0));
  LUT6 #(
    .INIT(64'hF1FA3CB488074384)) 
    g86_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g86_b0_n_0));
  LUT6 #(
    .INIT(64'hCF52F4070AAE9D90)) 
    g86_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g86_b1_n_0));
  LUT6 #(
    .INIT(64'h5A3FA25443CDDC39)) 
    g86_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g86_b2_n_0));
  LUT6 #(
    .INIT(64'hCF68B51FD263B9FA)) 
    g86_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g86_b3_n_0));
  LUT6 #(
    .INIT(64'hC0AB10A691DBFC62)) 
    g86_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g86_b4_n_0));
  LUT6 #(
    .INIT(64'hBA08E3FF1C7B42CC)) 
    g86_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g86_b5_n_0));
  LUT6 #(
    .INIT(64'h14E202FD89A5633F)) 
    g86_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g86_b6_n_0));
  LUT6 #(
    .INIT(64'h1C85750636787B3A)) 
    g86_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g86_b7_n_0));
  LUT6 #(
    .INIT(64'h81B54161976BF036)) 
    g87_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g87_b0_n_0));
  LUT6 #(
    .INIT(64'h80AD46EBCE7CF06E)) 
    g87_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g87_b1_n_0));
  LUT6 #(
    .INIT(64'h8EF16E7259975152)) 
    g87_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g87_b2_n_0));
  LUT6 #(
    .INIT(64'h95A6C6F534FD5041)) 
    g87_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g87_b3_n_0));
  LUT6 #(
    .INIT(64'h83535EA0A3F38B3D)) 
    g87_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g87_b4_n_0));
  LUT6 #(
    .INIT(64'hB6556EE381AD3F6A)) 
    g87_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g87_b5_n_0));
  LUT6 #(
    .INIT(64'h0205C14C557D1F27)) 
    g87_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g87_b6_n_0));
  LUT6 #(
    .INIT(64'h4A344E5CAE9B4AF6)) 
    g87_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g87_b7_n_0));
  LUT6 #(
    .INIT(64'hFCE14C8F2B7C93B5)) 
    g88_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g88_b0_n_0));
  LUT6 #(
    .INIT(64'h715F290BEEB5CA4A)) 
    g88_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g88_b1_n_0));
  LUT6 #(
    .INIT(64'h83DF46907C06D52C)) 
    g88_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g88_b2_n_0));
  LUT6 #(
    .INIT(64'h07EC492D447F6EDB)) 
    g88_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g88_b3_n_0));
  LUT6 #(
    .INIT(64'hC1BE6C4DD202EC1E)) 
    g88_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g88_b4_n_0));
  LUT6 #(
    .INIT(64'h2A1B37BD6EC37C71)) 
    g88_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g88_b5_n_0));
  LUT6 #(
    .INIT(64'hB27F124B2ED5090D)) 
    g88_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g88_b6_n_0));
  LUT6 #(
    .INIT(64'hD48F626067B4444C)) 
    g88_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g88_b7_n_0));
  LUT6 #(
    .INIT(64'hE2D46F635B608E5F)) 
    g89_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g89_b0_n_0));
  LUT6 #(
    .INIT(64'h775A8438B21D1BE0)) 
    g89_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g89_b1_n_0));
  LUT6 #(
    .INIT(64'hDBAE64A973E32EA9)) 
    g89_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g89_b2_n_0));
  LUT6 #(
    .INIT(64'h01EDB7827374C427)) 
    g89_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g89_b3_n_0));
  LUT6 #(
    .INIT(64'h550BF1CC9FF37D24)) 
    g89_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g89_b4_n_0));
  LUT6 #(
    .INIT(64'h5C63401E32D5A774)) 
    g89_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g89_b5_n_0));
  LUT6 #(
    .INIT(64'h711067B83799B93A)) 
    g89_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g89_b6_n_0));
  LUT6 #(
    .INIT(64'h2FB942DDD3D7A6E9)) 
    g89_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g89_b7_n_0));
  LUT6 #(
    .INIT(64'h7BFC3782016D80A2)) 
    g8_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g8_b0_n_0));
  LUT6 #(
    .INIT(64'hA3CAD7B400B127C6)) 
    g8_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g8_b1_n_0));
  LUT6 #(
    .INIT(64'hB7E662C5DB772189)) 
    g8_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g8_b2_n_0));
  LUT6 #(
    .INIT(64'h4D1475CA76B52B29)) 
    g8_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g8_b3_n_0));
  LUT6 #(
    .INIT(64'hA0F4686E6C76CA13)) 
    g8_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g8_b4_n_0));
  LUT6 #(
    .INIT(64'hD35734B8894E2315)) 
    g8_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g8_b5_n_0));
  LUT6 #(
    .INIT(64'hCB71C369A3519D35)) 
    g8_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g8_b6_n_0));
  LUT6 #(
    .INIT(64'h176A65A7D6E5EE03)) 
    g8_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g8_b7_n_0));
  LUT6 #(
    .INIT(64'hD3EEDEDCAE1CB1B3)) 
    g90_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g90_b0_n_0));
  LUT6 #(
    .INIT(64'h87830DA1D95A5CB2)) 
    g90_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g90_b1_n_0));
  LUT6 #(
    .INIT(64'h6CAC76B215EB2D5F)) 
    g90_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g90_b2_n_0));
  LUT6 #(
    .INIT(64'h237CB53035380032)) 
    g90_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g90_b3_n_0));
  LUT6 #(
    .INIT(64'hB4390C51F55945BE)) 
    g90_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g90_b4_n_0));
  LUT6 #(
    .INIT(64'h5B8FB5B0F4637BE2)) 
    g90_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g90_b5_n_0));
  LUT6 #(
    .INIT(64'hC5D78AF299AD939E)) 
    g90_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g90_b6_n_0));
  LUT6 #(
    .INIT(64'h9999DA8EB29482FE)) 
    g90_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g90_b7_n_0));
  LUT6 #(
    .INIT(64'hD3FBF606F7500AA3)) 
    g91_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g91_b0_n_0));
  LUT6 #(
    .INIT(64'h015948128316C1B3)) 
    g91_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g91_b1_n_0));
  LUT6 #(
    .INIT(64'h2078045E7689A4C3)) 
    g91_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g91_b2_n_0));
  LUT6 #(
    .INIT(64'hDA8F28A3FE81A264)) 
    g91_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g91_b3_n_0));
  LUT6 #(
    .INIT(64'h5550FD8C329E7781)) 
    g91_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g91_b4_n_0));
  LUT6 #(
    .INIT(64'hF8DB37A405273614)) 
    g91_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g91_b5_n_0));
  LUT6 #(
    .INIT(64'h57441367B4AC95EC)) 
    g91_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g91_b6_n_0));
  LUT6 #(
    .INIT(64'h67FE04E174FE5508)) 
    g91_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g91_b7_n_0));
  LUT6 #(
    .INIT(64'h2D6509F8076D74F6)) 
    g92_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g92_b0_n_0));
  LUT6 #(
    .INIT(64'h47786E4ADBDE6A09)) 
    g92_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g92_b1_n_0));
  LUT6 #(
    .INIT(64'h01F89C1EBDF4988B)) 
    g92_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g92_b2_n_0));
  LUT6 #(
    .INIT(64'h6EE3B684EF51F547)) 
    g92_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g92_b3_n_0));
  LUT6 #(
    .INIT(64'h4E05934848A81D46)) 
    g92_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g92_b4_n_0));
  LUT6 #(
    .INIT(64'hECF8276B48D9224F)) 
    g92_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g92_b5_n_0));
  LUT6 #(
    .INIT(64'h74FC419AAECCB220)) 
    g92_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g92_b6_n_0));
  LUT6 #(
    .INIT(64'h4AA61B6890B78D16)) 
    g92_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g92_b7_n_0));
  LUT6 #(
    .INIT(64'h6848D0939D6B9852)) 
    g93_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g93_b0_n_0));
  LUT6 #(
    .INIT(64'hE76AE554832D8693)) 
    g93_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g93_b1_n_0));
  LUT6 #(
    .INIT(64'h07E042433C6DDEAC)) 
    g93_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g93_b2_n_0));
  LUT6 #(
    .INIT(64'h3552C31AFA75CE77)) 
    g93_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g93_b3_n_0));
  LUT6 #(
    .INIT(64'h4EAF209D8046C1E5)) 
    g93_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g93_b4_n_0));
  LUT6 #(
    .INIT(64'h20E055D89FAC41D0)) 
    g93_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g93_b5_n_0));
  LUT6 #(
    .INIT(64'h89E8D14EA65936EB)) 
    g93_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g93_b6_n_0));
  LUT6 #(
    .INIT(64'h39109008162D25D9)) 
    g93_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g93_b7_n_0));
  LUT6 #(
    .INIT(64'hC912B960224C8207)) 
    g94_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g94_b0_n_0));
  LUT6 #(
    .INIT(64'hA2A53B414B5558DD)) 
    g94_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g94_b1_n_0));
  LUT6 #(
    .INIT(64'h76FDFB80C2776E65)) 
    g94_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g94_b2_n_0));
  LUT6 #(
    .INIT(64'hDAECC9A3AF96959A)) 
    g94_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g94_b3_n_0));
  LUT6 #(
    .INIT(64'h9DFB06EAB9F0C047)) 
    g94_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g94_b4_n_0));
  LUT6 #(
    .INIT(64'hA96349872A4048B9)) 
    g94_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g94_b5_n_0));
  LUT6 #(
    .INIT(64'h1841A8F021299B84)) 
    g94_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g94_b6_n_0));
  LUT6 #(
    .INIT(64'h6829739E1160F509)) 
    g94_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g94_b7_n_0));
  LUT6 #(
    .INIT(64'hE64AC5D5D902CE31)) 
    g95_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g95_b0_n_0));
  LUT6 #(
    .INIT(64'hA98BF2BDADC8BE60)) 
    g95_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g95_b1_n_0));
  LUT6 #(
    .INIT(64'h4F93237669A12A4D)) 
    g95_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g95_b2_n_0));
  LUT6 #(
    .INIT(64'h3AA6B5004C06C9AA)) 
    g95_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g95_b3_n_0));
  LUT6 #(
    .INIT(64'h0450D8E9D7B35B44)) 
    g95_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g95_b4_n_0));
  LUT6 #(
    .INIT(64'h40713076562F662A)) 
    g95_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g95_b5_n_0));
  LUT6 #(
    .INIT(64'h04316338E4828104)) 
    g95_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g95_b6_n_0));
  LUT6 #(
    .INIT(64'h935C1F3EBA8ED06E)) 
    g95_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g95_b7_n_0));
  LUT6 #(
    .INIT(64'hF5C97631BDFCC003)) 
    g96_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g96_b0_n_0));
  LUT6 #(
    .INIT(64'hEA2FF4A6D5DB5B76)) 
    g96_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g96_b1_n_0));
  LUT6 #(
    .INIT(64'h73F54F5A1B06D297)) 
    g96_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g96_b2_n_0));
  LUT6 #(
    .INIT(64'h9CC7A5CB7417797A)) 
    g96_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g96_b3_n_0));
  LUT6 #(
    .INIT(64'h1F0CAF072AB905A2)) 
    g96_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g96_b4_n_0));
  LUT6 #(
    .INIT(64'hF6E14E8FC612D75E)) 
    g96_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g96_b5_n_0));
  LUT6 #(
    .INIT(64'hB34362BADC8F448F)) 
    g96_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g96_b6_n_0));
  LUT6 #(
    .INIT(64'h207FD95124AB41C3)) 
    g96_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g96_b7_n_0));
  LUT6 #(
    .INIT(64'hF980A5644B1C790A)) 
    g97_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g97_b0_n_0));
  LUT6 #(
    .INIT(64'h92CBD2A6A0551F8B)) 
    g97_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g97_b1_n_0));
  LUT6 #(
    .INIT(64'h4833C0DD60AC1F10)) 
    g97_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g97_b2_n_0));
  LUT6 #(
    .INIT(64'h89BB859D4B7F6595)) 
    g97_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g97_b3_n_0));
  LUT6 #(
    .INIT(64'hFB83731E2FAE6835)) 
    g97_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g97_b4_n_0));
  LUT6 #(
    .INIT(64'h7CFB706B66083870)) 
    g97_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g97_b5_n_0));
  LUT6 #(
    .INIT(64'hFD7D00872E34ECEE)) 
    g97_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g97_b6_n_0));
  LUT6 #(
    .INIT(64'h75A3F3498C9D2DFA)) 
    g97_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g97_b7_n_0));
  LUT6 #(
    .INIT(64'h086B3E3591A2CBD3)) 
    g98_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g98_b0_n_0));
  LUT6 #(
    .INIT(64'h1E9E90360BD42409)) 
    g98_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g98_b1_n_0));
  LUT6 #(
    .INIT(64'hFEE7663E35BC45F4)) 
    g98_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g98_b2_n_0));
  LUT6 #(
    .INIT(64'h75CD0B793878E58D)) 
    g98_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g98_b3_n_0));
  LUT6 #(
    .INIT(64'h17A2E43EA204E934)) 
    g98_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g98_b4_n_0));
  LUT6 #(
    .INIT(64'h9C18B0DA35E5659A)) 
    g98_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g98_b5_n_0));
  LUT6 #(
    .INIT(64'h955C50AFFB97770B)) 
    g98_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g98_b6_n_0));
  LUT6 #(
    .INIT(64'h51DEE54E60DF5790)) 
    g98_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g98_b7_n_0));
  LUT6 #(
    .INIT(64'h3E676DA694B87303)) 
    g99_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g99_b0_n_0));
  LUT6 #(
    .INIT(64'h401970779A4E8A46)) 
    g99_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g99_b1_n_0));
  LUT6 #(
    .INIT(64'h15C3860F999281C2)) 
    g99_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g99_b2_n_0));
  LUT6 #(
    .INIT(64'hCF93CC921076B9D8)) 
    g99_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g99_b3_n_0));
  LUT6 #(
    .INIT(64'h21B23ADAA864ABE4)) 
    g99_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g99_b4_n_0));
  LUT6 #(
    .INIT(64'hD26AD7A3FDAF8180)) 
    g99_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g99_b5_n_0));
  LUT6 #(
    .INIT(64'h87E3075FBAC1C550)) 
    g99_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g99_b6_n_0));
  LUT6 #(
    .INIT(64'h30918D48E4734334)) 
    g99_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g99_b7_n_0));
  LUT6 #(
    .INIT(64'h35D96F17C6C6DB05)) 
    g9_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g9_b0_n_0));
  LUT6 #(
    .INIT(64'hABF880868EBBB28B)) 
    g9_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g9_b1_n_0));
  LUT6 #(
    .INIT(64'h4DD4D18243355A5E)) 
    g9_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g9_b2_n_0));
  LUT6 #(
    .INIT(64'h45914B13DC03C345)) 
    g9_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g9_b3_n_0));
  LUT6 #(
    .INIT(64'h540C9A8252F2931E)) 
    g9_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g9_b4_n_0));
  LUT6 #(
    .INIT(64'h71B896801AC8EB4A)) 
    g9_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g9_b5_n_0));
  LUT6 #(
    .INIT(64'h945480295F0D026C)) 
    g9_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g9_b6_n_0));
  LUT6 #(
    .INIT(64'h113E9F86437C5B76)) 
    g9_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(g9_b7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .I2(a[12]),
        .I3(\spo[0]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[0]_INST_0_i_4_n_0 ),
        .O(spo[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_6_n_0 ),
        .I3(a[9]),
        .I4(\spo[0]_INST_0_i_7_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  MUXF7 \spo[0]_INST_0_i_10 
       (.I0(\spo[0]_INST_0_i_30_n_0 ),
        .I1(\spo[0]_INST_0_i_31_n_0 ),
        .O(\spo[0]_INST_0_i_10_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_11 
       (.I0(\spo[0]_INST_0_i_32_n_0 ),
        .I1(\spo[0]_INST_0_i_33_n_0 ),
        .O(\spo[0]_INST_0_i_11_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_34_n_0 ),
        .I1(\spo[0]_INST_0_i_35_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_13 
       (.I0(\spo[0]_INST_0_i_36_n_0 ),
        .I1(\spo[0]_INST_0_i_37_n_0 ),
        .O(\spo[0]_INST_0_i_13_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_14 
       (.I0(g118_b0_n_0),
        .I1(g119_b0_n_0),
        .O(\spo[0]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_15 
       (.I0(g116_b0_n_0),
        .I1(g117_b0_n_0),
        .O(\spo[0]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_16 
       (.I0(g114_b0_n_0),
        .I1(g115_b0_n_0),
        .O(\spo[0]_INST_0_i_16_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_17 
       (.I0(g112_b0_n_0),
        .I1(g113_b0_n_0),
        .O(\spo[0]_INST_0_i_17_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_18 
       (.I0(g110_b0_n_0),
        .I1(g111_b0_n_0),
        .O(\spo[0]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_19 
       (.I0(g108_b0_n_0),
        .I1(g109_b0_n_0),
        .O(\spo[0]_INST_0_i_19_n_0 ),
        .S(a[6]));
  MUXF8 \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_8_n_0 ),
        .I1(\spo[0]_INST_0_i_9_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ),
        .S(a[10]));
  MUXF7 \spo[0]_INST_0_i_20 
       (.I0(g106_b0_n_0),
        .I1(g107_b0_n_0),
        .O(\spo[0]_INST_0_i_20_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_21 
       (.I0(g104_b0_n_0),
        .I1(g105_b0_n_0),
        .O(\spo[0]_INST_0_i_21_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_22 
       (.I0(g102_b0_n_0),
        .I1(g103_b0_n_0),
        .O(\spo[0]_INST_0_i_22_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_23 
       (.I0(g100_b0_n_0),
        .I1(g101_b0_n_0),
        .O(\spo[0]_INST_0_i_23_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_24 
       (.I0(g98_b0_n_0),
        .I1(g99_b0_n_0),
        .O(\spo[0]_INST_0_i_24_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_25 
       (.I0(g96_b0_n_0),
        .I1(g97_b0_n_0),
        .O(\spo[0]_INST_0_i_25_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_26 
       (.I0(\spo[0]_INST_0_i_38_n_0 ),
        .I1(\spo[0]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_40_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_41_n_0 ),
        .O(\spo[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_27 
       (.I0(\spo[0]_INST_0_i_42_n_0 ),
        .I1(\spo[0]_INST_0_i_43_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_45_n_0 ),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_28 
       (.I0(\spo[0]_INST_0_i_46_n_0 ),
        .I1(\spo[0]_INST_0_i_47_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_48_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_49_n_0 ),
        .O(\spo[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_29 
       (.I0(\spo[0]_INST_0_i_50_n_0 ),
        .I1(\spo[0]_INST_0_i_51_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_53_n_0 ),
        .O(\spo[0]_INST_0_i_29_n_0 ));
  MUXF8 \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_10_n_0 ),
        .I1(\spo[0]_INST_0_i_11_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_30 
       (.I0(\spo[0]_INST_0_i_54_n_0 ),
        .I1(\spo[0]_INST_0_i_55_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_57_n_0 ),
        .O(\spo[0]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_31 
       (.I0(\spo[0]_INST_0_i_58_n_0 ),
        .I1(\spo[0]_INST_0_i_59_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_60_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_61_n_0 ),
        .O(\spo[0]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_32 
       (.I0(\spo[0]_INST_0_i_62_n_0 ),
        .I1(\spo[0]_INST_0_i_63_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_65_n_0 ),
        .O(\spo[0]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_33 
       (.I0(\spo[0]_INST_0_i_66_n_0 ),
        .I1(\spo[0]_INST_0_i_67_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_69_n_0 ),
        .O(\spo[0]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_34 
       (.I0(\spo[0]_INST_0_i_70_n_0 ),
        .I1(\spo[0]_INST_0_i_71_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_73_n_0 ),
        .O(\spo[0]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_35 
       (.I0(\spo[0]_INST_0_i_74_n_0 ),
        .I1(\spo[0]_INST_0_i_75_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_76_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_77_n_0 ),
        .O(\spo[0]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_36 
       (.I0(\spo[0]_INST_0_i_78_n_0 ),
        .I1(\spo[0]_INST_0_i_79_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_80_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_81_n_0 ),
        .O(\spo[0]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_37 
       (.I0(\spo[0]_INST_0_i_82_n_0 ),
        .I1(\spo[0]_INST_0_i_83_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_84_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_85_n_0 ),
        .O(\spo[0]_INST_0_i_37_n_0 ));
  MUXF7 \spo[0]_INST_0_i_38 
       (.I0(g70_b0_n_0),
        .I1(g71_b0_n_0),
        .O(\spo[0]_INST_0_i_38_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_39 
       (.I0(g68_b0_n_0),
        .I1(g69_b0_n_0),
        .O(\spo[0]_INST_0_i_39_n_0 ),
        .S(a[6]));
  MUXF8 \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_12_n_0 ),
        .I1(\spo[0]_INST_0_i_13_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ),
        .S(a[10]));
  MUXF7 \spo[0]_INST_0_i_40 
       (.I0(g66_b0_n_0),
        .I1(g67_b0_n_0),
        .O(\spo[0]_INST_0_i_40_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_41 
       (.I0(g64_b0_n_0),
        .I1(g65_b0_n_0),
        .O(\spo[0]_INST_0_i_41_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_42 
       (.I0(g78_b0_n_0),
        .I1(g79_b0_n_0),
        .O(\spo[0]_INST_0_i_42_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_43 
       (.I0(g76_b0_n_0),
        .I1(g77_b0_n_0),
        .O(\spo[0]_INST_0_i_43_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_44 
       (.I0(g74_b0_n_0),
        .I1(g75_b0_n_0),
        .O(\spo[0]_INST_0_i_44_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_45 
       (.I0(g72_b0_n_0),
        .I1(g73_b0_n_0),
        .O(\spo[0]_INST_0_i_45_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_46 
       (.I0(g86_b0_n_0),
        .I1(g87_b0_n_0),
        .O(\spo[0]_INST_0_i_46_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_47 
       (.I0(g84_b0_n_0),
        .I1(g85_b0_n_0),
        .O(\spo[0]_INST_0_i_47_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_48 
       (.I0(g82_b0_n_0),
        .I1(g83_b0_n_0),
        .O(\spo[0]_INST_0_i_48_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_49 
       (.I0(g80_b0_n_0),
        .I1(g81_b0_n_0),
        .O(\spo[0]_INST_0_i_49_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_5 
       (.I0(\spo[0]_INST_0_i_14_n_0 ),
        .I1(\spo[0]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_16_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_17_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  MUXF7 \spo[0]_INST_0_i_50 
       (.I0(g94_b0_n_0),
        .I1(g95_b0_n_0),
        .O(\spo[0]_INST_0_i_50_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_51 
       (.I0(g92_b0_n_0),
        .I1(g93_b0_n_0),
        .O(\spo[0]_INST_0_i_51_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_52 
       (.I0(g90_b0_n_0),
        .I1(g91_b0_n_0),
        .O(\spo[0]_INST_0_i_52_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_53 
       (.I0(g88_b0_n_0),
        .I1(g89_b0_n_0),
        .O(\spo[0]_INST_0_i_53_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_54 
       (.I0(g38_b0_n_0),
        .I1(g39_b0_n_0),
        .O(\spo[0]_INST_0_i_54_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_55 
       (.I0(g36_b0_n_0),
        .I1(g37_b0_n_0),
        .O(\spo[0]_INST_0_i_55_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_56 
       (.I0(g34_b0_n_0),
        .I1(g35_b0_n_0),
        .O(\spo[0]_INST_0_i_56_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_57 
       (.I0(g32_b0_n_0),
        .I1(g33_b0_n_0),
        .O(\spo[0]_INST_0_i_57_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_58 
       (.I0(g46_b0_n_0),
        .I1(g47_b0_n_0),
        .O(\spo[0]_INST_0_i_58_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_59 
       (.I0(g44_b0_n_0),
        .I1(g45_b0_n_0),
        .O(\spo[0]_INST_0_i_59_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_6 
       (.I0(\spo[0]_INST_0_i_18_n_0 ),
        .I1(\spo[0]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_20_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_21_n_0 ),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  MUXF7 \spo[0]_INST_0_i_60 
       (.I0(g42_b0_n_0),
        .I1(g43_b0_n_0),
        .O(\spo[0]_INST_0_i_60_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_61 
       (.I0(g40_b0_n_0),
        .I1(g41_b0_n_0),
        .O(\spo[0]_INST_0_i_61_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_62 
       (.I0(g54_b0_n_0),
        .I1(g55_b0_n_0),
        .O(\spo[0]_INST_0_i_62_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_63 
       (.I0(g52_b0_n_0),
        .I1(g53_b0_n_0),
        .O(\spo[0]_INST_0_i_63_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_64 
       (.I0(g50_b0_n_0),
        .I1(g51_b0_n_0),
        .O(\spo[0]_INST_0_i_64_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_65 
       (.I0(g48_b0_n_0),
        .I1(g49_b0_n_0),
        .O(\spo[0]_INST_0_i_65_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_66 
       (.I0(g62_b0_n_0),
        .I1(g63_b0_n_0),
        .O(\spo[0]_INST_0_i_66_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_67 
       (.I0(g60_b0_n_0),
        .I1(g61_b0_n_0),
        .O(\spo[0]_INST_0_i_67_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_68 
       (.I0(g58_b0_n_0),
        .I1(g59_b0_n_0),
        .O(\spo[0]_INST_0_i_68_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_69 
       (.I0(g56_b0_n_0),
        .I1(g57_b0_n_0),
        .O(\spo[0]_INST_0_i_69_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_7 
       (.I0(\spo[0]_INST_0_i_22_n_0 ),
        .I1(\spo[0]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[0]_INST_0_i_24_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_25_n_0 ),
        .O(\spo[0]_INST_0_i_7_n_0 ));
  MUXF7 \spo[0]_INST_0_i_70 
       (.I0(g6_b0_n_0),
        .I1(g7_b0_n_0),
        .O(\spo[0]_INST_0_i_70_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_71 
       (.I0(g4_b0_n_0),
        .I1(g5_b0_n_0),
        .O(\spo[0]_INST_0_i_71_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_72 
       (.I0(g2_b0_n_0),
        .I1(g3_b0_n_0),
        .O(\spo[0]_INST_0_i_72_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_73 
       (.I0(g0_b0_n_0),
        .I1(g1_b0_n_0),
        .O(\spo[0]_INST_0_i_73_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_74 
       (.I0(g14_b0_n_0),
        .I1(g15_b0_n_0),
        .O(\spo[0]_INST_0_i_74_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_75 
       (.I0(g12_b0_n_0),
        .I1(g13_b0_n_0),
        .O(\spo[0]_INST_0_i_75_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_76 
       (.I0(g10_b0_n_0),
        .I1(g11_b0_n_0),
        .O(\spo[0]_INST_0_i_76_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_77 
       (.I0(g8_b0_n_0),
        .I1(g9_b0_n_0),
        .O(\spo[0]_INST_0_i_77_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_78 
       (.I0(g22_b0_n_0),
        .I1(g23_b0_n_0),
        .O(\spo[0]_INST_0_i_78_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_79 
       (.I0(g20_b0_n_0),
        .I1(g21_b0_n_0),
        .O(\spo[0]_INST_0_i_79_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_8 
       (.I0(\spo[0]_INST_0_i_26_n_0 ),
        .I1(\spo[0]_INST_0_i_27_n_0 ),
        .O(\spo[0]_INST_0_i_8_n_0 ),
        .S(a[9]));
  MUXF7 \spo[0]_INST_0_i_80 
       (.I0(g18_b0_n_0),
        .I1(g19_b0_n_0),
        .O(\spo[0]_INST_0_i_80_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_81 
       (.I0(g16_b0_n_0),
        .I1(g17_b0_n_0),
        .O(\spo[0]_INST_0_i_81_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_82 
       (.I0(g30_b0_n_0),
        .I1(g31_b0_n_0),
        .O(\spo[0]_INST_0_i_82_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_83 
       (.I0(g28_b0_n_0),
        .I1(g29_b0_n_0),
        .O(\spo[0]_INST_0_i_83_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_84 
       (.I0(g26_b0_n_0),
        .I1(g27_b0_n_0),
        .O(\spo[0]_INST_0_i_84_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_85 
       (.I0(g24_b0_n_0),
        .I1(g25_b0_n_0),
        .O(\spo[0]_INST_0_i_85_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_9 
       (.I0(\spo[0]_INST_0_i_28_n_0 ),
        .I1(\spo[0]_INST_0_i_29_n_0 ),
        .O(\spo[0]_INST_0_i_9_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[12]),
        .I3(\spo[1]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[1]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[1]_INST_0_i_6_n_0 ),
        .I3(a[9]),
        .I4(\spo[1]_INST_0_i_7_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  MUXF7 \spo[1]_INST_0_i_10 
       (.I0(\spo[1]_INST_0_i_30_n_0 ),
        .I1(\spo[1]_INST_0_i_31_n_0 ),
        .O(\spo[1]_INST_0_i_10_n_0 ),
        .S(a[9]));
  MUXF7 \spo[1]_INST_0_i_11 
       (.I0(\spo[1]_INST_0_i_32_n_0 ),
        .I1(\spo[1]_INST_0_i_33_n_0 ),
        .O(\spo[1]_INST_0_i_11_n_0 ),
        .S(a[9]));
  MUXF7 \spo[1]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_34_n_0 ),
        .I1(\spo[1]_INST_0_i_35_n_0 ),
        .O(\spo[1]_INST_0_i_12_n_0 ),
        .S(a[9]));
  MUXF7 \spo[1]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_36_n_0 ),
        .I1(\spo[1]_INST_0_i_37_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ),
        .S(a[9]));
  MUXF7 \spo[1]_INST_0_i_14 
       (.I0(g118_b1_n_0),
        .I1(g119_b1_n_0),
        .O(\spo[1]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_15 
       (.I0(g116_b1_n_0),
        .I1(g117_b1_n_0),
        .O(\spo[1]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_16 
       (.I0(g114_b1_n_0),
        .I1(g115_b1_n_0),
        .O(\spo[1]_INST_0_i_16_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_17 
       (.I0(g112_b1_n_0),
        .I1(g113_b1_n_0),
        .O(\spo[1]_INST_0_i_17_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_18 
       (.I0(g110_b1_n_0),
        .I1(g111_b1_n_0),
        .O(\spo[1]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_19 
       (.I0(g108_b1_n_0),
        .I1(g109_b1_n_0),
        .O(\spo[1]_INST_0_i_19_n_0 ),
        .S(a[6]));
  MUXF8 \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_8_n_0 ),
        .I1(\spo[1]_INST_0_i_9_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ),
        .S(a[10]));
  MUXF7 \spo[1]_INST_0_i_20 
       (.I0(g106_b1_n_0),
        .I1(g107_b1_n_0),
        .O(\spo[1]_INST_0_i_20_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_21 
       (.I0(g104_b1_n_0),
        .I1(g105_b1_n_0),
        .O(\spo[1]_INST_0_i_21_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_22 
       (.I0(g102_b1_n_0),
        .I1(g103_b1_n_0),
        .O(\spo[1]_INST_0_i_22_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_23 
       (.I0(g100_b1_n_0),
        .I1(g101_b1_n_0),
        .O(\spo[1]_INST_0_i_23_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_24 
       (.I0(g98_b1_n_0),
        .I1(g99_b1_n_0),
        .O(\spo[1]_INST_0_i_24_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_25 
       (.I0(g96_b1_n_0),
        .I1(g97_b1_n_0),
        .O(\spo[1]_INST_0_i_25_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_26 
       (.I0(\spo[1]_INST_0_i_38_n_0 ),
        .I1(\spo[1]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_40_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_41_n_0 ),
        .O(\spo[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_27 
       (.I0(\spo[1]_INST_0_i_42_n_0 ),
        .I1(\spo[1]_INST_0_i_43_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_45_n_0 ),
        .O(\spo[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_28 
       (.I0(\spo[1]_INST_0_i_46_n_0 ),
        .I1(\spo[1]_INST_0_i_47_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_48_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_49_n_0 ),
        .O(\spo[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_29 
       (.I0(\spo[1]_INST_0_i_50_n_0 ),
        .I1(\spo[1]_INST_0_i_51_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_53_n_0 ),
        .O(\spo[1]_INST_0_i_29_n_0 ));
  MUXF8 \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_10_n_0 ),
        .I1(\spo[1]_INST_0_i_11_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_30 
       (.I0(\spo[1]_INST_0_i_54_n_0 ),
        .I1(\spo[1]_INST_0_i_55_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_57_n_0 ),
        .O(\spo[1]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_31 
       (.I0(\spo[1]_INST_0_i_58_n_0 ),
        .I1(\spo[1]_INST_0_i_59_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_60_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_61_n_0 ),
        .O(\spo[1]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_32 
       (.I0(\spo[1]_INST_0_i_62_n_0 ),
        .I1(\spo[1]_INST_0_i_63_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_65_n_0 ),
        .O(\spo[1]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_33 
       (.I0(\spo[1]_INST_0_i_66_n_0 ),
        .I1(\spo[1]_INST_0_i_67_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_69_n_0 ),
        .O(\spo[1]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_34 
       (.I0(\spo[1]_INST_0_i_70_n_0 ),
        .I1(\spo[1]_INST_0_i_71_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_73_n_0 ),
        .O(\spo[1]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_35 
       (.I0(\spo[1]_INST_0_i_74_n_0 ),
        .I1(\spo[1]_INST_0_i_75_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_76_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_77_n_0 ),
        .O(\spo[1]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_36 
       (.I0(\spo[1]_INST_0_i_78_n_0 ),
        .I1(\spo[1]_INST_0_i_79_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_80_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_81_n_0 ),
        .O(\spo[1]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_37 
       (.I0(\spo[1]_INST_0_i_82_n_0 ),
        .I1(\spo[1]_INST_0_i_83_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_84_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_85_n_0 ),
        .O(\spo[1]_INST_0_i_37_n_0 ));
  MUXF7 \spo[1]_INST_0_i_38 
       (.I0(g70_b1_n_0),
        .I1(g71_b1_n_0),
        .O(\spo[1]_INST_0_i_38_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_39 
       (.I0(g68_b1_n_0),
        .I1(g69_b1_n_0),
        .O(\spo[1]_INST_0_i_39_n_0 ),
        .S(a[6]));
  MUXF8 \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_12_n_0 ),
        .I1(\spo[1]_INST_0_i_13_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ),
        .S(a[10]));
  MUXF7 \spo[1]_INST_0_i_40 
       (.I0(g66_b1_n_0),
        .I1(g67_b1_n_0),
        .O(\spo[1]_INST_0_i_40_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_41 
       (.I0(g64_b1_n_0),
        .I1(g65_b1_n_0),
        .O(\spo[1]_INST_0_i_41_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_42 
       (.I0(g78_b1_n_0),
        .I1(g79_b1_n_0),
        .O(\spo[1]_INST_0_i_42_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_43 
       (.I0(g76_b1_n_0),
        .I1(g77_b1_n_0),
        .O(\spo[1]_INST_0_i_43_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_44 
       (.I0(g74_b1_n_0),
        .I1(g75_b1_n_0),
        .O(\spo[1]_INST_0_i_44_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_45 
       (.I0(g72_b1_n_0),
        .I1(g73_b1_n_0),
        .O(\spo[1]_INST_0_i_45_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_46 
       (.I0(g86_b1_n_0),
        .I1(g87_b1_n_0),
        .O(\spo[1]_INST_0_i_46_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_47 
       (.I0(g84_b1_n_0),
        .I1(g85_b1_n_0),
        .O(\spo[1]_INST_0_i_47_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_48 
       (.I0(g82_b1_n_0),
        .I1(g83_b1_n_0),
        .O(\spo[1]_INST_0_i_48_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_49 
       (.I0(g80_b1_n_0),
        .I1(g81_b1_n_0),
        .O(\spo[1]_INST_0_i_49_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_14_n_0 ),
        .I1(\spo[1]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_16_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_17_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  MUXF7 \spo[1]_INST_0_i_50 
       (.I0(g94_b1_n_0),
        .I1(g95_b1_n_0),
        .O(\spo[1]_INST_0_i_50_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_51 
       (.I0(g92_b1_n_0),
        .I1(g93_b1_n_0),
        .O(\spo[1]_INST_0_i_51_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_52 
       (.I0(g90_b1_n_0),
        .I1(g91_b1_n_0),
        .O(\spo[1]_INST_0_i_52_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_53 
       (.I0(g88_b1_n_0),
        .I1(g89_b1_n_0),
        .O(\spo[1]_INST_0_i_53_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_54 
       (.I0(g38_b1_n_0),
        .I1(g39_b1_n_0),
        .O(\spo[1]_INST_0_i_54_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_55 
       (.I0(g36_b1_n_0),
        .I1(g37_b1_n_0),
        .O(\spo[1]_INST_0_i_55_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_56 
       (.I0(g34_b1_n_0),
        .I1(g35_b1_n_0),
        .O(\spo[1]_INST_0_i_56_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_57 
       (.I0(g32_b1_n_0),
        .I1(g33_b1_n_0),
        .O(\spo[1]_INST_0_i_57_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_58 
       (.I0(g46_b1_n_0),
        .I1(g47_b1_n_0),
        .O(\spo[1]_INST_0_i_58_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_59 
       (.I0(g44_b1_n_0),
        .I1(g45_b1_n_0),
        .O(\spo[1]_INST_0_i_59_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_6 
       (.I0(\spo[1]_INST_0_i_18_n_0 ),
        .I1(\spo[1]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_20_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_21_n_0 ),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  MUXF7 \spo[1]_INST_0_i_60 
       (.I0(g42_b1_n_0),
        .I1(g43_b1_n_0),
        .O(\spo[1]_INST_0_i_60_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_61 
       (.I0(g40_b1_n_0),
        .I1(g41_b1_n_0),
        .O(\spo[1]_INST_0_i_61_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_62 
       (.I0(g54_b1_n_0),
        .I1(g55_b1_n_0),
        .O(\spo[1]_INST_0_i_62_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_63 
       (.I0(g52_b1_n_0),
        .I1(g53_b1_n_0),
        .O(\spo[1]_INST_0_i_63_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_64 
       (.I0(g50_b1_n_0),
        .I1(g51_b1_n_0),
        .O(\spo[1]_INST_0_i_64_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_65 
       (.I0(g48_b1_n_0),
        .I1(g49_b1_n_0),
        .O(\spo[1]_INST_0_i_65_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_66 
       (.I0(g62_b1_n_0),
        .I1(g63_b1_n_0),
        .O(\spo[1]_INST_0_i_66_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_67 
       (.I0(g60_b1_n_0),
        .I1(g61_b1_n_0),
        .O(\spo[1]_INST_0_i_67_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_68 
       (.I0(g58_b1_n_0),
        .I1(g59_b1_n_0),
        .O(\spo[1]_INST_0_i_68_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_69 
       (.I0(g56_b1_n_0),
        .I1(g57_b1_n_0),
        .O(\spo[1]_INST_0_i_69_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_7 
       (.I0(\spo[1]_INST_0_i_22_n_0 ),
        .I1(\spo[1]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[1]_INST_0_i_24_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_25_n_0 ),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  MUXF7 \spo[1]_INST_0_i_70 
       (.I0(g6_b1_n_0),
        .I1(g7_b1_n_0),
        .O(\spo[1]_INST_0_i_70_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_71 
       (.I0(g4_b1_n_0),
        .I1(g5_b1_n_0),
        .O(\spo[1]_INST_0_i_71_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_72 
       (.I0(g2_b1_n_0),
        .I1(g3_b1_n_0),
        .O(\spo[1]_INST_0_i_72_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_73 
       (.I0(g0_b1_n_0),
        .I1(g1_b1_n_0),
        .O(\spo[1]_INST_0_i_73_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_74 
       (.I0(g14_b1_n_0),
        .I1(g15_b1_n_0),
        .O(\spo[1]_INST_0_i_74_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_75 
       (.I0(g12_b1_n_0),
        .I1(g13_b1_n_0),
        .O(\spo[1]_INST_0_i_75_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_76 
       (.I0(g10_b1_n_0),
        .I1(g11_b1_n_0),
        .O(\spo[1]_INST_0_i_76_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_77 
       (.I0(g8_b1_n_0),
        .I1(g9_b1_n_0),
        .O(\spo[1]_INST_0_i_77_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_78 
       (.I0(g22_b1_n_0),
        .I1(g23_b1_n_0),
        .O(\spo[1]_INST_0_i_78_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_79 
       (.I0(g20_b1_n_0),
        .I1(g21_b1_n_0),
        .O(\spo[1]_INST_0_i_79_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_8 
       (.I0(\spo[1]_INST_0_i_26_n_0 ),
        .I1(\spo[1]_INST_0_i_27_n_0 ),
        .O(\spo[1]_INST_0_i_8_n_0 ),
        .S(a[9]));
  MUXF7 \spo[1]_INST_0_i_80 
       (.I0(g18_b1_n_0),
        .I1(g19_b1_n_0),
        .O(\spo[1]_INST_0_i_80_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_81 
       (.I0(g16_b1_n_0),
        .I1(g17_b1_n_0),
        .O(\spo[1]_INST_0_i_81_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_82 
       (.I0(g30_b1_n_0),
        .I1(g31_b1_n_0),
        .O(\spo[1]_INST_0_i_82_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_83 
       (.I0(g28_b1_n_0),
        .I1(g29_b1_n_0),
        .O(\spo[1]_INST_0_i_83_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_84 
       (.I0(g26_b1_n_0),
        .I1(g27_b1_n_0),
        .O(\spo[1]_INST_0_i_84_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_85 
       (.I0(g24_b1_n_0),
        .I1(g25_b1_n_0),
        .O(\spo[1]_INST_0_i_85_n_0 ),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_9 
       (.I0(\spo[1]_INST_0_i_28_n_0 ),
        .I1(\spo[1]_INST_0_i_29_n_0 ),
        .O(\spo[1]_INST_0_i_9_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .I2(a[12]),
        .I3(\spo[2]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[2]_INST_0_i_4_n_0 ),
        .O(spo[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[2]_INST_0_i_6_n_0 ),
        .I3(a[9]),
        .I4(\spo[2]_INST_0_i_7_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  MUXF7 \spo[2]_INST_0_i_10 
       (.I0(\spo[2]_INST_0_i_30_n_0 ),
        .I1(\spo[2]_INST_0_i_31_n_0 ),
        .O(\spo[2]_INST_0_i_10_n_0 ),
        .S(a[9]));
  MUXF7 \spo[2]_INST_0_i_11 
       (.I0(\spo[2]_INST_0_i_32_n_0 ),
        .I1(\spo[2]_INST_0_i_33_n_0 ),
        .O(\spo[2]_INST_0_i_11_n_0 ),
        .S(a[9]));
  MUXF7 \spo[2]_INST_0_i_12 
       (.I0(\spo[2]_INST_0_i_34_n_0 ),
        .I1(\spo[2]_INST_0_i_35_n_0 ),
        .O(\spo[2]_INST_0_i_12_n_0 ),
        .S(a[9]));
  MUXF7 \spo[2]_INST_0_i_13 
       (.I0(\spo[2]_INST_0_i_36_n_0 ),
        .I1(\spo[2]_INST_0_i_37_n_0 ),
        .O(\spo[2]_INST_0_i_13_n_0 ),
        .S(a[9]));
  MUXF7 \spo[2]_INST_0_i_14 
       (.I0(g118_b2_n_0),
        .I1(g119_b2_n_0),
        .O(\spo[2]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_15 
       (.I0(g116_b2_n_0),
        .I1(g117_b2_n_0),
        .O(\spo[2]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_16 
       (.I0(g114_b2_n_0),
        .I1(g115_b2_n_0),
        .O(\spo[2]_INST_0_i_16_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_17 
       (.I0(g112_b2_n_0),
        .I1(g113_b2_n_0),
        .O(\spo[2]_INST_0_i_17_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_18 
       (.I0(g110_b2_n_0),
        .I1(g111_b2_n_0),
        .O(\spo[2]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_19 
       (.I0(g108_b2_n_0),
        .I1(g109_b2_n_0),
        .O(\spo[2]_INST_0_i_19_n_0 ),
        .S(a[6]));
  MUXF8 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_8_n_0 ),
        .I1(\spo[2]_INST_0_i_9_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[10]));
  MUXF7 \spo[2]_INST_0_i_20 
       (.I0(g106_b2_n_0),
        .I1(g107_b2_n_0),
        .O(\spo[2]_INST_0_i_20_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_21 
       (.I0(g104_b2_n_0),
        .I1(g105_b2_n_0),
        .O(\spo[2]_INST_0_i_21_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_22 
       (.I0(g102_b2_n_0),
        .I1(g103_b2_n_0),
        .O(\spo[2]_INST_0_i_22_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_23 
       (.I0(g100_b2_n_0),
        .I1(g101_b2_n_0),
        .O(\spo[2]_INST_0_i_23_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_24 
       (.I0(g98_b2_n_0),
        .I1(g99_b2_n_0),
        .O(\spo[2]_INST_0_i_24_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_25 
       (.I0(g96_b2_n_0),
        .I1(g97_b2_n_0),
        .O(\spo[2]_INST_0_i_25_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_26 
       (.I0(\spo[2]_INST_0_i_38_n_0 ),
        .I1(\spo[2]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_40_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_41_n_0 ),
        .O(\spo[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_27 
       (.I0(\spo[2]_INST_0_i_42_n_0 ),
        .I1(\spo[2]_INST_0_i_43_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_45_n_0 ),
        .O(\spo[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_28 
       (.I0(\spo[2]_INST_0_i_46_n_0 ),
        .I1(\spo[2]_INST_0_i_47_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_48_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_49_n_0 ),
        .O(\spo[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_29 
       (.I0(\spo[2]_INST_0_i_50_n_0 ),
        .I1(\spo[2]_INST_0_i_51_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_53_n_0 ),
        .O(\spo[2]_INST_0_i_29_n_0 ));
  MUXF8 \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_10_n_0 ),
        .I1(\spo[2]_INST_0_i_11_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_30 
       (.I0(\spo[2]_INST_0_i_54_n_0 ),
        .I1(\spo[2]_INST_0_i_55_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_57_n_0 ),
        .O(\spo[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_31 
       (.I0(\spo[2]_INST_0_i_58_n_0 ),
        .I1(\spo[2]_INST_0_i_59_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_60_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_61_n_0 ),
        .O(\spo[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_32 
       (.I0(\spo[2]_INST_0_i_62_n_0 ),
        .I1(\spo[2]_INST_0_i_63_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_65_n_0 ),
        .O(\spo[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_33 
       (.I0(\spo[2]_INST_0_i_66_n_0 ),
        .I1(\spo[2]_INST_0_i_67_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_69_n_0 ),
        .O(\spo[2]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_34 
       (.I0(\spo[2]_INST_0_i_70_n_0 ),
        .I1(\spo[2]_INST_0_i_71_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_73_n_0 ),
        .O(\spo[2]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_35 
       (.I0(\spo[2]_INST_0_i_74_n_0 ),
        .I1(\spo[2]_INST_0_i_75_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_76_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_77_n_0 ),
        .O(\spo[2]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_36 
       (.I0(\spo[2]_INST_0_i_78_n_0 ),
        .I1(\spo[2]_INST_0_i_79_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_80_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_81_n_0 ),
        .O(\spo[2]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_37 
       (.I0(\spo[2]_INST_0_i_82_n_0 ),
        .I1(\spo[2]_INST_0_i_83_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_84_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_85_n_0 ),
        .O(\spo[2]_INST_0_i_37_n_0 ));
  MUXF7 \spo[2]_INST_0_i_38 
       (.I0(g70_b2_n_0),
        .I1(g71_b2_n_0),
        .O(\spo[2]_INST_0_i_38_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_39 
       (.I0(g68_b2_n_0),
        .I1(g69_b2_n_0),
        .O(\spo[2]_INST_0_i_39_n_0 ),
        .S(a[6]));
  MUXF8 \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_12_n_0 ),
        .I1(\spo[2]_INST_0_i_13_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ),
        .S(a[10]));
  MUXF7 \spo[2]_INST_0_i_40 
       (.I0(g66_b2_n_0),
        .I1(g67_b2_n_0),
        .O(\spo[2]_INST_0_i_40_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_41 
       (.I0(g64_b2_n_0),
        .I1(g65_b2_n_0),
        .O(\spo[2]_INST_0_i_41_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_42 
       (.I0(g78_b2_n_0),
        .I1(g79_b2_n_0),
        .O(\spo[2]_INST_0_i_42_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_43 
       (.I0(g76_b2_n_0),
        .I1(g77_b2_n_0),
        .O(\spo[2]_INST_0_i_43_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_44 
       (.I0(g74_b2_n_0),
        .I1(g75_b2_n_0),
        .O(\spo[2]_INST_0_i_44_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_45 
       (.I0(g72_b2_n_0),
        .I1(g73_b2_n_0),
        .O(\spo[2]_INST_0_i_45_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_46 
       (.I0(g86_b2_n_0),
        .I1(g87_b2_n_0),
        .O(\spo[2]_INST_0_i_46_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_47 
       (.I0(g84_b2_n_0),
        .I1(g85_b2_n_0),
        .O(\spo[2]_INST_0_i_47_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_48 
       (.I0(g82_b2_n_0),
        .I1(g83_b2_n_0),
        .O(\spo[2]_INST_0_i_48_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_49 
       (.I0(g80_b2_n_0),
        .I1(g81_b2_n_0),
        .O(\spo[2]_INST_0_i_49_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_14_n_0 ),
        .I1(\spo[2]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_16_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_17_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  MUXF7 \spo[2]_INST_0_i_50 
       (.I0(g94_b2_n_0),
        .I1(g95_b2_n_0),
        .O(\spo[2]_INST_0_i_50_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_51 
       (.I0(g92_b2_n_0),
        .I1(g93_b2_n_0),
        .O(\spo[2]_INST_0_i_51_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_52 
       (.I0(g90_b2_n_0),
        .I1(g91_b2_n_0),
        .O(\spo[2]_INST_0_i_52_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_53 
       (.I0(g88_b2_n_0),
        .I1(g89_b2_n_0),
        .O(\spo[2]_INST_0_i_53_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_54 
       (.I0(g38_b2_n_0),
        .I1(g39_b2_n_0),
        .O(\spo[2]_INST_0_i_54_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_55 
       (.I0(g36_b2_n_0),
        .I1(g37_b2_n_0),
        .O(\spo[2]_INST_0_i_55_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_56 
       (.I0(g34_b2_n_0),
        .I1(g35_b2_n_0),
        .O(\spo[2]_INST_0_i_56_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_57 
       (.I0(g32_b2_n_0),
        .I1(g33_b2_n_0),
        .O(\spo[2]_INST_0_i_57_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_58 
       (.I0(g46_b2_n_0),
        .I1(g47_b2_n_0),
        .O(\spo[2]_INST_0_i_58_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_59 
       (.I0(g44_b2_n_0),
        .I1(g45_b2_n_0),
        .O(\spo[2]_INST_0_i_59_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_6 
       (.I0(\spo[2]_INST_0_i_18_n_0 ),
        .I1(\spo[2]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_20_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_21_n_0 ),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  MUXF7 \spo[2]_INST_0_i_60 
       (.I0(g42_b2_n_0),
        .I1(g43_b2_n_0),
        .O(\spo[2]_INST_0_i_60_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_61 
       (.I0(g40_b2_n_0),
        .I1(g41_b2_n_0),
        .O(\spo[2]_INST_0_i_61_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_62 
       (.I0(g54_b2_n_0),
        .I1(g55_b2_n_0),
        .O(\spo[2]_INST_0_i_62_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_63 
       (.I0(g52_b2_n_0),
        .I1(g53_b2_n_0),
        .O(\spo[2]_INST_0_i_63_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_64 
       (.I0(g50_b2_n_0),
        .I1(g51_b2_n_0),
        .O(\spo[2]_INST_0_i_64_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_65 
       (.I0(g48_b2_n_0),
        .I1(g49_b2_n_0),
        .O(\spo[2]_INST_0_i_65_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_66 
       (.I0(g62_b2_n_0),
        .I1(g63_b2_n_0),
        .O(\spo[2]_INST_0_i_66_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_67 
       (.I0(g60_b2_n_0),
        .I1(g61_b2_n_0),
        .O(\spo[2]_INST_0_i_67_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_68 
       (.I0(g58_b2_n_0),
        .I1(g59_b2_n_0),
        .O(\spo[2]_INST_0_i_68_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_69 
       (.I0(g56_b2_n_0),
        .I1(g57_b2_n_0),
        .O(\spo[2]_INST_0_i_69_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_7 
       (.I0(\spo[2]_INST_0_i_22_n_0 ),
        .I1(\spo[2]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[2]_INST_0_i_24_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_25_n_0 ),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  MUXF7 \spo[2]_INST_0_i_70 
       (.I0(g6_b2_n_0),
        .I1(g7_b2_n_0),
        .O(\spo[2]_INST_0_i_70_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_71 
       (.I0(g4_b2_n_0),
        .I1(g5_b2_n_0),
        .O(\spo[2]_INST_0_i_71_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_72 
       (.I0(g2_b2_n_0),
        .I1(g3_b2_n_0),
        .O(\spo[2]_INST_0_i_72_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_73 
       (.I0(g0_b2_n_0),
        .I1(g1_b2_n_0),
        .O(\spo[2]_INST_0_i_73_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_74 
       (.I0(g14_b2_n_0),
        .I1(g15_b2_n_0),
        .O(\spo[2]_INST_0_i_74_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_75 
       (.I0(g12_b2_n_0),
        .I1(g13_b2_n_0),
        .O(\spo[2]_INST_0_i_75_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_76 
       (.I0(g10_b2_n_0),
        .I1(g11_b2_n_0),
        .O(\spo[2]_INST_0_i_76_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_77 
       (.I0(g8_b2_n_0),
        .I1(g9_b2_n_0),
        .O(\spo[2]_INST_0_i_77_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_78 
       (.I0(g22_b2_n_0),
        .I1(g23_b2_n_0),
        .O(\spo[2]_INST_0_i_78_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_79 
       (.I0(g20_b2_n_0),
        .I1(g21_b2_n_0),
        .O(\spo[2]_INST_0_i_79_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_26_n_0 ),
        .I1(\spo[2]_INST_0_i_27_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[9]));
  MUXF7 \spo[2]_INST_0_i_80 
       (.I0(g18_b2_n_0),
        .I1(g19_b2_n_0),
        .O(\spo[2]_INST_0_i_80_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_81 
       (.I0(g16_b2_n_0),
        .I1(g17_b2_n_0),
        .O(\spo[2]_INST_0_i_81_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_82 
       (.I0(g30_b2_n_0),
        .I1(g31_b2_n_0),
        .O(\spo[2]_INST_0_i_82_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_83 
       (.I0(g28_b2_n_0),
        .I1(g29_b2_n_0),
        .O(\spo[2]_INST_0_i_83_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_84 
       (.I0(g26_b2_n_0),
        .I1(g27_b2_n_0),
        .O(\spo[2]_INST_0_i_84_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_85 
       (.I0(g24_b2_n_0),
        .I1(g25_b2_n_0),
        .O(\spo[2]_INST_0_i_85_n_0 ),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_9 
       (.I0(\spo[2]_INST_0_i_28_n_0 ),
        .I1(\spo[2]_INST_0_i_29_n_0 ),
        .O(\spo[2]_INST_0_i_9_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .I2(a[12]),
        .I3(\spo[3]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[3]_INST_0_i_4_n_0 ),
        .O(spo[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[3]_INST_0_i_6_n_0 ),
        .I3(a[9]),
        .I4(\spo[3]_INST_0_i_7_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  MUXF7 \spo[3]_INST_0_i_10 
       (.I0(\spo[3]_INST_0_i_30_n_0 ),
        .I1(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[3]_INST_0_i_10_n_0 ),
        .S(a[9]));
  MUXF7 \spo[3]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_32_n_0 ),
        .I1(\spo[3]_INST_0_i_33_n_0 ),
        .O(\spo[3]_INST_0_i_11_n_0 ),
        .S(a[9]));
  MUXF7 \spo[3]_INST_0_i_12 
       (.I0(\spo[3]_INST_0_i_34_n_0 ),
        .I1(\spo[3]_INST_0_i_35_n_0 ),
        .O(\spo[3]_INST_0_i_12_n_0 ),
        .S(a[9]));
  MUXF7 \spo[3]_INST_0_i_13 
       (.I0(\spo[3]_INST_0_i_36_n_0 ),
        .I1(\spo[3]_INST_0_i_37_n_0 ),
        .O(\spo[3]_INST_0_i_13_n_0 ),
        .S(a[9]));
  MUXF7 \spo[3]_INST_0_i_14 
       (.I0(g118_b3_n_0),
        .I1(g119_b3_n_0),
        .O(\spo[3]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_15 
       (.I0(g116_b3_n_0),
        .I1(g117_b3_n_0),
        .O(\spo[3]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_16 
       (.I0(g114_b3_n_0),
        .I1(g115_b3_n_0),
        .O(\spo[3]_INST_0_i_16_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_17 
       (.I0(g112_b3_n_0),
        .I1(g113_b3_n_0),
        .O(\spo[3]_INST_0_i_17_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_18 
       (.I0(g110_b3_n_0),
        .I1(g111_b3_n_0),
        .O(\spo[3]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_19 
       (.I0(g108_b3_n_0),
        .I1(g109_b3_n_0),
        .O(\spo[3]_INST_0_i_19_n_0 ),
        .S(a[6]));
  MUXF8 \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_8_n_0 ),
        .I1(\spo[3]_INST_0_i_9_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ),
        .S(a[10]));
  MUXF7 \spo[3]_INST_0_i_20 
       (.I0(g106_b3_n_0),
        .I1(g107_b3_n_0),
        .O(\spo[3]_INST_0_i_20_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_21 
       (.I0(g104_b3_n_0),
        .I1(g105_b3_n_0),
        .O(\spo[3]_INST_0_i_21_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_22 
       (.I0(g102_b3_n_0),
        .I1(g103_b3_n_0),
        .O(\spo[3]_INST_0_i_22_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_23 
       (.I0(g100_b3_n_0),
        .I1(g101_b3_n_0),
        .O(\spo[3]_INST_0_i_23_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_24 
       (.I0(g98_b3_n_0),
        .I1(g99_b3_n_0),
        .O(\spo[3]_INST_0_i_24_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_25 
       (.I0(g96_b3_n_0),
        .I1(g97_b3_n_0),
        .O(\spo[3]_INST_0_i_25_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_26 
       (.I0(\spo[3]_INST_0_i_38_n_0 ),
        .I1(\spo[3]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_40_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_41_n_0 ),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_27 
       (.I0(\spo[3]_INST_0_i_42_n_0 ),
        .I1(\spo[3]_INST_0_i_43_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_45_n_0 ),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_28 
       (.I0(\spo[3]_INST_0_i_46_n_0 ),
        .I1(\spo[3]_INST_0_i_47_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_48_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_49_n_0 ),
        .O(\spo[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_29 
       (.I0(\spo[3]_INST_0_i_50_n_0 ),
        .I1(\spo[3]_INST_0_i_51_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_53_n_0 ),
        .O(\spo[3]_INST_0_i_29_n_0 ));
  MUXF8 \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_10_n_0 ),
        .I1(\spo[3]_INST_0_i_11_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_30 
       (.I0(\spo[3]_INST_0_i_54_n_0 ),
        .I1(\spo[3]_INST_0_i_55_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_57_n_0 ),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_31 
       (.I0(\spo[3]_INST_0_i_58_n_0 ),
        .I1(\spo[3]_INST_0_i_59_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_60_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_61_n_0 ),
        .O(\spo[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_32 
       (.I0(\spo[3]_INST_0_i_62_n_0 ),
        .I1(\spo[3]_INST_0_i_63_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_65_n_0 ),
        .O(\spo[3]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_33 
       (.I0(\spo[3]_INST_0_i_66_n_0 ),
        .I1(\spo[3]_INST_0_i_67_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_69_n_0 ),
        .O(\spo[3]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_34 
       (.I0(\spo[3]_INST_0_i_70_n_0 ),
        .I1(\spo[3]_INST_0_i_71_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_73_n_0 ),
        .O(\spo[3]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_35 
       (.I0(\spo[3]_INST_0_i_74_n_0 ),
        .I1(\spo[3]_INST_0_i_75_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_76_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_77_n_0 ),
        .O(\spo[3]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_36 
       (.I0(\spo[3]_INST_0_i_78_n_0 ),
        .I1(\spo[3]_INST_0_i_79_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_80_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_81_n_0 ),
        .O(\spo[3]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_37 
       (.I0(\spo[3]_INST_0_i_82_n_0 ),
        .I1(\spo[3]_INST_0_i_83_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_84_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_85_n_0 ),
        .O(\spo[3]_INST_0_i_37_n_0 ));
  MUXF7 \spo[3]_INST_0_i_38 
       (.I0(g70_b3_n_0),
        .I1(g71_b3_n_0),
        .O(\spo[3]_INST_0_i_38_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_39 
       (.I0(g68_b3_n_0),
        .I1(g69_b3_n_0),
        .O(\spo[3]_INST_0_i_39_n_0 ),
        .S(a[6]));
  MUXF8 \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_12_n_0 ),
        .I1(\spo[3]_INST_0_i_13_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ),
        .S(a[10]));
  MUXF7 \spo[3]_INST_0_i_40 
       (.I0(g66_b3_n_0),
        .I1(g67_b3_n_0),
        .O(\spo[3]_INST_0_i_40_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_41 
       (.I0(g64_b3_n_0),
        .I1(g65_b3_n_0),
        .O(\spo[3]_INST_0_i_41_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_42 
       (.I0(g78_b3_n_0),
        .I1(g79_b3_n_0),
        .O(\spo[3]_INST_0_i_42_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_43 
       (.I0(g76_b3_n_0),
        .I1(g77_b3_n_0),
        .O(\spo[3]_INST_0_i_43_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_44 
       (.I0(g74_b3_n_0),
        .I1(g75_b3_n_0),
        .O(\spo[3]_INST_0_i_44_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_45 
       (.I0(g72_b3_n_0),
        .I1(g73_b3_n_0),
        .O(\spo[3]_INST_0_i_45_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_46 
       (.I0(g86_b3_n_0),
        .I1(g87_b3_n_0),
        .O(\spo[3]_INST_0_i_46_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_47 
       (.I0(g84_b3_n_0),
        .I1(g85_b3_n_0),
        .O(\spo[3]_INST_0_i_47_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_48 
       (.I0(g82_b3_n_0),
        .I1(g83_b3_n_0),
        .O(\spo[3]_INST_0_i_48_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_49 
       (.I0(g80_b3_n_0),
        .I1(g81_b3_n_0),
        .O(\spo[3]_INST_0_i_49_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_5 
       (.I0(\spo[3]_INST_0_i_14_n_0 ),
        .I1(\spo[3]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_16_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_17_n_0 ),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  MUXF7 \spo[3]_INST_0_i_50 
       (.I0(g94_b3_n_0),
        .I1(g95_b3_n_0),
        .O(\spo[3]_INST_0_i_50_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_51 
       (.I0(g92_b3_n_0),
        .I1(g93_b3_n_0),
        .O(\spo[3]_INST_0_i_51_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_52 
       (.I0(g90_b3_n_0),
        .I1(g91_b3_n_0),
        .O(\spo[3]_INST_0_i_52_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_53 
       (.I0(g88_b3_n_0),
        .I1(g89_b3_n_0),
        .O(\spo[3]_INST_0_i_53_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_54 
       (.I0(g38_b3_n_0),
        .I1(g39_b3_n_0),
        .O(\spo[3]_INST_0_i_54_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_55 
       (.I0(g36_b3_n_0),
        .I1(g37_b3_n_0),
        .O(\spo[3]_INST_0_i_55_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_56 
       (.I0(g34_b3_n_0),
        .I1(g35_b3_n_0),
        .O(\spo[3]_INST_0_i_56_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_57 
       (.I0(g32_b3_n_0),
        .I1(g33_b3_n_0),
        .O(\spo[3]_INST_0_i_57_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_58 
       (.I0(g46_b3_n_0),
        .I1(g47_b3_n_0),
        .O(\spo[3]_INST_0_i_58_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_59 
       (.I0(g44_b3_n_0),
        .I1(g45_b3_n_0),
        .O(\spo[3]_INST_0_i_59_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_6 
       (.I0(\spo[3]_INST_0_i_18_n_0 ),
        .I1(\spo[3]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_20_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_21_n_0 ),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  MUXF7 \spo[3]_INST_0_i_60 
       (.I0(g42_b3_n_0),
        .I1(g43_b3_n_0),
        .O(\spo[3]_INST_0_i_60_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_61 
       (.I0(g40_b3_n_0),
        .I1(g41_b3_n_0),
        .O(\spo[3]_INST_0_i_61_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_62 
       (.I0(g54_b3_n_0),
        .I1(g55_b3_n_0),
        .O(\spo[3]_INST_0_i_62_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_63 
       (.I0(g52_b3_n_0),
        .I1(g53_b3_n_0),
        .O(\spo[3]_INST_0_i_63_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_64 
       (.I0(g50_b3_n_0),
        .I1(g51_b3_n_0),
        .O(\spo[3]_INST_0_i_64_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_65 
       (.I0(g48_b3_n_0),
        .I1(g49_b3_n_0),
        .O(\spo[3]_INST_0_i_65_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_66 
       (.I0(g62_b3_n_0),
        .I1(g63_b3_n_0),
        .O(\spo[3]_INST_0_i_66_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_67 
       (.I0(g60_b3_n_0),
        .I1(g61_b3_n_0),
        .O(\spo[3]_INST_0_i_67_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_68 
       (.I0(g58_b3_n_0),
        .I1(g59_b3_n_0),
        .O(\spo[3]_INST_0_i_68_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_69 
       (.I0(g56_b3_n_0),
        .I1(g57_b3_n_0),
        .O(\spo[3]_INST_0_i_69_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_7 
       (.I0(\spo[3]_INST_0_i_22_n_0 ),
        .I1(\spo[3]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[3]_INST_0_i_24_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_25_n_0 ),
        .O(\spo[3]_INST_0_i_7_n_0 ));
  MUXF7 \spo[3]_INST_0_i_70 
       (.I0(g6_b3_n_0),
        .I1(g7_b3_n_0),
        .O(\spo[3]_INST_0_i_70_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_71 
       (.I0(g4_b3_n_0),
        .I1(g5_b3_n_0),
        .O(\spo[3]_INST_0_i_71_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_72 
       (.I0(g2_b3_n_0),
        .I1(g3_b3_n_0),
        .O(\spo[3]_INST_0_i_72_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_73 
       (.I0(g0_b3_n_0),
        .I1(g1_b3_n_0),
        .O(\spo[3]_INST_0_i_73_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_74 
       (.I0(g14_b3_n_0),
        .I1(g15_b3_n_0),
        .O(\spo[3]_INST_0_i_74_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_75 
       (.I0(g12_b3_n_0),
        .I1(g13_b3_n_0),
        .O(\spo[3]_INST_0_i_75_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_76 
       (.I0(g10_b3_n_0),
        .I1(g11_b3_n_0),
        .O(\spo[3]_INST_0_i_76_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_77 
       (.I0(g8_b3_n_0),
        .I1(g9_b3_n_0),
        .O(\spo[3]_INST_0_i_77_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_78 
       (.I0(g22_b3_n_0),
        .I1(g23_b3_n_0),
        .O(\spo[3]_INST_0_i_78_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_79 
       (.I0(g20_b3_n_0),
        .I1(g21_b3_n_0),
        .O(\spo[3]_INST_0_i_79_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_8 
       (.I0(\spo[3]_INST_0_i_26_n_0 ),
        .I1(\spo[3]_INST_0_i_27_n_0 ),
        .O(\spo[3]_INST_0_i_8_n_0 ),
        .S(a[9]));
  MUXF7 \spo[3]_INST_0_i_80 
       (.I0(g18_b3_n_0),
        .I1(g19_b3_n_0),
        .O(\spo[3]_INST_0_i_80_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_81 
       (.I0(g16_b3_n_0),
        .I1(g17_b3_n_0),
        .O(\spo[3]_INST_0_i_81_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_82 
       (.I0(g30_b3_n_0),
        .I1(g31_b3_n_0),
        .O(\spo[3]_INST_0_i_82_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_83 
       (.I0(g28_b3_n_0),
        .I1(g29_b3_n_0),
        .O(\spo[3]_INST_0_i_83_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_84 
       (.I0(g26_b3_n_0),
        .I1(g27_b3_n_0),
        .O(\spo[3]_INST_0_i_84_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_85 
       (.I0(g24_b3_n_0),
        .I1(g25_b3_n_0),
        .O(\spo[3]_INST_0_i_85_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_28_n_0 ),
        .I1(\spo[3]_INST_0_i_29_n_0 ),
        .O(\spo[3]_INST_0_i_9_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .I2(a[12]),
        .I3(\spo[4]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[4]_INST_0_i_4_n_0 ),
        .O(spo[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[4]_INST_0_i_6_n_0 ),
        .I3(a[9]),
        .I4(\spo[4]_INST_0_i_7_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  MUXF7 \spo[4]_INST_0_i_10 
       (.I0(\spo[4]_INST_0_i_30_n_0 ),
        .I1(\spo[4]_INST_0_i_31_n_0 ),
        .O(\spo[4]_INST_0_i_10_n_0 ),
        .S(a[9]));
  MUXF7 \spo[4]_INST_0_i_11 
       (.I0(\spo[4]_INST_0_i_32_n_0 ),
        .I1(\spo[4]_INST_0_i_33_n_0 ),
        .O(\spo[4]_INST_0_i_11_n_0 ),
        .S(a[9]));
  MUXF7 \spo[4]_INST_0_i_12 
       (.I0(\spo[4]_INST_0_i_34_n_0 ),
        .I1(\spo[4]_INST_0_i_35_n_0 ),
        .O(\spo[4]_INST_0_i_12_n_0 ),
        .S(a[9]));
  MUXF7 \spo[4]_INST_0_i_13 
       (.I0(\spo[4]_INST_0_i_36_n_0 ),
        .I1(\spo[4]_INST_0_i_37_n_0 ),
        .O(\spo[4]_INST_0_i_13_n_0 ),
        .S(a[9]));
  MUXF7 \spo[4]_INST_0_i_14 
       (.I0(g118_b4_n_0),
        .I1(g119_b4_n_0),
        .O(\spo[4]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_15 
       (.I0(g116_b4_n_0),
        .I1(g117_b4_n_0),
        .O(\spo[4]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_16 
       (.I0(g114_b4_n_0),
        .I1(g115_b4_n_0),
        .O(\spo[4]_INST_0_i_16_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_17 
       (.I0(g112_b4_n_0),
        .I1(g113_b4_n_0),
        .O(\spo[4]_INST_0_i_17_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_18 
       (.I0(g110_b4_n_0),
        .I1(g111_b4_n_0),
        .O(\spo[4]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_19 
       (.I0(g108_b4_n_0),
        .I1(g109_b4_n_0),
        .O(\spo[4]_INST_0_i_19_n_0 ),
        .S(a[6]));
  MUXF8 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_8_n_0 ),
        .I1(\spo[4]_INST_0_i_9_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[10]));
  MUXF7 \spo[4]_INST_0_i_20 
       (.I0(g106_b4_n_0),
        .I1(g107_b4_n_0),
        .O(\spo[4]_INST_0_i_20_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_21 
       (.I0(g104_b4_n_0),
        .I1(g105_b4_n_0),
        .O(\spo[4]_INST_0_i_21_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_22 
       (.I0(g102_b4_n_0),
        .I1(g103_b4_n_0),
        .O(\spo[4]_INST_0_i_22_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_23 
       (.I0(g100_b4_n_0),
        .I1(g101_b4_n_0),
        .O(\spo[4]_INST_0_i_23_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_24 
       (.I0(g98_b4_n_0),
        .I1(g99_b4_n_0),
        .O(\spo[4]_INST_0_i_24_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_25 
       (.I0(g96_b4_n_0),
        .I1(g97_b4_n_0),
        .O(\spo[4]_INST_0_i_25_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_26 
       (.I0(\spo[4]_INST_0_i_38_n_0 ),
        .I1(\spo[4]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_40_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_41_n_0 ),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_27 
       (.I0(\spo[4]_INST_0_i_42_n_0 ),
        .I1(\spo[4]_INST_0_i_43_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_45_n_0 ),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_28 
       (.I0(\spo[4]_INST_0_i_46_n_0 ),
        .I1(\spo[4]_INST_0_i_47_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_48_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_49_n_0 ),
        .O(\spo[4]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_29 
       (.I0(\spo[4]_INST_0_i_50_n_0 ),
        .I1(\spo[4]_INST_0_i_51_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_53_n_0 ),
        .O(\spo[4]_INST_0_i_29_n_0 ));
  MUXF8 \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_10_n_0 ),
        .I1(\spo[4]_INST_0_i_11_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_30 
       (.I0(\spo[4]_INST_0_i_54_n_0 ),
        .I1(\spo[4]_INST_0_i_55_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_57_n_0 ),
        .O(\spo[4]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_31 
       (.I0(\spo[4]_INST_0_i_58_n_0 ),
        .I1(\spo[4]_INST_0_i_59_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_60_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_61_n_0 ),
        .O(\spo[4]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_32 
       (.I0(\spo[4]_INST_0_i_62_n_0 ),
        .I1(\spo[4]_INST_0_i_63_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_65_n_0 ),
        .O(\spo[4]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_33 
       (.I0(\spo[4]_INST_0_i_66_n_0 ),
        .I1(\spo[4]_INST_0_i_67_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_69_n_0 ),
        .O(\spo[4]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_34 
       (.I0(\spo[4]_INST_0_i_70_n_0 ),
        .I1(\spo[4]_INST_0_i_71_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_73_n_0 ),
        .O(\spo[4]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_35 
       (.I0(\spo[4]_INST_0_i_74_n_0 ),
        .I1(\spo[4]_INST_0_i_75_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_76_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_77_n_0 ),
        .O(\spo[4]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_36 
       (.I0(\spo[4]_INST_0_i_78_n_0 ),
        .I1(\spo[4]_INST_0_i_79_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_80_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_81_n_0 ),
        .O(\spo[4]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_37 
       (.I0(\spo[4]_INST_0_i_82_n_0 ),
        .I1(\spo[4]_INST_0_i_83_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_84_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_85_n_0 ),
        .O(\spo[4]_INST_0_i_37_n_0 ));
  MUXF7 \spo[4]_INST_0_i_38 
       (.I0(g70_b4_n_0),
        .I1(g71_b4_n_0),
        .O(\spo[4]_INST_0_i_38_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_39 
       (.I0(g68_b4_n_0),
        .I1(g69_b4_n_0),
        .O(\spo[4]_INST_0_i_39_n_0 ),
        .S(a[6]));
  MUXF8 \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_12_n_0 ),
        .I1(\spo[4]_INST_0_i_13_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ),
        .S(a[10]));
  MUXF7 \spo[4]_INST_0_i_40 
       (.I0(g66_b4_n_0),
        .I1(g67_b4_n_0),
        .O(\spo[4]_INST_0_i_40_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_41 
       (.I0(g64_b4_n_0),
        .I1(g65_b4_n_0),
        .O(\spo[4]_INST_0_i_41_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_42 
       (.I0(g78_b4_n_0),
        .I1(g79_b4_n_0),
        .O(\spo[4]_INST_0_i_42_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_43 
       (.I0(g76_b4_n_0),
        .I1(g77_b4_n_0),
        .O(\spo[4]_INST_0_i_43_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_44 
       (.I0(g74_b4_n_0),
        .I1(g75_b4_n_0),
        .O(\spo[4]_INST_0_i_44_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_45 
       (.I0(g72_b4_n_0),
        .I1(g73_b4_n_0),
        .O(\spo[4]_INST_0_i_45_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_46 
       (.I0(g86_b4_n_0),
        .I1(g87_b4_n_0),
        .O(\spo[4]_INST_0_i_46_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_47 
       (.I0(g84_b4_n_0),
        .I1(g85_b4_n_0),
        .O(\spo[4]_INST_0_i_47_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_48 
       (.I0(g82_b4_n_0),
        .I1(g83_b4_n_0),
        .O(\spo[4]_INST_0_i_48_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_49 
       (.I0(g80_b4_n_0),
        .I1(g81_b4_n_0),
        .O(\spo[4]_INST_0_i_49_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_5 
       (.I0(\spo[4]_INST_0_i_14_n_0 ),
        .I1(\spo[4]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_16_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_17_n_0 ),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  MUXF7 \spo[4]_INST_0_i_50 
       (.I0(g94_b4_n_0),
        .I1(g95_b4_n_0),
        .O(\spo[4]_INST_0_i_50_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_51 
       (.I0(g92_b4_n_0),
        .I1(g93_b4_n_0),
        .O(\spo[4]_INST_0_i_51_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_52 
       (.I0(g90_b4_n_0),
        .I1(g91_b4_n_0),
        .O(\spo[4]_INST_0_i_52_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_53 
       (.I0(g88_b4_n_0),
        .I1(g89_b4_n_0),
        .O(\spo[4]_INST_0_i_53_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_54 
       (.I0(g38_b4_n_0),
        .I1(g39_b4_n_0),
        .O(\spo[4]_INST_0_i_54_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_55 
       (.I0(g36_b4_n_0),
        .I1(g37_b4_n_0),
        .O(\spo[4]_INST_0_i_55_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_56 
       (.I0(g34_b4_n_0),
        .I1(g35_b4_n_0),
        .O(\spo[4]_INST_0_i_56_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_57 
       (.I0(g32_b4_n_0),
        .I1(g33_b4_n_0),
        .O(\spo[4]_INST_0_i_57_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_58 
       (.I0(g46_b4_n_0),
        .I1(g47_b4_n_0),
        .O(\spo[4]_INST_0_i_58_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_59 
       (.I0(g44_b4_n_0),
        .I1(g45_b4_n_0),
        .O(\spo[4]_INST_0_i_59_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_6 
       (.I0(\spo[4]_INST_0_i_18_n_0 ),
        .I1(\spo[4]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_20_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_21_n_0 ),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  MUXF7 \spo[4]_INST_0_i_60 
       (.I0(g42_b4_n_0),
        .I1(g43_b4_n_0),
        .O(\spo[4]_INST_0_i_60_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_61 
       (.I0(g40_b4_n_0),
        .I1(g41_b4_n_0),
        .O(\spo[4]_INST_0_i_61_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_62 
       (.I0(g54_b4_n_0),
        .I1(g55_b4_n_0),
        .O(\spo[4]_INST_0_i_62_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_63 
       (.I0(g52_b4_n_0),
        .I1(g53_b4_n_0),
        .O(\spo[4]_INST_0_i_63_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_64 
       (.I0(g50_b4_n_0),
        .I1(g51_b4_n_0),
        .O(\spo[4]_INST_0_i_64_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_65 
       (.I0(g48_b4_n_0),
        .I1(g49_b4_n_0),
        .O(\spo[4]_INST_0_i_65_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_66 
       (.I0(g62_b4_n_0),
        .I1(g63_b4_n_0),
        .O(\spo[4]_INST_0_i_66_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_67 
       (.I0(g60_b4_n_0),
        .I1(g61_b4_n_0),
        .O(\spo[4]_INST_0_i_67_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_68 
       (.I0(g58_b4_n_0),
        .I1(g59_b4_n_0),
        .O(\spo[4]_INST_0_i_68_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_69 
       (.I0(g56_b4_n_0),
        .I1(g57_b4_n_0),
        .O(\spo[4]_INST_0_i_69_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_7 
       (.I0(\spo[4]_INST_0_i_22_n_0 ),
        .I1(\spo[4]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[4]_INST_0_i_24_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_25_n_0 ),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  MUXF7 \spo[4]_INST_0_i_70 
       (.I0(g6_b4_n_0),
        .I1(g7_b4_n_0),
        .O(\spo[4]_INST_0_i_70_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_71 
       (.I0(g4_b4_n_0),
        .I1(g5_b4_n_0),
        .O(\spo[4]_INST_0_i_71_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_72 
       (.I0(g2_b4_n_0),
        .I1(g3_b4_n_0),
        .O(\spo[4]_INST_0_i_72_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_73 
       (.I0(g0_b4_n_0),
        .I1(g1_b4_n_0),
        .O(\spo[4]_INST_0_i_73_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_74 
       (.I0(g14_b4_n_0),
        .I1(g15_b4_n_0),
        .O(\spo[4]_INST_0_i_74_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_75 
       (.I0(g12_b4_n_0),
        .I1(g13_b4_n_0),
        .O(\spo[4]_INST_0_i_75_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_76 
       (.I0(g10_b4_n_0),
        .I1(g11_b4_n_0),
        .O(\spo[4]_INST_0_i_76_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_77 
       (.I0(g8_b4_n_0),
        .I1(g9_b4_n_0),
        .O(\spo[4]_INST_0_i_77_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_78 
       (.I0(g22_b4_n_0),
        .I1(g23_b4_n_0),
        .O(\spo[4]_INST_0_i_78_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_79 
       (.I0(g20_b4_n_0),
        .I1(g21_b4_n_0),
        .O(\spo[4]_INST_0_i_79_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_8 
       (.I0(\spo[4]_INST_0_i_26_n_0 ),
        .I1(\spo[4]_INST_0_i_27_n_0 ),
        .O(\spo[4]_INST_0_i_8_n_0 ),
        .S(a[9]));
  MUXF7 \spo[4]_INST_0_i_80 
       (.I0(g18_b4_n_0),
        .I1(g19_b4_n_0),
        .O(\spo[4]_INST_0_i_80_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_81 
       (.I0(g16_b4_n_0),
        .I1(g17_b4_n_0),
        .O(\spo[4]_INST_0_i_81_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_82 
       (.I0(g30_b4_n_0),
        .I1(g31_b4_n_0),
        .O(\spo[4]_INST_0_i_82_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_83 
       (.I0(g28_b4_n_0),
        .I1(g29_b4_n_0),
        .O(\spo[4]_INST_0_i_83_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_84 
       (.I0(g26_b4_n_0),
        .I1(g27_b4_n_0),
        .O(\spo[4]_INST_0_i_84_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_85 
       (.I0(g24_b4_n_0),
        .I1(g25_b4_n_0),
        .O(\spo[4]_INST_0_i_85_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_9 
       (.I0(\spo[4]_INST_0_i_28_n_0 ),
        .I1(\spo[4]_INST_0_i_29_n_0 ),
        .O(\spo[4]_INST_0_i_9_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .I2(a[12]),
        .I3(\spo[5]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[5]_INST_0_i_4_n_0 ),
        .O(spo[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_6_n_0 ),
        .I3(a[9]),
        .I4(\spo[5]_INST_0_i_7_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  MUXF7 \spo[5]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_30_n_0 ),
        .I1(\spo[5]_INST_0_i_31_n_0 ),
        .O(\spo[5]_INST_0_i_10_n_0 ),
        .S(a[9]));
  MUXF7 \spo[5]_INST_0_i_11 
       (.I0(\spo[5]_INST_0_i_32_n_0 ),
        .I1(\spo[5]_INST_0_i_33_n_0 ),
        .O(\spo[5]_INST_0_i_11_n_0 ),
        .S(a[9]));
  MUXF7 \spo[5]_INST_0_i_12 
       (.I0(\spo[5]_INST_0_i_34_n_0 ),
        .I1(\spo[5]_INST_0_i_35_n_0 ),
        .O(\spo[5]_INST_0_i_12_n_0 ),
        .S(a[9]));
  MUXF7 \spo[5]_INST_0_i_13 
       (.I0(\spo[5]_INST_0_i_36_n_0 ),
        .I1(\spo[5]_INST_0_i_37_n_0 ),
        .O(\spo[5]_INST_0_i_13_n_0 ),
        .S(a[9]));
  MUXF7 \spo[5]_INST_0_i_14 
       (.I0(g118_b5_n_0),
        .I1(g119_b5_n_0),
        .O(\spo[5]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_15 
       (.I0(g116_b5_n_0),
        .I1(g117_b5_n_0),
        .O(\spo[5]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_16 
       (.I0(g114_b5_n_0),
        .I1(g115_b5_n_0),
        .O(\spo[5]_INST_0_i_16_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_17 
       (.I0(g112_b5_n_0),
        .I1(g113_b5_n_0),
        .O(\spo[5]_INST_0_i_17_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_18 
       (.I0(g110_b5_n_0),
        .I1(g111_b5_n_0),
        .O(\spo[5]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_19 
       (.I0(g108_b5_n_0),
        .I1(g109_b5_n_0),
        .O(\spo[5]_INST_0_i_19_n_0 ),
        .S(a[6]));
  MUXF8 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_8_n_0 ),
        .I1(\spo[5]_INST_0_i_9_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[10]));
  MUXF7 \spo[5]_INST_0_i_20 
       (.I0(g106_b5_n_0),
        .I1(g107_b5_n_0),
        .O(\spo[5]_INST_0_i_20_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_21 
       (.I0(g104_b5_n_0),
        .I1(g105_b5_n_0),
        .O(\spo[5]_INST_0_i_21_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_22 
       (.I0(g102_b5_n_0),
        .I1(g103_b5_n_0),
        .O(\spo[5]_INST_0_i_22_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_23 
       (.I0(g100_b5_n_0),
        .I1(g101_b5_n_0),
        .O(\spo[5]_INST_0_i_23_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_24 
       (.I0(g98_b5_n_0),
        .I1(g99_b5_n_0),
        .O(\spo[5]_INST_0_i_24_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_25 
       (.I0(g96_b5_n_0),
        .I1(g97_b5_n_0),
        .O(\spo[5]_INST_0_i_25_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_26 
       (.I0(\spo[5]_INST_0_i_38_n_0 ),
        .I1(\spo[5]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_40_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_41_n_0 ),
        .O(\spo[5]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_27 
       (.I0(\spo[5]_INST_0_i_42_n_0 ),
        .I1(\spo[5]_INST_0_i_43_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_45_n_0 ),
        .O(\spo[5]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_28 
       (.I0(\spo[5]_INST_0_i_46_n_0 ),
        .I1(\spo[5]_INST_0_i_47_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_48_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_49_n_0 ),
        .O(\spo[5]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_29 
       (.I0(\spo[5]_INST_0_i_50_n_0 ),
        .I1(\spo[5]_INST_0_i_51_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_53_n_0 ),
        .O(\spo[5]_INST_0_i_29_n_0 ));
  MUXF8 \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_10_n_0 ),
        .I1(\spo[5]_INST_0_i_11_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_30 
       (.I0(\spo[5]_INST_0_i_54_n_0 ),
        .I1(\spo[5]_INST_0_i_55_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_57_n_0 ),
        .O(\spo[5]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_31 
       (.I0(\spo[5]_INST_0_i_58_n_0 ),
        .I1(\spo[5]_INST_0_i_59_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_60_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_61_n_0 ),
        .O(\spo[5]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_32 
       (.I0(\spo[5]_INST_0_i_62_n_0 ),
        .I1(\spo[5]_INST_0_i_63_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_65_n_0 ),
        .O(\spo[5]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_33 
       (.I0(\spo[5]_INST_0_i_66_n_0 ),
        .I1(\spo[5]_INST_0_i_67_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_69_n_0 ),
        .O(\spo[5]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_34 
       (.I0(\spo[5]_INST_0_i_70_n_0 ),
        .I1(\spo[5]_INST_0_i_71_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_73_n_0 ),
        .O(\spo[5]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_35 
       (.I0(\spo[5]_INST_0_i_74_n_0 ),
        .I1(\spo[5]_INST_0_i_75_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_76_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_77_n_0 ),
        .O(\spo[5]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_36 
       (.I0(\spo[5]_INST_0_i_78_n_0 ),
        .I1(\spo[5]_INST_0_i_79_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_80_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_81_n_0 ),
        .O(\spo[5]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_37 
       (.I0(\spo[5]_INST_0_i_82_n_0 ),
        .I1(\spo[5]_INST_0_i_83_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_84_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_85_n_0 ),
        .O(\spo[5]_INST_0_i_37_n_0 ));
  MUXF7 \spo[5]_INST_0_i_38 
       (.I0(g70_b5_n_0),
        .I1(g71_b5_n_0),
        .O(\spo[5]_INST_0_i_38_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_39 
       (.I0(g68_b5_n_0),
        .I1(g69_b5_n_0),
        .O(\spo[5]_INST_0_i_39_n_0 ),
        .S(a[6]));
  MUXF8 \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_12_n_0 ),
        .I1(\spo[5]_INST_0_i_13_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ),
        .S(a[10]));
  MUXF7 \spo[5]_INST_0_i_40 
       (.I0(g66_b5_n_0),
        .I1(g67_b5_n_0),
        .O(\spo[5]_INST_0_i_40_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_41 
       (.I0(g64_b5_n_0),
        .I1(g65_b5_n_0),
        .O(\spo[5]_INST_0_i_41_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_42 
       (.I0(g78_b5_n_0),
        .I1(g79_b5_n_0),
        .O(\spo[5]_INST_0_i_42_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_43 
       (.I0(g76_b5_n_0),
        .I1(g77_b5_n_0),
        .O(\spo[5]_INST_0_i_43_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_44 
       (.I0(g74_b5_n_0),
        .I1(g75_b5_n_0),
        .O(\spo[5]_INST_0_i_44_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_45 
       (.I0(g72_b5_n_0),
        .I1(g73_b5_n_0),
        .O(\spo[5]_INST_0_i_45_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_46 
       (.I0(g86_b5_n_0),
        .I1(g87_b5_n_0),
        .O(\spo[5]_INST_0_i_46_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_47 
       (.I0(g84_b5_n_0),
        .I1(g85_b5_n_0),
        .O(\spo[5]_INST_0_i_47_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_48 
       (.I0(g82_b5_n_0),
        .I1(g83_b5_n_0),
        .O(\spo[5]_INST_0_i_48_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_49 
       (.I0(g80_b5_n_0),
        .I1(g81_b5_n_0),
        .O(\spo[5]_INST_0_i_49_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_14_n_0 ),
        .I1(\spo[5]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_16_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_17_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  MUXF7 \spo[5]_INST_0_i_50 
       (.I0(g94_b5_n_0),
        .I1(g95_b5_n_0),
        .O(\spo[5]_INST_0_i_50_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_51 
       (.I0(g92_b5_n_0),
        .I1(g93_b5_n_0),
        .O(\spo[5]_INST_0_i_51_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_52 
       (.I0(g90_b5_n_0),
        .I1(g91_b5_n_0),
        .O(\spo[5]_INST_0_i_52_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_53 
       (.I0(g88_b5_n_0),
        .I1(g89_b5_n_0),
        .O(\spo[5]_INST_0_i_53_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_54 
       (.I0(g38_b5_n_0),
        .I1(g39_b5_n_0),
        .O(\spo[5]_INST_0_i_54_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_55 
       (.I0(g36_b5_n_0),
        .I1(g37_b5_n_0),
        .O(\spo[5]_INST_0_i_55_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_56 
       (.I0(g34_b5_n_0),
        .I1(g35_b5_n_0),
        .O(\spo[5]_INST_0_i_56_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_57 
       (.I0(g32_b5_n_0),
        .I1(g33_b5_n_0),
        .O(\spo[5]_INST_0_i_57_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_58 
       (.I0(g46_b5_n_0),
        .I1(g47_b5_n_0),
        .O(\spo[5]_INST_0_i_58_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_59 
       (.I0(g44_b5_n_0),
        .I1(g45_b5_n_0),
        .O(\spo[5]_INST_0_i_59_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_6 
       (.I0(\spo[5]_INST_0_i_18_n_0 ),
        .I1(\spo[5]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_20_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_21_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  MUXF7 \spo[5]_INST_0_i_60 
       (.I0(g42_b5_n_0),
        .I1(g43_b5_n_0),
        .O(\spo[5]_INST_0_i_60_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_61 
       (.I0(g40_b5_n_0),
        .I1(g41_b5_n_0),
        .O(\spo[5]_INST_0_i_61_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_62 
       (.I0(g54_b5_n_0),
        .I1(g55_b5_n_0),
        .O(\spo[5]_INST_0_i_62_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_63 
       (.I0(g52_b5_n_0),
        .I1(g53_b5_n_0),
        .O(\spo[5]_INST_0_i_63_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_64 
       (.I0(g50_b5_n_0),
        .I1(g51_b5_n_0),
        .O(\spo[5]_INST_0_i_64_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_65 
       (.I0(g48_b5_n_0),
        .I1(g49_b5_n_0),
        .O(\spo[5]_INST_0_i_65_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_66 
       (.I0(g62_b5_n_0),
        .I1(g63_b5_n_0),
        .O(\spo[5]_INST_0_i_66_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_67 
       (.I0(g60_b5_n_0),
        .I1(g61_b5_n_0),
        .O(\spo[5]_INST_0_i_67_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_68 
       (.I0(g58_b5_n_0),
        .I1(g59_b5_n_0),
        .O(\spo[5]_INST_0_i_68_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_69 
       (.I0(g56_b5_n_0),
        .I1(g57_b5_n_0),
        .O(\spo[5]_INST_0_i_69_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_22_n_0 ),
        .I1(\spo[5]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[5]_INST_0_i_24_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_25_n_0 ),
        .O(\spo[5]_INST_0_i_7_n_0 ));
  MUXF7 \spo[5]_INST_0_i_70 
       (.I0(g6_b5_n_0),
        .I1(g7_b5_n_0),
        .O(\spo[5]_INST_0_i_70_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_71 
       (.I0(g4_b5_n_0),
        .I1(g5_b5_n_0),
        .O(\spo[5]_INST_0_i_71_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_72 
       (.I0(g2_b5_n_0),
        .I1(g3_b5_n_0),
        .O(\spo[5]_INST_0_i_72_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_73 
       (.I0(g0_b5_n_0),
        .I1(g1_b5_n_0),
        .O(\spo[5]_INST_0_i_73_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_74 
       (.I0(g14_b5_n_0),
        .I1(g15_b5_n_0),
        .O(\spo[5]_INST_0_i_74_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_75 
       (.I0(g12_b5_n_0),
        .I1(g13_b5_n_0),
        .O(\spo[5]_INST_0_i_75_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_76 
       (.I0(g10_b5_n_0),
        .I1(g11_b5_n_0),
        .O(\spo[5]_INST_0_i_76_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_77 
       (.I0(g8_b5_n_0),
        .I1(g9_b5_n_0),
        .O(\spo[5]_INST_0_i_77_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_78 
       (.I0(g22_b5_n_0),
        .I1(g23_b5_n_0),
        .O(\spo[5]_INST_0_i_78_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_79 
       (.I0(g20_b5_n_0),
        .I1(g21_b5_n_0),
        .O(\spo[5]_INST_0_i_79_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_8 
       (.I0(\spo[5]_INST_0_i_26_n_0 ),
        .I1(\spo[5]_INST_0_i_27_n_0 ),
        .O(\spo[5]_INST_0_i_8_n_0 ),
        .S(a[9]));
  MUXF7 \spo[5]_INST_0_i_80 
       (.I0(g18_b5_n_0),
        .I1(g19_b5_n_0),
        .O(\spo[5]_INST_0_i_80_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_81 
       (.I0(g16_b5_n_0),
        .I1(g17_b5_n_0),
        .O(\spo[5]_INST_0_i_81_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_82 
       (.I0(g30_b5_n_0),
        .I1(g31_b5_n_0),
        .O(\spo[5]_INST_0_i_82_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_83 
       (.I0(g28_b5_n_0),
        .I1(g29_b5_n_0),
        .O(\spo[5]_INST_0_i_83_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_84 
       (.I0(g26_b5_n_0),
        .I1(g27_b5_n_0),
        .O(\spo[5]_INST_0_i_84_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_85 
       (.I0(g24_b5_n_0),
        .I1(g25_b5_n_0),
        .O(\spo[5]_INST_0_i_85_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_28_n_0 ),
        .I1(\spo[5]_INST_0_i_29_n_0 ),
        .O(\spo[5]_INST_0_i_9_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .I2(a[12]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[6]_INST_0_i_4_n_0 ),
        .O(spo[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[6]_INST_0_i_6_n_0 ),
        .I3(a[9]),
        .I4(\spo[6]_INST_0_i_7_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  MUXF7 \spo[6]_INST_0_i_10 
       (.I0(\spo[6]_INST_0_i_30_n_0 ),
        .I1(\spo[6]_INST_0_i_31_n_0 ),
        .O(\spo[6]_INST_0_i_10_n_0 ),
        .S(a[9]));
  MUXF7 \spo[6]_INST_0_i_11 
       (.I0(\spo[6]_INST_0_i_32_n_0 ),
        .I1(\spo[6]_INST_0_i_33_n_0 ),
        .O(\spo[6]_INST_0_i_11_n_0 ),
        .S(a[9]));
  MUXF7 \spo[6]_INST_0_i_12 
       (.I0(\spo[6]_INST_0_i_34_n_0 ),
        .I1(\spo[6]_INST_0_i_35_n_0 ),
        .O(\spo[6]_INST_0_i_12_n_0 ),
        .S(a[9]));
  MUXF7 \spo[6]_INST_0_i_13 
       (.I0(\spo[6]_INST_0_i_36_n_0 ),
        .I1(\spo[6]_INST_0_i_37_n_0 ),
        .O(\spo[6]_INST_0_i_13_n_0 ),
        .S(a[9]));
  MUXF7 \spo[6]_INST_0_i_14 
       (.I0(g118_b6_n_0),
        .I1(g119_b6_n_0),
        .O(\spo[6]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_15 
       (.I0(g116_b6_n_0),
        .I1(g117_b6_n_0),
        .O(\spo[6]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_16 
       (.I0(g114_b6_n_0),
        .I1(g115_b6_n_0),
        .O(\spo[6]_INST_0_i_16_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_17 
       (.I0(g112_b6_n_0),
        .I1(g113_b6_n_0),
        .O(\spo[6]_INST_0_i_17_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_18 
       (.I0(g110_b6_n_0),
        .I1(g111_b6_n_0),
        .O(\spo[6]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_19 
       (.I0(g108_b6_n_0),
        .I1(g109_b6_n_0),
        .O(\spo[6]_INST_0_i_19_n_0 ),
        .S(a[6]));
  MUXF8 \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_8_n_0 ),
        .I1(\spo[6]_INST_0_i_9_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ),
        .S(a[10]));
  MUXF7 \spo[6]_INST_0_i_20 
       (.I0(g106_b6_n_0),
        .I1(g107_b6_n_0),
        .O(\spo[6]_INST_0_i_20_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_21 
       (.I0(g104_b6_n_0),
        .I1(g105_b6_n_0),
        .O(\spo[6]_INST_0_i_21_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_22 
       (.I0(g102_b6_n_0),
        .I1(g103_b6_n_0),
        .O(\spo[6]_INST_0_i_22_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_23 
       (.I0(g100_b6_n_0),
        .I1(g101_b6_n_0),
        .O(\spo[6]_INST_0_i_23_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_24 
       (.I0(g98_b6_n_0),
        .I1(g99_b6_n_0),
        .O(\spo[6]_INST_0_i_24_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_25 
       (.I0(g96_b6_n_0),
        .I1(g97_b6_n_0),
        .O(\spo[6]_INST_0_i_25_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_26 
       (.I0(\spo[6]_INST_0_i_38_n_0 ),
        .I1(\spo[6]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_40_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_41_n_0 ),
        .O(\spo[6]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_27 
       (.I0(\spo[6]_INST_0_i_42_n_0 ),
        .I1(\spo[6]_INST_0_i_43_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_45_n_0 ),
        .O(\spo[6]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_28 
       (.I0(\spo[6]_INST_0_i_46_n_0 ),
        .I1(\spo[6]_INST_0_i_47_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_48_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_49_n_0 ),
        .O(\spo[6]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_29 
       (.I0(\spo[6]_INST_0_i_50_n_0 ),
        .I1(\spo[6]_INST_0_i_51_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_53_n_0 ),
        .O(\spo[6]_INST_0_i_29_n_0 ));
  MUXF8 \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_10_n_0 ),
        .I1(\spo[6]_INST_0_i_11_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_30 
       (.I0(\spo[6]_INST_0_i_54_n_0 ),
        .I1(\spo[6]_INST_0_i_55_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_57_n_0 ),
        .O(\spo[6]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_31 
       (.I0(\spo[6]_INST_0_i_58_n_0 ),
        .I1(\spo[6]_INST_0_i_59_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_60_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_61_n_0 ),
        .O(\spo[6]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_32 
       (.I0(\spo[6]_INST_0_i_62_n_0 ),
        .I1(\spo[6]_INST_0_i_63_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_65_n_0 ),
        .O(\spo[6]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_33 
       (.I0(\spo[6]_INST_0_i_66_n_0 ),
        .I1(\spo[6]_INST_0_i_67_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_69_n_0 ),
        .O(\spo[6]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_34 
       (.I0(\spo[6]_INST_0_i_70_n_0 ),
        .I1(\spo[6]_INST_0_i_71_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_73_n_0 ),
        .O(\spo[6]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_35 
       (.I0(\spo[6]_INST_0_i_74_n_0 ),
        .I1(\spo[6]_INST_0_i_75_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_76_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_77_n_0 ),
        .O(\spo[6]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_36 
       (.I0(\spo[6]_INST_0_i_78_n_0 ),
        .I1(\spo[6]_INST_0_i_79_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_80_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_81_n_0 ),
        .O(\spo[6]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_37 
       (.I0(\spo[6]_INST_0_i_82_n_0 ),
        .I1(\spo[6]_INST_0_i_83_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_84_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_85_n_0 ),
        .O(\spo[6]_INST_0_i_37_n_0 ));
  MUXF7 \spo[6]_INST_0_i_38 
       (.I0(g70_b6_n_0),
        .I1(g71_b6_n_0),
        .O(\spo[6]_INST_0_i_38_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_39 
       (.I0(g68_b6_n_0),
        .I1(g69_b6_n_0),
        .O(\spo[6]_INST_0_i_39_n_0 ),
        .S(a[6]));
  MUXF8 \spo[6]_INST_0_i_4 
       (.I0(\spo[6]_INST_0_i_12_n_0 ),
        .I1(\spo[6]_INST_0_i_13_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ),
        .S(a[10]));
  MUXF7 \spo[6]_INST_0_i_40 
       (.I0(g66_b6_n_0),
        .I1(g67_b6_n_0),
        .O(\spo[6]_INST_0_i_40_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_41 
       (.I0(g64_b6_n_0),
        .I1(g65_b6_n_0),
        .O(\spo[6]_INST_0_i_41_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_42 
       (.I0(g78_b6_n_0),
        .I1(g79_b6_n_0),
        .O(\spo[6]_INST_0_i_42_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_43 
       (.I0(g76_b6_n_0),
        .I1(g77_b6_n_0),
        .O(\spo[6]_INST_0_i_43_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_44 
       (.I0(g74_b6_n_0),
        .I1(g75_b6_n_0),
        .O(\spo[6]_INST_0_i_44_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_45 
       (.I0(g72_b6_n_0),
        .I1(g73_b6_n_0),
        .O(\spo[6]_INST_0_i_45_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_46 
       (.I0(g86_b6_n_0),
        .I1(g87_b6_n_0),
        .O(\spo[6]_INST_0_i_46_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_47 
       (.I0(g84_b6_n_0),
        .I1(g85_b6_n_0),
        .O(\spo[6]_INST_0_i_47_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_48 
       (.I0(g82_b6_n_0),
        .I1(g83_b6_n_0),
        .O(\spo[6]_INST_0_i_48_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_49 
       (.I0(g80_b6_n_0),
        .I1(g81_b6_n_0),
        .O(\spo[6]_INST_0_i_49_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_5 
       (.I0(\spo[6]_INST_0_i_14_n_0 ),
        .I1(\spo[6]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_16_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_17_n_0 ),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  MUXF7 \spo[6]_INST_0_i_50 
       (.I0(g94_b6_n_0),
        .I1(g95_b6_n_0),
        .O(\spo[6]_INST_0_i_50_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_51 
       (.I0(g92_b6_n_0),
        .I1(g93_b6_n_0),
        .O(\spo[6]_INST_0_i_51_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_52 
       (.I0(g90_b6_n_0),
        .I1(g91_b6_n_0),
        .O(\spo[6]_INST_0_i_52_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_53 
       (.I0(g88_b6_n_0),
        .I1(g89_b6_n_0),
        .O(\spo[6]_INST_0_i_53_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_54 
       (.I0(g38_b6_n_0),
        .I1(g39_b6_n_0),
        .O(\spo[6]_INST_0_i_54_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_55 
       (.I0(g36_b6_n_0),
        .I1(g37_b6_n_0),
        .O(\spo[6]_INST_0_i_55_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_56 
       (.I0(g34_b6_n_0),
        .I1(g35_b6_n_0),
        .O(\spo[6]_INST_0_i_56_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_57 
       (.I0(g32_b6_n_0),
        .I1(g33_b6_n_0),
        .O(\spo[6]_INST_0_i_57_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_58 
       (.I0(g46_b6_n_0),
        .I1(g47_b6_n_0),
        .O(\spo[6]_INST_0_i_58_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_59 
       (.I0(g44_b6_n_0),
        .I1(g45_b6_n_0),
        .O(\spo[6]_INST_0_i_59_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_6 
       (.I0(\spo[6]_INST_0_i_18_n_0 ),
        .I1(\spo[6]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_20_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_21_n_0 ),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  MUXF7 \spo[6]_INST_0_i_60 
       (.I0(g42_b6_n_0),
        .I1(g43_b6_n_0),
        .O(\spo[6]_INST_0_i_60_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_61 
       (.I0(g40_b6_n_0),
        .I1(g41_b6_n_0),
        .O(\spo[6]_INST_0_i_61_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_62 
       (.I0(g54_b6_n_0),
        .I1(g55_b6_n_0),
        .O(\spo[6]_INST_0_i_62_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_63 
       (.I0(g52_b6_n_0),
        .I1(g53_b6_n_0),
        .O(\spo[6]_INST_0_i_63_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_64 
       (.I0(g50_b6_n_0),
        .I1(g51_b6_n_0),
        .O(\spo[6]_INST_0_i_64_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_65 
       (.I0(g48_b6_n_0),
        .I1(g49_b6_n_0),
        .O(\spo[6]_INST_0_i_65_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_66 
       (.I0(g62_b6_n_0),
        .I1(g63_b6_n_0),
        .O(\spo[6]_INST_0_i_66_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_67 
       (.I0(g60_b6_n_0),
        .I1(g61_b6_n_0),
        .O(\spo[6]_INST_0_i_67_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_68 
       (.I0(g58_b6_n_0),
        .I1(g59_b6_n_0),
        .O(\spo[6]_INST_0_i_68_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_69 
       (.I0(g56_b6_n_0),
        .I1(g57_b6_n_0),
        .O(\spo[6]_INST_0_i_69_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_7 
       (.I0(\spo[6]_INST_0_i_22_n_0 ),
        .I1(\spo[6]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[6]_INST_0_i_24_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_25_n_0 ),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  MUXF7 \spo[6]_INST_0_i_70 
       (.I0(g6_b6_n_0),
        .I1(g7_b6_n_0),
        .O(\spo[6]_INST_0_i_70_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_71 
       (.I0(g4_b6_n_0),
        .I1(g5_b6_n_0),
        .O(\spo[6]_INST_0_i_71_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_72 
       (.I0(g2_b6_n_0),
        .I1(g3_b6_n_0),
        .O(\spo[6]_INST_0_i_72_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_73 
       (.I0(g0_b6_n_0),
        .I1(g1_b6_n_0),
        .O(\spo[6]_INST_0_i_73_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_74 
       (.I0(g14_b6_n_0),
        .I1(g15_b6_n_0),
        .O(\spo[6]_INST_0_i_74_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_75 
       (.I0(g12_b6_n_0),
        .I1(g13_b6_n_0),
        .O(\spo[6]_INST_0_i_75_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_76 
       (.I0(g10_b6_n_0),
        .I1(g11_b6_n_0),
        .O(\spo[6]_INST_0_i_76_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_77 
       (.I0(g8_b6_n_0),
        .I1(g9_b6_n_0),
        .O(\spo[6]_INST_0_i_77_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_78 
       (.I0(g22_b6_n_0),
        .I1(g23_b6_n_0),
        .O(\spo[6]_INST_0_i_78_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_79 
       (.I0(g20_b6_n_0),
        .I1(g21_b6_n_0),
        .O(\spo[6]_INST_0_i_79_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_8 
       (.I0(\spo[6]_INST_0_i_26_n_0 ),
        .I1(\spo[6]_INST_0_i_27_n_0 ),
        .O(\spo[6]_INST_0_i_8_n_0 ),
        .S(a[9]));
  MUXF7 \spo[6]_INST_0_i_80 
       (.I0(g18_b6_n_0),
        .I1(g19_b6_n_0),
        .O(\spo[6]_INST_0_i_80_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_81 
       (.I0(g16_b6_n_0),
        .I1(g17_b6_n_0),
        .O(\spo[6]_INST_0_i_81_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_82 
       (.I0(g30_b6_n_0),
        .I1(g31_b6_n_0),
        .O(\spo[6]_INST_0_i_82_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_83 
       (.I0(g28_b6_n_0),
        .I1(g29_b6_n_0),
        .O(\spo[6]_INST_0_i_83_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_84 
       (.I0(g26_b6_n_0),
        .I1(g27_b6_n_0),
        .O(\spo[6]_INST_0_i_84_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_85 
       (.I0(g24_b6_n_0),
        .I1(g25_b6_n_0),
        .O(\spo[6]_INST_0_i_85_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_9 
       (.I0(\spo[6]_INST_0_i_28_n_0 ),
        .I1(\spo[6]_INST_0_i_29_n_0 ),
        .O(\spo[6]_INST_0_i_9_n_0 ),
        .S(a[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .I2(a[12]),
        .I3(\spo[7]_INST_0_i_3_n_0 ),
        .I4(a[11]),
        .I5(\spo[7]_INST_0_i_4_n_0 ),
        .O(spo[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(a[10]),
        .I2(\spo[7]_INST_0_i_6_n_0 ),
        .I3(a[9]),
        .I4(\spo[7]_INST_0_i_7_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  MUXF7 \spo[7]_INST_0_i_10 
       (.I0(\spo[7]_INST_0_i_30_n_0 ),
        .I1(\spo[7]_INST_0_i_31_n_0 ),
        .O(\spo[7]_INST_0_i_10_n_0 ),
        .S(a[9]));
  MUXF7 \spo[7]_INST_0_i_11 
       (.I0(\spo[7]_INST_0_i_32_n_0 ),
        .I1(\spo[7]_INST_0_i_33_n_0 ),
        .O(\spo[7]_INST_0_i_11_n_0 ),
        .S(a[9]));
  MUXF7 \spo[7]_INST_0_i_12 
       (.I0(\spo[7]_INST_0_i_34_n_0 ),
        .I1(\spo[7]_INST_0_i_35_n_0 ),
        .O(\spo[7]_INST_0_i_12_n_0 ),
        .S(a[9]));
  MUXF7 \spo[7]_INST_0_i_13 
       (.I0(\spo[7]_INST_0_i_36_n_0 ),
        .I1(\spo[7]_INST_0_i_37_n_0 ),
        .O(\spo[7]_INST_0_i_13_n_0 ),
        .S(a[9]));
  MUXF7 \spo[7]_INST_0_i_14 
       (.I0(g118_b7_n_0),
        .I1(g119_b7_n_0),
        .O(\spo[7]_INST_0_i_14_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_15 
       (.I0(g116_b7_n_0),
        .I1(g117_b7_n_0),
        .O(\spo[7]_INST_0_i_15_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_16 
       (.I0(g114_b7_n_0),
        .I1(g115_b7_n_0),
        .O(\spo[7]_INST_0_i_16_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_17 
       (.I0(g112_b7_n_0),
        .I1(g113_b7_n_0),
        .O(\spo[7]_INST_0_i_17_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_18 
       (.I0(g110_b7_n_0),
        .I1(g111_b7_n_0),
        .O(\spo[7]_INST_0_i_18_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_19 
       (.I0(g108_b7_n_0),
        .I1(g109_b7_n_0),
        .O(\spo[7]_INST_0_i_19_n_0 ),
        .S(a[6]));
  MUXF8 \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_8_n_0 ),
        .I1(\spo[7]_INST_0_i_9_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ),
        .S(a[10]));
  MUXF7 \spo[7]_INST_0_i_20 
       (.I0(g106_b7_n_0),
        .I1(g107_b7_n_0),
        .O(\spo[7]_INST_0_i_20_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_21 
       (.I0(g104_b7_n_0),
        .I1(g105_b7_n_0),
        .O(\spo[7]_INST_0_i_21_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_22 
       (.I0(g102_b7_n_0),
        .I1(g103_b7_n_0),
        .O(\spo[7]_INST_0_i_22_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_23 
       (.I0(g100_b7_n_0),
        .I1(g101_b7_n_0),
        .O(\spo[7]_INST_0_i_23_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_24 
       (.I0(g98_b7_n_0),
        .I1(g99_b7_n_0),
        .O(\spo[7]_INST_0_i_24_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_25 
       (.I0(g96_b7_n_0),
        .I1(g97_b7_n_0),
        .O(\spo[7]_INST_0_i_25_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_26 
       (.I0(\spo[7]_INST_0_i_38_n_0 ),
        .I1(\spo[7]_INST_0_i_39_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_40_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_41_n_0 ),
        .O(\spo[7]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_27 
       (.I0(\spo[7]_INST_0_i_42_n_0 ),
        .I1(\spo[7]_INST_0_i_43_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_45_n_0 ),
        .O(\spo[7]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_28 
       (.I0(\spo[7]_INST_0_i_46_n_0 ),
        .I1(\spo[7]_INST_0_i_47_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_48_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_49_n_0 ),
        .O(\spo[7]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_29 
       (.I0(\spo[7]_INST_0_i_50_n_0 ),
        .I1(\spo[7]_INST_0_i_51_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_53_n_0 ),
        .O(\spo[7]_INST_0_i_29_n_0 ));
  MUXF8 \spo[7]_INST_0_i_3 
       (.I0(\spo[7]_INST_0_i_10_n_0 ),
        .I1(\spo[7]_INST_0_i_11_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_30 
       (.I0(\spo[7]_INST_0_i_54_n_0 ),
        .I1(\spo[7]_INST_0_i_55_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_57_n_0 ),
        .O(\spo[7]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_31 
       (.I0(\spo[7]_INST_0_i_58_n_0 ),
        .I1(\spo[7]_INST_0_i_59_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_60_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_61_n_0 ),
        .O(\spo[7]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_32 
       (.I0(\spo[7]_INST_0_i_62_n_0 ),
        .I1(\spo[7]_INST_0_i_63_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_65_n_0 ),
        .O(\spo[7]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_33 
       (.I0(\spo[7]_INST_0_i_66_n_0 ),
        .I1(\spo[7]_INST_0_i_67_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_69_n_0 ),
        .O(\spo[7]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_34 
       (.I0(\spo[7]_INST_0_i_70_n_0 ),
        .I1(\spo[7]_INST_0_i_71_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_73_n_0 ),
        .O(\spo[7]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_35 
       (.I0(\spo[7]_INST_0_i_74_n_0 ),
        .I1(\spo[7]_INST_0_i_75_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_76_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_77_n_0 ),
        .O(\spo[7]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_36 
       (.I0(\spo[7]_INST_0_i_78_n_0 ),
        .I1(\spo[7]_INST_0_i_79_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_80_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_81_n_0 ),
        .O(\spo[7]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_37 
       (.I0(\spo[7]_INST_0_i_82_n_0 ),
        .I1(\spo[7]_INST_0_i_83_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_84_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_85_n_0 ),
        .O(\spo[7]_INST_0_i_37_n_0 ));
  MUXF7 \spo[7]_INST_0_i_38 
       (.I0(g70_b7_n_0),
        .I1(g71_b7_n_0),
        .O(\spo[7]_INST_0_i_38_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_39 
       (.I0(g68_b7_n_0),
        .I1(g69_b7_n_0),
        .O(\spo[7]_INST_0_i_39_n_0 ),
        .S(a[6]));
  MUXF8 \spo[7]_INST_0_i_4 
       (.I0(\spo[7]_INST_0_i_12_n_0 ),
        .I1(\spo[7]_INST_0_i_13_n_0 ),
        .O(\spo[7]_INST_0_i_4_n_0 ),
        .S(a[10]));
  MUXF7 \spo[7]_INST_0_i_40 
       (.I0(g66_b7_n_0),
        .I1(g67_b7_n_0),
        .O(\spo[7]_INST_0_i_40_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_41 
       (.I0(g64_b7_n_0),
        .I1(g65_b7_n_0),
        .O(\spo[7]_INST_0_i_41_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_42 
       (.I0(g78_b7_n_0),
        .I1(g79_b7_n_0),
        .O(\spo[7]_INST_0_i_42_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_43 
       (.I0(g76_b7_n_0),
        .I1(g77_b7_n_0),
        .O(\spo[7]_INST_0_i_43_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_44 
       (.I0(g74_b7_n_0),
        .I1(g75_b7_n_0),
        .O(\spo[7]_INST_0_i_44_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_45 
       (.I0(g72_b7_n_0),
        .I1(g73_b7_n_0),
        .O(\spo[7]_INST_0_i_45_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_46 
       (.I0(g86_b7_n_0),
        .I1(g87_b7_n_0),
        .O(\spo[7]_INST_0_i_46_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_47 
       (.I0(g84_b7_n_0),
        .I1(g85_b7_n_0),
        .O(\spo[7]_INST_0_i_47_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_48 
       (.I0(g82_b7_n_0),
        .I1(g83_b7_n_0),
        .O(\spo[7]_INST_0_i_48_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_49 
       (.I0(g80_b7_n_0),
        .I1(g81_b7_n_0),
        .O(\spo[7]_INST_0_i_49_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_5 
       (.I0(\spo[7]_INST_0_i_14_n_0 ),
        .I1(\spo[7]_INST_0_i_15_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_16_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_17_n_0 ),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  MUXF7 \spo[7]_INST_0_i_50 
       (.I0(g94_b7_n_0),
        .I1(g95_b7_n_0),
        .O(\spo[7]_INST_0_i_50_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_51 
       (.I0(g92_b7_n_0),
        .I1(g93_b7_n_0),
        .O(\spo[7]_INST_0_i_51_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_52 
       (.I0(g90_b7_n_0),
        .I1(g91_b7_n_0),
        .O(\spo[7]_INST_0_i_52_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_53 
       (.I0(g88_b7_n_0),
        .I1(g89_b7_n_0),
        .O(\spo[7]_INST_0_i_53_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_54 
       (.I0(g38_b7_n_0),
        .I1(g39_b7_n_0),
        .O(\spo[7]_INST_0_i_54_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_55 
       (.I0(g36_b7_n_0),
        .I1(g37_b7_n_0),
        .O(\spo[7]_INST_0_i_55_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_56 
       (.I0(g34_b7_n_0),
        .I1(g35_b7_n_0),
        .O(\spo[7]_INST_0_i_56_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_57 
       (.I0(g32_b7_n_0),
        .I1(g33_b7_n_0),
        .O(\spo[7]_INST_0_i_57_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_58 
       (.I0(g46_b7_n_0),
        .I1(g47_b7_n_0),
        .O(\spo[7]_INST_0_i_58_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_59 
       (.I0(g44_b7_n_0),
        .I1(g45_b7_n_0),
        .O(\spo[7]_INST_0_i_59_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_6 
       (.I0(\spo[7]_INST_0_i_18_n_0 ),
        .I1(\spo[7]_INST_0_i_19_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_20_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_21_n_0 ),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  MUXF7 \spo[7]_INST_0_i_60 
       (.I0(g42_b7_n_0),
        .I1(g43_b7_n_0),
        .O(\spo[7]_INST_0_i_60_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_61 
       (.I0(g40_b7_n_0),
        .I1(g41_b7_n_0),
        .O(\spo[7]_INST_0_i_61_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_62 
       (.I0(g54_b7_n_0),
        .I1(g55_b7_n_0),
        .O(\spo[7]_INST_0_i_62_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_63 
       (.I0(g52_b7_n_0),
        .I1(g53_b7_n_0),
        .O(\spo[7]_INST_0_i_63_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_64 
       (.I0(g50_b7_n_0),
        .I1(g51_b7_n_0),
        .O(\spo[7]_INST_0_i_64_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_65 
       (.I0(g48_b7_n_0),
        .I1(g49_b7_n_0),
        .O(\spo[7]_INST_0_i_65_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_66 
       (.I0(g62_b7_n_0),
        .I1(g63_b7_n_0),
        .O(\spo[7]_INST_0_i_66_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_67 
       (.I0(g60_b7_n_0),
        .I1(g61_b7_n_0),
        .O(\spo[7]_INST_0_i_67_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_68 
       (.I0(g58_b7_n_0),
        .I1(g59_b7_n_0),
        .O(\spo[7]_INST_0_i_68_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_69 
       (.I0(g56_b7_n_0),
        .I1(g57_b7_n_0),
        .O(\spo[7]_INST_0_i_69_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_7 
       (.I0(\spo[7]_INST_0_i_22_n_0 ),
        .I1(\spo[7]_INST_0_i_23_n_0 ),
        .I2(a[8]),
        .I3(\spo[7]_INST_0_i_24_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_25_n_0 ),
        .O(\spo[7]_INST_0_i_7_n_0 ));
  MUXF7 \spo[7]_INST_0_i_70 
       (.I0(g6_b7_n_0),
        .I1(g7_b7_n_0),
        .O(\spo[7]_INST_0_i_70_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_71 
       (.I0(g4_b7_n_0),
        .I1(g5_b7_n_0),
        .O(\spo[7]_INST_0_i_71_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_72 
       (.I0(g2_b7_n_0),
        .I1(g3_b7_n_0),
        .O(\spo[7]_INST_0_i_72_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_73 
       (.I0(g0_b7_n_0),
        .I1(g1_b7_n_0),
        .O(\spo[7]_INST_0_i_73_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_74 
       (.I0(g14_b7_n_0),
        .I1(g15_b7_n_0),
        .O(\spo[7]_INST_0_i_74_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_75 
       (.I0(g12_b7_n_0),
        .I1(g13_b7_n_0),
        .O(\spo[7]_INST_0_i_75_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_76 
       (.I0(g10_b7_n_0),
        .I1(g11_b7_n_0),
        .O(\spo[7]_INST_0_i_76_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_77 
       (.I0(g8_b7_n_0),
        .I1(g9_b7_n_0),
        .O(\spo[7]_INST_0_i_77_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_78 
       (.I0(g22_b7_n_0),
        .I1(g23_b7_n_0),
        .O(\spo[7]_INST_0_i_78_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_79 
       (.I0(g20_b7_n_0),
        .I1(g21_b7_n_0),
        .O(\spo[7]_INST_0_i_79_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_8 
       (.I0(\spo[7]_INST_0_i_26_n_0 ),
        .I1(\spo[7]_INST_0_i_27_n_0 ),
        .O(\spo[7]_INST_0_i_8_n_0 ),
        .S(a[9]));
  MUXF7 \spo[7]_INST_0_i_80 
       (.I0(g18_b7_n_0),
        .I1(g19_b7_n_0),
        .O(\spo[7]_INST_0_i_80_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_81 
       (.I0(g16_b7_n_0),
        .I1(g17_b7_n_0),
        .O(\spo[7]_INST_0_i_81_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_82 
       (.I0(g30_b7_n_0),
        .I1(g31_b7_n_0),
        .O(\spo[7]_INST_0_i_82_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_83 
       (.I0(g28_b7_n_0),
        .I1(g29_b7_n_0),
        .O(\spo[7]_INST_0_i_83_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_84 
       (.I0(g26_b7_n_0),
        .I1(g27_b7_n_0),
        .O(\spo[7]_INST_0_i_84_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_85 
       (.I0(g24_b7_n_0),
        .I1(g25_b7_n_0),
        .O(\spo[7]_INST_0_i_85_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_9 
       (.I0(\spo[7]_INST_0_i_28_n_0 ),
        .I1(\spo[7]_INST_0_i_29_n_0 ),
        .O(\spo[7]_INST_0_i_9_n_0 ),
        .S(a[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
