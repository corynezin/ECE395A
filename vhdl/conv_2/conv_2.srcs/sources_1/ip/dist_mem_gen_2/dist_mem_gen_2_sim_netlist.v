// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Nov 28 15:45:38 2017
// Host        : nezin-desktop running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/nezin/Documents/ECE395A/vhdl/conv_2/conv_2.srcs/sources_1/ip/dist_mem_gen_2/dist_mem_gen_2_sim_netlist.v
// Design      : dist_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_2,dist_mem_gen_v8_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_2
   (a,
    clk,
    qspo);
  input [10:0]a;
  input clk;
  output [7:0]qspo;

  wire [10:0]a;
  wire clk;
  wire [7:0]qspo;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_spo_UNCONNECTED;

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
  (* c_addr_width = "11" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2048" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "dist_mem_gen_2.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "1" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  dist_mem_gen_2_dist_mem_gen_v8_0_11 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[7:0]),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "11" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "2048" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "zynq" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "1" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_2.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "1" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_11" *) 
module dist_mem_gen_2_dist_mem_gen_v8_0_11
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
  input [10:0]a;
  input [7:0]d;
  input [10:0]dpra;
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
  wire [10:0]a;
  wire clk;
  wire [7:0]qspo;

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
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  dist_mem_gen_2_dist_mem_gen_v8_0_11_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_11_synth" *) 
module dist_mem_gen_2_dist_mem_gen_v8_0_11_synth
   (qspo,
    a,
    clk);
  output [7:0]qspo;
  input [10:0]a;
  input clk;

  wire [10:0]a;
  wire clk;
  wire [7:0]qspo;

  dist_mem_gen_2_rom \gen_rom.rom_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module dist_mem_gen_2_rom
   (qspo,
    a,
    clk);
  output [7:0]qspo;
  input [10:0]a;
  input clk;

  wire [10:0]a;
  wire [10:0]a_reg;
  wire \a_reg_reg[0]_rep_n_0 ;
  wire \a_reg_reg[1]_rep_n_0 ;
  wire \a_reg_reg[2]_rep_n_0 ;
  wire \a_reg_reg[3]_rep_n_0 ;
  wire \a_reg_reg[4]_rep_n_0 ;
  wire \a_reg_reg[5]_rep_n_0 ;
  wire clk;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g10_b0_n_0;
  wire g10_b1_n_0;
  wire g10_b2_n_0;
  wire g10_b3_n_0;
  wire g10_b4_n_0;
  wire g10_b5_n_0;
  wire g10_b6_n_0;
  wire g10_b7_n_0;
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
  wire g3_b0_n_0;
  wire g3_b1_n_0;
  wire g3_b2_n_0;
  wire g3_b3_n_0;
  wire g3_b4_n_0;
  wire g3_b5_n_0;
  wire g3_b6_n_0;
  wire g3_b7_n_0;
  wire g4_b0_n_0;
  wire g4_b1_n_0;
  wire g4_b2_n_0;
  wire g4_b3_n_0;
  wire g4_b4_n_0;
  wire g4_b5_n_0;
  wire g4_b6_n_0;
  wire g4_b7_n_0;
  wire g5_b0_n_0;
  wire g5_b1_n_0;
  wire g5_b2_n_0;
  wire g5_b3_n_0;
  wire g5_b4_n_0;
  wire g5_b5_n_0;
  wire g5_b6_n_0;
  wire g5_b7_n_0;
  wire g6_b0_n_0;
  wire g6_b1_n_0;
  wire g6_b2_n_0;
  wire g6_b3_n_0;
  wire g6_b4_n_0;
  wire g6_b5_n_0;
  wire g6_b6_n_0;
  wire g6_b7_n_0;
  wire g7_b0_n_0;
  wire g7_b1_n_0;
  wire g7_b2_n_0;
  wire g7_b3_n_0;
  wire g7_b4_n_0;
  wire g7_b5_n_0;
  wire g7_b6_n_0;
  wire g7_b7_n_0;
  wire g8_b0_n_0;
  wire g8_b1_n_0;
  wire g8_b2_n_0;
  wire g8_b3_n_0;
  wire g8_b4_n_0;
  wire g8_b5_n_0;
  wire g8_b6_n_0;
  wire g8_b7_n_0;
  wire g9_b0_n_0;
  wire g9_b1_n_0;
  wire g9_b2_n_0;
  wire g9_b3_n_0;
  wire g9_b4_n_0;
  wire g9_b5_n_0;
  wire g9_b6_n_0;
  wire g9_b7_n_0;
  wire [7:0]qspo;
  wire \qspo_int[0]_i_4_n_0 ;
  wire \qspo_int[0]_i_5_n_0 ;
  wire \qspo_int[0]_i_6_n_0 ;
  wire \qspo_int[0]_i_7_n_0 ;
  wire \qspo_int[1]_i_4_n_0 ;
  wire \qspo_int[1]_i_5_n_0 ;
  wire \qspo_int[1]_i_6_n_0 ;
  wire \qspo_int[1]_i_7_n_0 ;
  wire \qspo_int[2]_i_4_n_0 ;
  wire \qspo_int[2]_i_5_n_0 ;
  wire \qspo_int[2]_i_6_n_0 ;
  wire \qspo_int[2]_i_7_n_0 ;
  wire \qspo_int[3]_i_4_n_0 ;
  wire \qspo_int[3]_i_5_n_0 ;
  wire \qspo_int[3]_i_6_n_0 ;
  wire \qspo_int[3]_i_7_n_0 ;
  wire \qspo_int[4]_i_4_n_0 ;
  wire \qspo_int[4]_i_5_n_0 ;
  wire \qspo_int[4]_i_6_n_0 ;
  wire \qspo_int[4]_i_7_n_0 ;
  wire \qspo_int[5]_i_4_n_0 ;
  wire \qspo_int[5]_i_5_n_0 ;
  wire \qspo_int[5]_i_6_n_0 ;
  wire \qspo_int[5]_i_7_n_0 ;
  wire \qspo_int[6]_i_4_n_0 ;
  wire \qspo_int[6]_i_5_n_0 ;
  wire \qspo_int[6]_i_6_n_0 ;
  wire \qspo_int[6]_i_7_n_0 ;
  wire \qspo_int[7]_i_4_n_0 ;
  wire \qspo_int[7]_i_5_n_0 ;
  wire \qspo_int[7]_i_6_n_0 ;
  wire \qspo_int[7]_i_7_n_0 ;
  wire \qspo_int_reg[0]_i_10_n_0 ;
  wire \qspo_int_reg[0]_i_11_n_0 ;
  wire \qspo_int_reg[0]_i_12_n_0 ;
  wire \qspo_int_reg[0]_i_13_n_0 ;
  wire \qspo_int_reg[0]_i_14_n_0 ;
  wire \qspo_int_reg[0]_i_15_n_0 ;
  wire \qspo_int_reg[0]_i_16_n_0 ;
  wire \qspo_int_reg[0]_i_17_n_0 ;
  wire \qspo_int_reg[0]_i_18_n_0 ;
  wire \qspo_int_reg[0]_i_19_n_0 ;
  wire \qspo_int_reg[0]_i_1_n_0 ;
  wire \qspo_int_reg[0]_i_20_n_0 ;
  wire \qspo_int_reg[0]_i_21_n_0 ;
  wire \qspo_int_reg[0]_i_22_n_0 ;
  wire \qspo_int_reg[0]_i_23_n_0 ;
  wire \qspo_int_reg[0]_i_2_n_0 ;
  wire \qspo_int_reg[0]_i_3_n_0 ;
  wire \qspo_int_reg[0]_i_8_n_0 ;
  wire \qspo_int_reg[0]_i_9_n_0 ;
  wire \qspo_int_reg[1]_i_10_n_0 ;
  wire \qspo_int_reg[1]_i_11_n_0 ;
  wire \qspo_int_reg[1]_i_12_n_0 ;
  wire \qspo_int_reg[1]_i_13_n_0 ;
  wire \qspo_int_reg[1]_i_14_n_0 ;
  wire \qspo_int_reg[1]_i_15_n_0 ;
  wire \qspo_int_reg[1]_i_16_n_0 ;
  wire \qspo_int_reg[1]_i_17_n_0 ;
  wire \qspo_int_reg[1]_i_18_n_0 ;
  wire \qspo_int_reg[1]_i_19_n_0 ;
  wire \qspo_int_reg[1]_i_1_n_0 ;
  wire \qspo_int_reg[1]_i_20_n_0 ;
  wire \qspo_int_reg[1]_i_21_n_0 ;
  wire \qspo_int_reg[1]_i_22_n_0 ;
  wire \qspo_int_reg[1]_i_23_n_0 ;
  wire \qspo_int_reg[1]_i_2_n_0 ;
  wire \qspo_int_reg[1]_i_3_n_0 ;
  wire \qspo_int_reg[1]_i_8_n_0 ;
  wire \qspo_int_reg[1]_i_9_n_0 ;
  wire \qspo_int_reg[2]_i_10_n_0 ;
  wire \qspo_int_reg[2]_i_11_n_0 ;
  wire \qspo_int_reg[2]_i_12_n_0 ;
  wire \qspo_int_reg[2]_i_13_n_0 ;
  wire \qspo_int_reg[2]_i_14_n_0 ;
  wire \qspo_int_reg[2]_i_15_n_0 ;
  wire \qspo_int_reg[2]_i_16_n_0 ;
  wire \qspo_int_reg[2]_i_17_n_0 ;
  wire \qspo_int_reg[2]_i_18_n_0 ;
  wire \qspo_int_reg[2]_i_19_n_0 ;
  wire \qspo_int_reg[2]_i_1_n_0 ;
  wire \qspo_int_reg[2]_i_20_n_0 ;
  wire \qspo_int_reg[2]_i_21_n_0 ;
  wire \qspo_int_reg[2]_i_22_n_0 ;
  wire \qspo_int_reg[2]_i_23_n_0 ;
  wire \qspo_int_reg[2]_i_2_n_0 ;
  wire \qspo_int_reg[2]_i_3_n_0 ;
  wire \qspo_int_reg[2]_i_8_n_0 ;
  wire \qspo_int_reg[2]_i_9_n_0 ;
  wire \qspo_int_reg[3]_i_10_n_0 ;
  wire \qspo_int_reg[3]_i_11_n_0 ;
  wire \qspo_int_reg[3]_i_12_n_0 ;
  wire \qspo_int_reg[3]_i_13_n_0 ;
  wire \qspo_int_reg[3]_i_14_n_0 ;
  wire \qspo_int_reg[3]_i_15_n_0 ;
  wire \qspo_int_reg[3]_i_16_n_0 ;
  wire \qspo_int_reg[3]_i_17_n_0 ;
  wire \qspo_int_reg[3]_i_18_n_0 ;
  wire \qspo_int_reg[3]_i_19_n_0 ;
  wire \qspo_int_reg[3]_i_1_n_0 ;
  wire \qspo_int_reg[3]_i_20_n_0 ;
  wire \qspo_int_reg[3]_i_21_n_0 ;
  wire \qspo_int_reg[3]_i_22_n_0 ;
  wire \qspo_int_reg[3]_i_23_n_0 ;
  wire \qspo_int_reg[3]_i_2_n_0 ;
  wire \qspo_int_reg[3]_i_3_n_0 ;
  wire \qspo_int_reg[3]_i_8_n_0 ;
  wire \qspo_int_reg[3]_i_9_n_0 ;
  wire \qspo_int_reg[4]_i_10_n_0 ;
  wire \qspo_int_reg[4]_i_11_n_0 ;
  wire \qspo_int_reg[4]_i_12_n_0 ;
  wire \qspo_int_reg[4]_i_13_n_0 ;
  wire \qspo_int_reg[4]_i_14_n_0 ;
  wire \qspo_int_reg[4]_i_15_n_0 ;
  wire \qspo_int_reg[4]_i_16_n_0 ;
  wire \qspo_int_reg[4]_i_17_n_0 ;
  wire \qspo_int_reg[4]_i_18_n_0 ;
  wire \qspo_int_reg[4]_i_19_n_0 ;
  wire \qspo_int_reg[4]_i_1_n_0 ;
  wire \qspo_int_reg[4]_i_20_n_0 ;
  wire \qspo_int_reg[4]_i_21_n_0 ;
  wire \qspo_int_reg[4]_i_22_n_0 ;
  wire \qspo_int_reg[4]_i_23_n_0 ;
  wire \qspo_int_reg[4]_i_2_n_0 ;
  wire \qspo_int_reg[4]_i_3_n_0 ;
  wire \qspo_int_reg[4]_i_8_n_0 ;
  wire \qspo_int_reg[4]_i_9_n_0 ;
  wire \qspo_int_reg[5]_i_10_n_0 ;
  wire \qspo_int_reg[5]_i_11_n_0 ;
  wire \qspo_int_reg[5]_i_12_n_0 ;
  wire \qspo_int_reg[5]_i_13_n_0 ;
  wire \qspo_int_reg[5]_i_14_n_0 ;
  wire \qspo_int_reg[5]_i_15_n_0 ;
  wire \qspo_int_reg[5]_i_16_n_0 ;
  wire \qspo_int_reg[5]_i_17_n_0 ;
  wire \qspo_int_reg[5]_i_18_n_0 ;
  wire \qspo_int_reg[5]_i_19_n_0 ;
  wire \qspo_int_reg[5]_i_1_n_0 ;
  wire \qspo_int_reg[5]_i_20_n_0 ;
  wire \qspo_int_reg[5]_i_21_n_0 ;
  wire \qspo_int_reg[5]_i_22_n_0 ;
  wire \qspo_int_reg[5]_i_23_n_0 ;
  wire \qspo_int_reg[5]_i_2_n_0 ;
  wire \qspo_int_reg[5]_i_3_n_0 ;
  wire \qspo_int_reg[5]_i_8_n_0 ;
  wire \qspo_int_reg[5]_i_9_n_0 ;
  wire \qspo_int_reg[6]_i_10_n_0 ;
  wire \qspo_int_reg[6]_i_11_n_0 ;
  wire \qspo_int_reg[6]_i_12_n_0 ;
  wire \qspo_int_reg[6]_i_13_n_0 ;
  wire \qspo_int_reg[6]_i_14_n_0 ;
  wire \qspo_int_reg[6]_i_15_n_0 ;
  wire \qspo_int_reg[6]_i_16_n_0 ;
  wire \qspo_int_reg[6]_i_17_n_0 ;
  wire \qspo_int_reg[6]_i_18_n_0 ;
  wire \qspo_int_reg[6]_i_19_n_0 ;
  wire \qspo_int_reg[6]_i_1_n_0 ;
  wire \qspo_int_reg[6]_i_20_n_0 ;
  wire \qspo_int_reg[6]_i_21_n_0 ;
  wire \qspo_int_reg[6]_i_22_n_0 ;
  wire \qspo_int_reg[6]_i_23_n_0 ;
  wire \qspo_int_reg[6]_i_2_n_0 ;
  wire \qspo_int_reg[6]_i_3_n_0 ;
  wire \qspo_int_reg[6]_i_8_n_0 ;
  wire \qspo_int_reg[6]_i_9_n_0 ;
  wire \qspo_int_reg[7]_i_10_n_0 ;
  wire \qspo_int_reg[7]_i_11_n_0 ;
  wire \qspo_int_reg[7]_i_12_n_0 ;
  wire \qspo_int_reg[7]_i_13_n_0 ;
  wire \qspo_int_reg[7]_i_14_n_0 ;
  wire \qspo_int_reg[7]_i_15_n_0 ;
  wire \qspo_int_reg[7]_i_16_n_0 ;
  wire \qspo_int_reg[7]_i_17_n_0 ;
  wire \qspo_int_reg[7]_i_18_n_0 ;
  wire \qspo_int_reg[7]_i_19_n_0 ;
  wire \qspo_int_reg[7]_i_1_n_0 ;
  wire \qspo_int_reg[7]_i_20_n_0 ;
  wire \qspo_int_reg[7]_i_21_n_0 ;
  wire \qspo_int_reg[7]_i_22_n_0 ;
  wire \qspo_int_reg[7]_i_23_n_0 ;
  wire \qspo_int_reg[7]_i_2_n_0 ;
  wire \qspo_int_reg[7]_i_3_n_0 ;
  wire \qspo_int_reg[7]_i_8_n_0 ;
  wire \qspo_int_reg[7]_i_9_n_0 ;

  (* ORIG_CELL_NAME = "a_reg_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(a[0]),
        .Q(a_reg[0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[0]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(a[0]),
        .Q(\a_reg_reg[0]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(a[10]),
        .Q(a_reg[10]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(a[1]),
        .Q(a_reg[1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[1]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(a[1]),
        .Q(\a_reg_reg[1]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a[2]),
        .Q(a_reg[2]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[2]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(a[2]),
        .Q(\a_reg_reg[2]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(a[3]),
        .Q(a_reg[3]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[3]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(a[3]),
        .Q(\a_reg_reg[3]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(a[4]),
        .Q(a_reg[4]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[4]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(a[4]),
        .Q(\a_reg_reg[4]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(a[5]),
        .Q(a_reg[5]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "a_reg_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[5]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(a[5]),
        .Q(\a_reg_reg[5]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(a[6]),
        .Q(a_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(a[7]),
        .Q(a_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(a[8]),
        .Q(a_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(a[9]),
        .Q(a_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF98F7D059DF262C6)) 
    g0_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'hA1086316B540912F)) 
    g0_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h6AA5DFBA43F16D26)) 
    g0_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h9D2E68984F3343AD)) 
    g0_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h46A9976FB4E015A2)) 
    g0_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'hD2C920C73968A3B7)) 
    g0_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h88B2C998E34F6D10)) 
    g0_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h922EB9BB2FA877EF)) 
    g0_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h7B36DFA15C362109)) 
    g10_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g10_b0_n_0));
  LUT6 #(
    .INIT(64'hB5FD63297FDD72EC)) 
    g10_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g10_b1_n_0));
  LUT6 #(
    .INIT(64'h49EDBD82C91D6276)) 
    g10_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g10_b2_n_0));
  LUT6 #(
    .INIT(64'h3F2C52C6AF3566D5)) 
    g10_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g10_b3_n_0));
  LUT6 #(
    .INIT(64'hCD5CB847CFACE771)) 
    g10_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g10_b4_n_0));
  LUT6 #(
    .INIT(64'hD82620F4A1B46DD8)) 
    g10_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g10_b5_n_0));
  LUT6 #(
    .INIT(64'h43361B45D4314A46)) 
    g10_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g10_b6_n_0));
  LUT6 #(
    .INIT(64'h81B4D60C3100B6B1)) 
    g10_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g10_b7_n_0));
  LUT6 #(
    .INIT(64'h98F241F2707EFD94)) 
    g11_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g11_b0_n_0));
  LUT6 #(
    .INIT(64'h16F23EC28A53A544)) 
    g11_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g11_b1_n_0));
  LUT6 #(
    .INIT(64'hD7973D4262C37A1D)) 
    g11_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g11_b2_n_0));
  LUT6 #(
    .INIT(64'h639F6D7A6BE58BFB)) 
    g11_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g11_b3_n_0));
  LUT6 #(
    .INIT(64'hCCD1CE36AA730CFF)) 
    g11_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g11_b4_n_0));
  LUT6 #(
    .INIT(64'hFA8529A2136BFE51)) 
    g11_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g11_b5_n_0));
  LUT6 #(
    .INIT(64'h7941717C867ACEAE)) 
    g11_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g11_b6_n_0));
  LUT6 #(
    .INIT(64'h50D7B5DE8A8301EF)) 
    g11_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g11_b7_n_0));
  LUT6 #(
    .INIT(64'h10D41D52EDB66723)) 
    g12_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g12_b0_n_0));
  LUT6 #(
    .INIT(64'hD0A44410BE705577)) 
    g12_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g12_b1_n_0));
  LUT6 #(
    .INIT(64'hFA1696B19BADC8DB)) 
    g12_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g12_b2_n_0));
  LUT6 #(
    .INIT(64'hCA00D16D5F72093A)) 
    g12_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g12_b3_n_0));
  LUT6 #(
    .INIT(64'h47B66732CC6CA38D)) 
    g12_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g12_b4_n_0));
  LUT6 #(
    .INIT(64'hE03FFFB49EFF37D9)) 
    g12_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g12_b5_n_0));
  LUT6 #(
    .INIT(64'hE37F614FE95CABE9)) 
    g12_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g12_b6_n_0));
  LUT6 #(
    .INIT(64'hC8CED9E8B5081282)) 
    g12_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g12_b7_n_0));
  LUT6 #(
    .INIT(64'h16116DFB68ADC916)) 
    g13_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g13_b0_n_0));
  LUT6 #(
    .INIT(64'h2EC1D10A109DBC90)) 
    g13_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g13_b1_n_0));
  LUT6 #(
    .INIT(64'hBD984816F36A88A1)) 
    g13_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g13_b2_n_0));
  LUT6 #(
    .INIT(64'hBCB3EEC5473A3E93)) 
    g13_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g13_b3_n_0));
  LUT6 #(
    .INIT(64'h88873B18C4913402)) 
    g13_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g13_b4_n_0));
  LUT6 #(
    .INIT(64'hAFB53D405F4A6353)) 
    g13_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g13_b5_n_0));
  LUT6 #(
    .INIT(64'hBB9603BF328AC320)) 
    g13_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g13_b6_n_0));
  LUT6 #(
    .INIT(64'h3E8E6A8948BD23A1)) 
    g13_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g13_b7_n_0));
  LUT6 #(
    .INIT(64'hA210EE70875A0DA7)) 
    g14_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g14_b0_n_0));
  LUT6 #(
    .INIT(64'h84DE25D669F52554)) 
    g14_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g14_b1_n_0));
  LUT6 #(
    .INIT(64'h34D3278701AE5BFD)) 
    g14_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g14_b2_n_0));
  LUT6 #(
    .INIT(64'h914F985BF522D216)) 
    g14_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g14_b3_n_0));
  LUT6 #(
    .INIT(64'h45188888D9885FED)) 
    g14_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g14_b4_n_0));
  LUT6 #(
    .INIT(64'h6F3C164E4F60E5C5)) 
    g14_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g14_b5_n_0));
  LUT6 #(
    .INIT(64'h77F19C811FA7EE94)) 
    g14_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g14_b6_n_0));
  LUT6 #(
    .INIT(64'h678958EB5A789BF9)) 
    g14_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g14_b7_n_0));
  LUT6 #(
    .INIT(64'h90525B11B63ACF7A)) 
    g15_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g15_b0_n_0));
  LUT6 #(
    .INIT(64'hA21126B60A09AE00)) 
    g15_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g15_b1_n_0));
  LUT6 #(
    .INIT(64'h90BC1CFFD34809FD)) 
    g15_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g15_b2_n_0));
  LUT6 #(
    .INIT(64'h9CC27BA3CF8CF66F)) 
    g15_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g15_b3_n_0));
  LUT6 #(
    .INIT(64'h7E915D716C2A2C1C)) 
    g15_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g15_b4_n_0));
  LUT6 #(
    .INIT(64'hC2959D0A0A8B1FE1)) 
    g15_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g15_b5_n_0));
  LUT6 #(
    .INIT(64'hC0801FE96C966FA0)) 
    g15_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g15_b6_n_0));
  LUT6 #(
    .INIT(64'hEF9DFC87BD05B036)) 
    g15_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g15_b7_n_0));
  LUT6 #(
    .INIT(64'h0C36269633514025)) 
    g16_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g16_b0_n_0));
  LUT6 #(
    .INIT(64'hB1D0C5653CF3B347)) 
    g16_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g16_b1_n_0));
  LUT6 #(
    .INIT(64'h3AEF1BE250F9E0BD)) 
    g16_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g16_b2_n_0));
  LUT6 #(
    .INIT(64'h8AB25936F4E68319)) 
    g16_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g16_b3_n_0));
  LUT6 #(
    .INIT(64'hD39DE865D6A9BD6C)) 
    g16_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g16_b4_n_0));
  LUT6 #(
    .INIT(64'hD46FC9002D5AF6D4)) 
    g16_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g16_b5_n_0));
  LUT6 #(
    .INIT(64'h5C365E93DF89608F)) 
    g16_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g16_b6_n_0));
  LUT6 #(
    .INIT(64'hAF85E3FDAF3A6EB5)) 
    g16_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g16_b7_n_0));
  LUT6 #(
    .INIT(64'hAC4799188B3FEB53)) 
    g17_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g17_b0_n_0));
  LUT6 #(
    .INIT(64'h0200ED10823C440C)) 
    g17_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g17_b1_n_0));
  LUT6 #(
    .INIT(64'hA2733922BE0D776E)) 
    g17_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g17_b2_n_0));
  LUT6 #(
    .INIT(64'h6B3AC735AD3163B0)) 
    g17_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g17_b3_n_0));
  LUT6 #(
    .INIT(64'hB631CEB3FEFA79B9)) 
    g17_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g17_b4_n_0));
  LUT6 #(
    .INIT(64'h73B93D8325446BD7)) 
    g17_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g17_b5_n_0));
  LUT6 #(
    .INIT(64'h01307AD7710AD85A)) 
    g17_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g17_b6_n_0));
  LUT6 #(
    .INIT(64'hA05B8214927CBC6A)) 
    g17_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g17_b7_n_0));
  LUT6 #(
    .INIT(64'h91D4B2739BBE1F6D)) 
    g18_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g18_b0_n_0));
  LUT6 #(
    .INIT(64'h14258E047A34BA9F)) 
    g18_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g18_b1_n_0));
  LUT6 #(
    .INIT(64'hD47D0E73D113F190)) 
    g18_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g18_b2_n_0));
  LUT6 #(
    .INIT(64'hA061230A109B72C6)) 
    g18_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g18_b3_n_0));
  LUT6 #(
    .INIT(64'h31354D3E63DBDC7D)) 
    g18_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g18_b4_n_0));
  LUT6 #(
    .INIT(64'h0F37AF94B59D025A)) 
    g18_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g18_b5_n_0));
  LUT6 #(
    .INIT(64'h365D53370394D19D)) 
    g18_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g18_b6_n_0));
  LUT6 #(
    .INIT(64'hD6487678D484C333)) 
    g18_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g18_b7_n_0));
  LUT6 #(
    .INIT(64'h9E2248C7CEE457DB)) 
    g19_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g19_b0_n_0));
  LUT6 #(
    .INIT(64'h5BE8E154935A4150)) 
    g19_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g19_b1_n_0));
  LUT6 #(
    .INIT(64'hF3D20E23512A4FCF)) 
    g19_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g19_b2_n_0));
  LUT6 #(
    .INIT(64'h4DE163DDFAB48CDE)) 
    g19_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g19_b3_n_0));
  LUT6 #(
    .INIT(64'h9667F50EF0D647A4)) 
    g19_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g19_b4_n_0));
  LUT6 #(
    .INIT(64'hE2F2D555CD90549B)) 
    g19_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g19_b5_n_0));
  LUT6 #(
    .INIT(64'h275729D75AFDCEC4)) 
    g19_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g19_b6_n_0));
  LUT6 #(
    .INIT(64'h18BECEAEF3578ED0)) 
    g19_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g19_b7_n_0));
  LUT6 #(
    .INIT(64'h7230FD1619949B98)) 
    g1_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g1_b0_n_0));
  LUT6 #(
    .INIT(64'hF4436FEEB777B991)) 
    g1_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g1_b1_n_0));
  LUT6 #(
    .INIT(64'h4C2BA6AE5BD84747)) 
    g1_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g1_b2_n_0));
  LUT6 #(
    .INIT(64'h258D9435FC7014E4)) 
    g1_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g1_b3_n_0));
  LUT6 #(
    .INIT(64'h5925486088E9BA5B)) 
    g1_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g1_b4_n_0));
  LUT6 #(
    .INIT(64'h25CE6CD436CB1DA8)) 
    g1_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g1_b5_n_0));
  LUT6 #(
    .INIT(64'h78D667630314F0D5)) 
    g1_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g1_b6_n_0));
  LUT6 #(
    .INIT(64'h10D3D91558D744F8)) 
    g1_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g1_b7_n_0));
  LUT6 #(
    .INIT(64'h8653E5B0060A844A)) 
    g20_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g20_b0_n_0));
  LUT6 #(
    .INIT(64'h35365C8299A0A157)) 
    g20_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g20_b1_n_0));
  LUT6 #(
    .INIT(64'hFE329553EDD18FEF)) 
    g20_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g20_b2_n_0));
  LUT6 #(
    .INIT(64'h492E58A2B54A0846)) 
    g20_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g20_b3_n_0));
  LUT6 #(
    .INIT(64'h6B14A32AA3B4D3D7)) 
    g20_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g20_b4_n_0));
  LUT6 #(
    .INIT(64'h5A9434E5E1AC8A08)) 
    g20_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g20_b5_n_0));
  LUT6 #(
    .INIT(64'h241E2717860A69FC)) 
    g20_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g20_b6_n_0));
  LUT6 #(
    .INIT(64'h2A6DD69ACD5161BE)) 
    g20_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g20_b7_n_0));
  LUT6 #(
    .INIT(64'h873E0A0C62AE9817)) 
    g21_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g21_b0_n_0));
  LUT6 #(
    .INIT(64'hA0ABA54F2847A15E)) 
    g21_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g21_b1_n_0));
  LUT6 #(
    .INIT(64'h3CA6A99F7170CB6F)) 
    g21_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g21_b2_n_0));
  LUT6 #(
    .INIT(64'h97F5647ED66C17C4)) 
    g21_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g21_b3_n_0));
  LUT6 #(
    .INIT(64'hB0C55A879930FF2F)) 
    g21_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g21_b4_n_0));
  LUT6 #(
    .INIT(64'h4CF06E3F747F8A63)) 
    g21_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g21_b5_n_0));
  LUT6 #(
    .INIT(64'hB2C5B1B83A53F46C)) 
    g21_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g21_b6_n_0));
  LUT6 #(
    .INIT(64'hAF7D649FB0739F76)) 
    g21_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g21_b7_n_0));
  LUT6 #(
    .INIT(64'hDCFBEC298825C19C)) 
    g22_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g22_b0_n_0));
  LUT6 #(
    .INIT(64'h64D779E1EE203E54)) 
    g22_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g22_b1_n_0));
  LUT6 #(
    .INIT(64'h3C1F6796EA5D74D4)) 
    g22_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g22_b2_n_0));
  LUT6 #(
    .INIT(64'h5BB3D8DB04BAF810)) 
    g22_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g22_b3_n_0));
  LUT6 #(
    .INIT(64'h11B9DF4AE7A628DD)) 
    g22_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g22_b4_n_0));
  LUT6 #(
    .INIT(64'hD0EB387722901964)) 
    g22_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g22_b5_n_0));
  LUT6 #(
    .INIT(64'h2472EF0D42046522)) 
    g22_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g22_b6_n_0));
  LUT6 #(
    .INIT(64'h89BDE77C90F2D6D8)) 
    g22_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g22_b7_n_0));
  LUT6 #(
    .INIT(64'h649D0FABF3F78323)) 
    g23_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g23_b0_n_0));
  LUT6 #(
    .INIT(64'hF09D38F4351753C5)) 
    g23_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g23_b1_n_0));
  LUT6 #(
    .INIT(64'h87069F3C58DBE3B0)) 
    g23_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g23_b2_n_0));
  LUT6 #(
    .INIT(64'h75AFBF02E11C7EBE)) 
    g23_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g23_b3_n_0));
  LUT6 #(
    .INIT(64'hACDA349F1344877A)) 
    g23_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g23_b4_n_0));
  LUT6 #(
    .INIT(64'h0CF3600C3C3196B9)) 
    g23_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g23_b5_n_0));
  LUT6 #(
    .INIT(64'h86F5721190779523)) 
    g23_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g23_b6_n_0));
  LUT6 #(
    .INIT(64'h0F0E9AF9E812468E)) 
    g23_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g23_b7_n_0));
  LUT6 #(
    .INIT(64'h37AB4268A6104A74)) 
    g24_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g24_b0_n_0));
  LUT6 #(
    .INIT(64'h78AC2B0A50BB433E)) 
    g24_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g24_b1_n_0));
  LUT6 #(
    .INIT(64'h6C4F939A7D100384)) 
    g24_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g24_b2_n_0));
  LUT6 #(
    .INIT(64'h470453401BC10F96)) 
    g24_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g24_b3_n_0));
  LUT6 #(
    .INIT(64'h1123507555CBF699)) 
    g24_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g24_b4_n_0));
  LUT6 #(
    .INIT(64'h9540995897B6AD22)) 
    g24_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g24_b5_n_0));
  LUT6 #(
    .INIT(64'h2D3982F710909400)) 
    g24_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g24_b6_n_0));
  LUT6 #(
    .INIT(64'h052348C589963530)) 
    g24_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g24_b7_n_0));
  LUT6 #(
    .INIT(64'h1DBB7DCB780589AA)) 
    g25_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g25_b0_n_0));
  LUT6 #(
    .INIT(64'hC27382C05CA8E4A6)) 
    g25_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g25_b1_n_0));
  LUT6 #(
    .INIT(64'h042A3B37269AD6F9)) 
    g25_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g25_b2_n_0));
  LUT6 #(
    .INIT(64'h7CD41ED788C316DF)) 
    g25_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g25_b3_n_0));
  LUT6 #(
    .INIT(64'h82F07AE86B173A17)) 
    g25_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g25_b4_n_0));
  LUT6 #(
    .INIT(64'h500CF5B16DCAE40E)) 
    g25_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g25_b5_n_0));
  LUT6 #(
    .INIT(64'h6F38FDBCA7411C54)) 
    g25_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g25_b6_n_0));
  LUT6 #(
    .INIT(64'h34633986EFADEF33)) 
    g25_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g25_b7_n_0));
  LUT6 #(
    .INIT(64'hFC7667F8371A01D0)) 
    g26_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g26_b0_n_0));
  LUT6 #(
    .INIT(64'h8EE56778287B0488)) 
    g26_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g26_b1_n_0));
  LUT6 #(
    .INIT(64'h967EC42B892154ED)) 
    g26_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g26_b2_n_0));
  LUT6 #(
    .INIT(64'hA5FEBA6B0C07D06F)) 
    g26_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g26_b3_n_0));
  LUT6 #(
    .INIT(64'h9E38E8E614D76481)) 
    g26_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g26_b4_n_0));
  LUT6 #(
    .INIT(64'h451372AFB82E6A2F)) 
    g26_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g26_b5_n_0));
  LUT6 #(
    .INIT(64'hDE8797E304243664)) 
    g26_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g26_b6_n_0));
  LUT6 #(
    .INIT(64'h6947A2521442E411)) 
    g26_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g26_b7_n_0));
  LUT6 #(
    .INIT(64'h360DE36BA53B39DA)) 
    g27_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g27_b0_n_0));
  LUT6 #(
    .INIT(64'h4F17DE26A23660C5)) 
    g27_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g27_b1_n_0));
  LUT6 #(
    .INIT(64'hBD7B4CBE1A2F4746)) 
    g27_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g27_b2_n_0));
  LUT6 #(
    .INIT(64'h8BEE3753CC495306)) 
    g27_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g27_b3_n_0));
  LUT6 #(
    .INIT(64'h771D0D38E46F8FF7)) 
    g27_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g27_b4_n_0));
  LUT6 #(
    .INIT(64'h92EB5CAD8F969C4C)) 
    g27_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g27_b5_n_0));
  LUT6 #(
    .INIT(64'h86C702D73EB11704)) 
    g27_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g27_b6_n_0));
  LUT6 #(
    .INIT(64'h46E6F147C38AE03B)) 
    g27_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g27_b7_n_0));
  LUT6 #(
    .INIT(64'h915EF288CEA427A2)) 
    g28_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g28_b0_n_0));
  LUT6 #(
    .INIT(64'hE773AA6481F9996D)) 
    g28_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g28_b1_n_0));
  LUT6 #(
    .INIT(64'hCBA3A02552216303)) 
    g28_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g28_b2_n_0));
  LUT6 #(
    .INIT(64'h73DCADBD38EE7719)) 
    g28_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g28_b3_n_0));
  LUT6 #(
    .INIT(64'hD4C94651F68D7D37)) 
    g28_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g28_b4_n_0));
  LUT6 #(
    .INIT(64'h2C9D256F8DD4522F)) 
    g28_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g28_b5_n_0));
  LUT6 #(
    .INIT(64'h053534C2F3FB53E1)) 
    g28_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g28_b6_n_0));
  LUT6 #(
    .INIT(64'h8E4F64B0DA193188)) 
    g28_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g28_b7_n_0));
  LUT6 #(
    .INIT(64'h385195BD50D74636)) 
    g29_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g29_b0_n_0));
  LUT6 #(
    .INIT(64'h455AC309A48EB70A)) 
    g29_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g29_b1_n_0));
  LUT6 #(
    .INIT(64'h725A84CC51F93722)) 
    g29_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g29_b2_n_0));
  LUT6 #(
    .INIT(64'h41C2A73CAC053794)) 
    g29_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g29_b3_n_0));
  LUT6 #(
    .INIT(64'h0E8064F214D7AFA1)) 
    g29_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g29_b4_n_0));
  LUT6 #(
    .INIT(64'h4A1BDE8B46DB3076)) 
    g29_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g29_b5_n_0));
  LUT6 #(
    .INIT(64'h4A29378CA3308FB5)) 
    g29_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g29_b6_n_0));
  LUT6 #(
    .INIT(64'h2B9A5C2593E1099F)) 
    g29_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g29_b7_n_0));
  LUT6 #(
    .INIT(64'h5F5B883374B5FA34)) 
    g2_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g2_b0_n_0));
  LUT6 #(
    .INIT(64'h1C4F72EABFC8CF92)) 
    g2_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g2_b1_n_0));
  LUT6 #(
    .INIT(64'h1B9DA9321C6A9CEC)) 
    g2_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g2_b2_n_0));
  LUT6 #(
    .INIT(64'h0ABFECDC6BEB322A)) 
    g2_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g2_b3_n_0));
  LUT6 #(
    .INIT(64'h87F4F2E06503FA9A)) 
    g2_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g2_b4_n_0));
  LUT6 #(
    .INIT(64'hC8B2C9D9998744E7)) 
    g2_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g2_b5_n_0));
  LUT6 #(
    .INIT(64'h7DC0C2796658ECB3)) 
    g2_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g2_b6_n_0));
  LUT6 #(
    .INIT(64'h003655109EE95634)) 
    g2_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g2_b7_n_0));
  LUT6 #(
    .INIT(64'h9DEABD606FA9E610)) 
    g30_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g30_b0_n_0));
  LUT6 #(
    .INIT(64'hED1D6E85114D409A)) 
    g30_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g30_b1_n_0));
  LUT6 #(
    .INIT(64'hB7277085849E73F8)) 
    g30_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g30_b2_n_0));
  LUT6 #(
    .INIT(64'hFB662AD8B89B8634)) 
    g30_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g30_b3_n_0));
  LUT6 #(
    .INIT(64'h7F1C3B9025DEA16A)) 
    g30_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g30_b4_n_0));
  LUT6 #(
    .INIT(64'h2C201B268A37E51C)) 
    g30_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g30_b5_n_0));
  LUT6 #(
    .INIT(64'hBBB53D63874E4952)) 
    g30_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g30_b6_n_0));
  LUT6 #(
    .INIT(64'hE4CAF053AF312AC9)) 
    g30_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g30_b7_n_0));
  LUT6 #(
    .INIT(64'hD816753626D32C72)) 
    g31_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g31_b0_n_0));
  LUT6 #(
    .INIT(64'h6CC77C46188CBCFB)) 
    g31_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g31_b1_n_0));
  LUT6 #(
    .INIT(64'hFF612A6816E42498)) 
    g31_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g31_b2_n_0));
  LUT6 #(
    .INIT(64'hD12CA5122E2CCA4B)) 
    g31_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g31_b3_n_0));
  LUT6 #(
    .INIT(64'h4547866F2A921AA4)) 
    g31_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g31_b4_n_0));
  LUT6 #(
    .INIT(64'h4ADE6AD4E8936B4B)) 
    g31_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g31_b5_n_0));
  LUT6 #(
    .INIT(64'hBC32ABB5FBC6C525)) 
    g31_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g31_b6_n_0));
  LUT6 #(
    .INIT(64'h1299678EAB9F3A60)) 
    g31_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g31_b7_n_0));
  LUT6 #(
    .INIT(64'h66B7687BBAB25BBD)) 
    g3_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g3_b0_n_0));
  LUT6 #(
    .INIT(64'h97A6C70725C672DF)) 
    g3_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g3_b1_n_0));
  LUT6 #(
    .INIT(64'hFFF447099B4175DB)) 
    g3_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g3_b2_n_0));
  LUT6 #(
    .INIT(64'h3898F69137D05C6B)) 
    g3_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g3_b3_n_0));
  LUT6 #(
    .INIT(64'hAEA86F5FCA88DD57)) 
    g3_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g3_b4_n_0));
  LUT6 #(
    .INIT(64'h6C6D709B584F8C76)) 
    g3_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g3_b5_n_0));
  LUT6 #(
    .INIT(64'h3B4412BD18FD6A5F)) 
    g3_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g3_b6_n_0));
  LUT6 #(
    .INIT(64'h6921B188B1009CF4)) 
    g3_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g3_b7_n_0));
  LUT6 #(
    .INIT(64'h38D826AD3D6EDB5A)) 
    g4_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g4_b0_n_0));
  LUT6 #(
    .INIT(64'hD4910FA07622083C)) 
    g4_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g4_b1_n_0));
  LUT6 #(
    .INIT(64'hED9A5D5F9EA81390)) 
    g4_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g4_b2_n_0));
  LUT6 #(
    .INIT(64'h8DFB9CDA2DFE9AFE)) 
    g4_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g4_b3_n_0));
  LUT6 #(
    .INIT(64'hE83137B937B512C4)) 
    g4_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g4_b4_n_0));
  LUT6 #(
    .INIT(64'h556B970A8844868B)) 
    g4_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g4_b5_n_0));
  LUT6 #(
    .INIT(64'h70603306BF07B2F1)) 
    g4_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g4_b6_n_0));
  LUT6 #(
    .INIT(64'hED6D28DEB5865CDC)) 
    g4_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g4_b7_n_0));
  LUT6 #(
    .INIT(64'h48B860581C4F9F59)) 
    g5_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g5_b0_n_0));
  LUT6 #(
    .INIT(64'hACF9D8581AB8068E)) 
    g5_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g5_b1_n_0));
  LUT6 #(
    .INIT(64'h17543CFE6BC3EF9B)) 
    g5_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g5_b2_n_0));
  LUT6 #(
    .INIT(64'h0BE94E1781408550)) 
    g5_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g5_b3_n_0));
  LUT6 #(
    .INIT(64'hA19BC82B6992B7BD)) 
    g5_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g5_b4_n_0));
  LUT6 #(
    .INIT(64'hCD901DDA9AFCCAC5)) 
    g5_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g5_b5_n_0));
  LUT6 #(
    .INIT(64'hA8554EDBDDFB4763)) 
    g5_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g5_b6_n_0));
  LUT6 #(
    .INIT(64'h3992550CE9AB8D69)) 
    g5_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g5_b7_n_0));
  LUT6 #(
    .INIT(64'hD5E744E90A646C40)) 
    g6_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g6_b0_n_0));
  LUT6 #(
    .INIT(64'hC4AB6510645D88A2)) 
    g6_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g6_b1_n_0));
  LUT6 #(
    .INIT(64'hBE425C82EEBAFFDA)) 
    g6_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g6_b2_n_0));
  LUT6 #(
    .INIT(64'h0CFAE055C8E437C2)) 
    g6_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g6_b3_n_0));
  LUT6 #(
    .INIT(64'h94AE470543C59CDC)) 
    g6_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g6_b4_n_0));
  LUT6 #(
    .INIT(64'h8F0D9A1EDDF0C79C)) 
    g6_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g6_b5_n_0));
  LUT6 #(
    .INIT(64'h75B9F1BBF6334275)) 
    g6_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g6_b6_n_0));
  LUT6 #(
    .INIT(64'hD07C3AAE71118DBB)) 
    g6_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g6_b7_n_0));
  LUT6 #(
    .INIT(64'h53D810D116113FD2)) 
    g7_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g7_b0_n_0));
  LUT6 #(
    .INIT(64'h8D0D8AD41FF0B033)) 
    g7_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g7_b1_n_0));
  LUT6 #(
    .INIT(64'h9728863C64555103)) 
    g7_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g7_b2_n_0));
  LUT6 #(
    .INIT(64'h4D82EBD3841724F0)) 
    g7_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g7_b3_n_0));
  LUT6 #(
    .INIT(64'hB246E06A77168DDB)) 
    g7_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g7_b4_n_0));
  LUT6 #(
    .INIT(64'h2AA2C5BF9719BFD0)) 
    g7_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g7_b5_n_0));
  LUT6 #(
    .INIT(64'hCEDC035405988372)) 
    g7_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g7_b6_n_0));
  LUT6 #(
    .INIT(64'hE2D263313BC38943)) 
    g7_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g7_b7_n_0));
  LUT6 #(
    .INIT(64'h5A08FAD7A7B02BC1)) 
    g8_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g8_b0_n_0));
  LUT6 #(
    .INIT(64'h6CC03937FDA895E7)) 
    g8_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g8_b1_n_0));
  LUT6 #(
    .INIT(64'hCEA8F9330F2B923C)) 
    g8_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g8_b2_n_0));
  LUT6 #(
    .INIT(64'h8D3E9A70045A22FB)) 
    g8_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g8_b3_n_0));
  LUT6 #(
    .INIT(64'h054050D814F243F0)) 
    g8_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g8_b4_n_0));
  LUT6 #(
    .INIT(64'hD559CE3DB771C183)) 
    g8_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g8_b5_n_0));
  LUT6 #(
    .INIT(64'hF1CFE5EC83F5A103)) 
    g8_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g8_b6_n_0));
  LUT6 #(
    .INIT(64'h9D1429F876CEC309)) 
    g8_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g8_b7_n_0));
  LUT6 #(
    .INIT(64'h65EFC6B39F39805A)) 
    g9_b0
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g9_b0_n_0));
  LUT6 #(
    .INIT(64'hB436F9EFFD9BA809)) 
    g9_b1
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g9_b1_n_0));
  LUT6 #(
    .INIT(64'h493C8A59D84E88A2)) 
    g9_b2
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g9_b2_n_0));
  LUT6 #(
    .INIT(64'hD137894B96B425A7)) 
    g9_b3
       (.I0(\a_reg_reg[0]_rep_n_0 ),
        .I1(\a_reg_reg[1]_rep_n_0 ),
        .I2(\a_reg_reg[2]_rep_n_0 ),
        .I3(\a_reg_reg[3]_rep_n_0 ),
        .I4(\a_reg_reg[4]_rep_n_0 ),
        .I5(\a_reg_reg[5]_rep_n_0 ),
        .O(g9_b3_n_0));
  LUT6 #(
    .INIT(64'h7A662019E782F56B)) 
    g9_b4
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g9_b4_n_0));
  LUT6 #(
    .INIT(64'h427AA5A7298B838A)) 
    g9_b5
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g9_b5_n_0));
  LUT6 #(
    .INIT(64'hF2F0F6654DA4D8E1)) 
    g9_b6
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g9_b6_n_0));
  LUT6 #(
    .INIT(64'h73239DD9167BA78A)) 
    g9_b7
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(g9_b7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[0]_i_4 
       (.I0(\qspo_int_reg[0]_i_8_n_0 ),
        .I1(\qspo_int_reg[0]_i_9_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[0]_i_10_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[0]_i_11_n_0 ),
        .O(\qspo_int[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[0]_i_5 
       (.I0(\qspo_int_reg[0]_i_12_n_0 ),
        .I1(\qspo_int_reg[0]_i_13_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[0]_i_14_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[0]_i_15_n_0 ),
        .O(\qspo_int[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[0]_i_6 
       (.I0(\qspo_int_reg[0]_i_16_n_0 ),
        .I1(\qspo_int_reg[0]_i_17_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[0]_i_18_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[0]_i_19_n_0 ),
        .O(\qspo_int[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[0]_i_7 
       (.I0(\qspo_int_reg[0]_i_20_n_0 ),
        .I1(\qspo_int_reg[0]_i_21_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[0]_i_22_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[0]_i_23_n_0 ),
        .O(\qspo_int[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[1]_i_4 
       (.I0(\qspo_int_reg[1]_i_8_n_0 ),
        .I1(\qspo_int_reg[1]_i_9_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[1]_i_10_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[1]_i_11_n_0 ),
        .O(\qspo_int[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[1]_i_5 
       (.I0(\qspo_int_reg[1]_i_12_n_0 ),
        .I1(\qspo_int_reg[1]_i_13_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[1]_i_14_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[1]_i_15_n_0 ),
        .O(\qspo_int[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[1]_i_6 
       (.I0(\qspo_int_reg[1]_i_16_n_0 ),
        .I1(\qspo_int_reg[1]_i_17_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[1]_i_18_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[1]_i_19_n_0 ),
        .O(\qspo_int[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[1]_i_7 
       (.I0(\qspo_int_reg[1]_i_20_n_0 ),
        .I1(\qspo_int_reg[1]_i_21_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[1]_i_22_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[1]_i_23_n_0 ),
        .O(\qspo_int[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[2]_i_4 
       (.I0(\qspo_int_reg[2]_i_8_n_0 ),
        .I1(\qspo_int_reg[2]_i_9_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[2]_i_10_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[2]_i_11_n_0 ),
        .O(\qspo_int[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[2]_i_5 
       (.I0(\qspo_int_reg[2]_i_12_n_0 ),
        .I1(\qspo_int_reg[2]_i_13_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[2]_i_14_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[2]_i_15_n_0 ),
        .O(\qspo_int[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[2]_i_6 
       (.I0(\qspo_int_reg[2]_i_16_n_0 ),
        .I1(\qspo_int_reg[2]_i_17_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[2]_i_18_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[2]_i_19_n_0 ),
        .O(\qspo_int[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[2]_i_7 
       (.I0(\qspo_int_reg[2]_i_20_n_0 ),
        .I1(\qspo_int_reg[2]_i_21_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[2]_i_22_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[2]_i_23_n_0 ),
        .O(\qspo_int[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[3]_i_4 
       (.I0(\qspo_int_reg[3]_i_8_n_0 ),
        .I1(\qspo_int_reg[3]_i_9_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[3]_i_10_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[3]_i_11_n_0 ),
        .O(\qspo_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[3]_i_5 
       (.I0(\qspo_int_reg[3]_i_12_n_0 ),
        .I1(\qspo_int_reg[3]_i_13_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[3]_i_14_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[3]_i_15_n_0 ),
        .O(\qspo_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[3]_i_6 
       (.I0(\qspo_int_reg[3]_i_16_n_0 ),
        .I1(\qspo_int_reg[3]_i_17_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[3]_i_18_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[3]_i_19_n_0 ),
        .O(\qspo_int[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[3]_i_7 
       (.I0(\qspo_int_reg[3]_i_20_n_0 ),
        .I1(\qspo_int_reg[3]_i_21_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[3]_i_22_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[3]_i_23_n_0 ),
        .O(\qspo_int[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[4]_i_4 
       (.I0(\qspo_int_reg[4]_i_8_n_0 ),
        .I1(\qspo_int_reg[4]_i_9_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[4]_i_10_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[4]_i_11_n_0 ),
        .O(\qspo_int[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[4]_i_5 
       (.I0(\qspo_int_reg[4]_i_12_n_0 ),
        .I1(\qspo_int_reg[4]_i_13_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[4]_i_14_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[4]_i_15_n_0 ),
        .O(\qspo_int[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[4]_i_6 
       (.I0(\qspo_int_reg[4]_i_16_n_0 ),
        .I1(\qspo_int_reg[4]_i_17_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[4]_i_18_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[4]_i_19_n_0 ),
        .O(\qspo_int[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[4]_i_7 
       (.I0(\qspo_int_reg[4]_i_20_n_0 ),
        .I1(\qspo_int_reg[4]_i_21_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[4]_i_22_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[4]_i_23_n_0 ),
        .O(\qspo_int[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[5]_i_4 
       (.I0(\qspo_int_reg[5]_i_8_n_0 ),
        .I1(\qspo_int_reg[5]_i_9_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[5]_i_10_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[5]_i_11_n_0 ),
        .O(\qspo_int[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[5]_i_5 
       (.I0(\qspo_int_reg[5]_i_12_n_0 ),
        .I1(\qspo_int_reg[5]_i_13_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[5]_i_14_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[5]_i_15_n_0 ),
        .O(\qspo_int[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[5]_i_6 
       (.I0(\qspo_int_reg[5]_i_16_n_0 ),
        .I1(\qspo_int_reg[5]_i_17_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[5]_i_18_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[5]_i_19_n_0 ),
        .O(\qspo_int[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[5]_i_7 
       (.I0(\qspo_int_reg[5]_i_20_n_0 ),
        .I1(\qspo_int_reg[5]_i_21_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[5]_i_22_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[5]_i_23_n_0 ),
        .O(\qspo_int[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[6]_i_4 
       (.I0(\qspo_int_reg[6]_i_8_n_0 ),
        .I1(\qspo_int_reg[6]_i_9_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[6]_i_10_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[6]_i_11_n_0 ),
        .O(\qspo_int[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[6]_i_5 
       (.I0(\qspo_int_reg[6]_i_12_n_0 ),
        .I1(\qspo_int_reg[6]_i_13_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[6]_i_14_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[6]_i_15_n_0 ),
        .O(\qspo_int[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[6]_i_6 
       (.I0(\qspo_int_reg[6]_i_16_n_0 ),
        .I1(\qspo_int_reg[6]_i_17_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[6]_i_18_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[6]_i_19_n_0 ),
        .O(\qspo_int[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[6]_i_7 
       (.I0(\qspo_int_reg[6]_i_20_n_0 ),
        .I1(\qspo_int_reg[6]_i_21_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[6]_i_22_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[6]_i_23_n_0 ),
        .O(\qspo_int[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[7]_i_4 
       (.I0(\qspo_int_reg[7]_i_8_n_0 ),
        .I1(\qspo_int_reg[7]_i_9_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[7]_i_10_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[7]_i_11_n_0 ),
        .O(\qspo_int[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[7]_i_5 
       (.I0(\qspo_int_reg[7]_i_12_n_0 ),
        .I1(\qspo_int_reg[7]_i_13_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[7]_i_14_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[7]_i_15_n_0 ),
        .O(\qspo_int[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[7]_i_6 
       (.I0(\qspo_int_reg[7]_i_16_n_0 ),
        .I1(\qspo_int_reg[7]_i_17_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[7]_i_18_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[7]_i_19_n_0 ),
        .O(\qspo_int[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qspo_int[7]_i_7 
       (.I0(\qspo_int_reg[7]_i_20_n_0 ),
        .I1(\qspo_int_reg[7]_i_21_n_0 ),
        .I2(a_reg[8]),
        .I3(\qspo_int_reg[7]_i_22_n_0 ),
        .I4(a_reg[7]),
        .I5(\qspo_int_reg[7]_i_23_n_0 ),
        .O(\qspo_int[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[0]_i_1_n_0 ),
        .Q(qspo[0]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[0]_i_1 
       (.I0(\qspo_int_reg[0]_i_2_n_0 ),
        .I1(\qspo_int_reg[0]_i_3_n_0 ),
        .O(\qspo_int_reg[0]_i_1_n_0 ),
        .S(a_reg[10]));
  MUXF7 \qspo_int_reg[0]_i_10 
       (.I0(g2_b0_n_0),
        .I1(g3_b0_n_0),
        .O(\qspo_int_reg[0]_i_10_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_11 
       (.I0(g0_b0_n_0),
        .I1(g1_b0_n_0),
        .O(\qspo_int_reg[0]_i_11_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_12 
       (.I0(g14_b0_n_0),
        .I1(g15_b0_n_0),
        .O(\qspo_int_reg[0]_i_12_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_13 
       (.I0(g12_b0_n_0),
        .I1(g13_b0_n_0),
        .O(\qspo_int_reg[0]_i_13_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_14 
       (.I0(g10_b0_n_0),
        .I1(g11_b0_n_0),
        .O(\qspo_int_reg[0]_i_14_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_15 
       (.I0(g8_b0_n_0),
        .I1(g9_b0_n_0),
        .O(\qspo_int_reg[0]_i_15_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_16 
       (.I0(g22_b0_n_0),
        .I1(g23_b0_n_0),
        .O(\qspo_int_reg[0]_i_16_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_17 
       (.I0(g20_b0_n_0),
        .I1(g21_b0_n_0),
        .O(\qspo_int_reg[0]_i_17_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_18 
       (.I0(g18_b0_n_0),
        .I1(g19_b0_n_0),
        .O(\qspo_int_reg[0]_i_18_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_19 
       (.I0(g16_b0_n_0),
        .I1(g17_b0_n_0),
        .O(\qspo_int_reg[0]_i_19_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_2 
       (.I0(\qspo_int[0]_i_4_n_0 ),
        .I1(\qspo_int[0]_i_5_n_0 ),
        .O(\qspo_int_reg[0]_i_2_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[0]_i_20 
       (.I0(g30_b0_n_0),
        .I1(g31_b0_n_0),
        .O(\qspo_int_reg[0]_i_20_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_21 
       (.I0(g28_b0_n_0),
        .I1(g29_b0_n_0),
        .O(\qspo_int_reg[0]_i_21_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_22 
       (.I0(g26_b0_n_0),
        .I1(g27_b0_n_0),
        .O(\qspo_int_reg[0]_i_22_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_23 
       (.I0(g24_b0_n_0),
        .I1(g25_b0_n_0),
        .O(\qspo_int_reg[0]_i_23_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_3 
       (.I0(\qspo_int[0]_i_6_n_0 ),
        .I1(\qspo_int[0]_i_7_n_0 ),
        .O(\qspo_int_reg[0]_i_3_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[0]_i_8 
       (.I0(g6_b0_n_0),
        .I1(g7_b0_n_0),
        .O(\qspo_int_reg[0]_i_8_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[0]_i_9 
       (.I0(g4_b0_n_0),
        .I1(g5_b0_n_0),
        .O(\qspo_int_reg[0]_i_9_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[1]_i_1_n_0 ),
        .Q(qspo[1]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[1]_i_1 
       (.I0(\qspo_int_reg[1]_i_2_n_0 ),
        .I1(\qspo_int_reg[1]_i_3_n_0 ),
        .O(\qspo_int_reg[1]_i_1_n_0 ),
        .S(a_reg[10]));
  MUXF7 \qspo_int_reg[1]_i_10 
       (.I0(g2_b1_n_0),
        .I1(g3_b1_n_0),
        .O(\qspo_int_reg[1]_i_10_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_11 
       (.I0(g0_b1_n_0),
        .I1(g1_b1_n_0),
        .O(\qspo_int_reg[1]_i_11_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_12 
       (.I0(g14_b1_n_0),
        .I1(g15_b1_n_0),
        .O(\qspo_int_reg[1]_i_12_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_13 
       (.I0(g12_b1_n_0),
        .I1(g13_b1_n_0),
        .O(\qspo_int_reg[1]_i_13_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_14 
       (.I0(g10_b1_n_0),
        .I1(g11_b1_n_0),
        .O(\qspo_int_reg[1]_i_14_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_15 
       (.I0(g8_b1_n_0),
        .I1(g9_b1_n_0),
        .O(\qspo_int_reg[1]_i_15_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_16 
       (.I0(g22_b1_n_0),
        .I1(g23_b1_n_0),
        .O(\qspo_int_reg[1]_i_16_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_17 
       (.I0(g20_b1_n_0),
        .I1(g21_b1_n_0),
        .O(\qspo_int_reg[1]_i_17_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_18 
       (.I0(g18_b1_n_0),
        .I1(g19_b1_n_0),
        .O(\qspo_int_reg[1]_i_18_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_19 
       (.I0(g16_b1_n_0),
        .I1(g17_b1_n_0),
        .O(\qspo_int_reg[1]_i_19_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_2 
       (.I0(\qspo_int[1]_i_4_n_0 ),
        .I1(\qspo_int[1]_i_5_n_0 ),
        .O(\qspo_int_reg[1]_i_2_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[1]_i_20 
       (.I0(g30_b1_n_0),
        .I1(g31_b1_n_0),
        .O(\qspo_int_reg[1]_i_20_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_21 
       (.I0(g28_b1_n_0),
        .I1(g29_b1_n_0),
        .O(\qspo_int_reg[1]_i_21_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_22 
       (.I0(g26_b1_n_0),
        .I1(g27_b1_n_0),
        .O(\qspo_int_reg[1]_i_22_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_23 
       (.I0(g24_b1_n_0),
        .I1(g25_b1_n_0),
        .O(\qspo_int_reg[1]_i_23_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_3 
       (.I0(\qspo_int[1]_i_6_n_0 ),
        .I1(\qspo_int[1]_i_7_n_0 ),
        .O(\qspo_int_reg[1]_i_3_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[1]_i_8 
       (.I0(g6_b1_n_0),
        .I1(g7_b1_n_0),
        .O(\qspo_int_reg[1]_i_8_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_9 
       (.I0(g4_b1_n_0),
        .I1(g5_b1_n_0),
        .O(\qspo_int_reg[1]_i_9_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[2]_i_1_n_0 ),
        .Q(qspo[2]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[2]_i_1 
       (.I0(\qspo_int_reg[2]_i_2_n_0 ),
        .I1(\qspo_int_reg[2]_i_3_n_0 ),
        .O(\qspo_int_reg[2]_i_1_n_0 ),
        .S(a_reg[10]));
  MUXF7 \qspo_int_reg[2]_i_10 
       (.I0(g2_b2_n_0),
        .I1(g3_b2_n_0),
        .O(\qspo_int_reg[2]_i_10_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_11 
       (.I0(g0_b2_n_0),
        .I1(g1_b2_n_0),
        .O(\qspo_int_reg[2]_i_11_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_12 
       (.I0(g14_b2_n_0),
        .I1(g15_b2_n_0),
        .O(\qspo_int_reg[2]_i_12_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_13 
       (.I0(g12_b2_n_0),
        .I1(g13_b2_n_0),
        .O(\qspo_int_reg[2]_i_13_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_14 
       (.I0(g10_b2_n_0),
        .I1(g11_b2_n_0),
        .O(\qspo_int_reg[2]_i_14_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_15 
       (.I0(g8_b2_n_0),
        .I1(g9_b2_n_0),
        .O(\qspo_int_reg[2]_i_15_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_16 
       (.I0(g22_b2_n_0),
        .I1(g23_b2_n_0),
        .O(\qspo_int_reg[2]_i_16_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_17 
       (.I0(g20_b2_n_0),
        .I1(g21_b2_n_0),
        .O(\qspo_int_reg[2]_i_17_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_18 
       (.I0(g18_b2_n_0),
        .I1(g19_b2_n_0),
        .O(\qspo_int_reg[2]_i_18_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_19 
       (.I0(g16_b2_n_0),
        .I1(g17_b2_n_0),
        .O(\qspo_int_reg[2]_i_19_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_2 
       (.I0(\qspo_int[2]_i_4_n_0 ),
        .I1(\qspo_int[2]_i_5_n_0 ),
        .O(\qspo_int_reg[2]_i_2_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[2]_i_20 
       (.I0(g30_b2_n_0),
        .I1(g31_b2_n_0),
        .O(\qspo_int_reg[2]_i_20_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_21 
       (.I0(g28_b2_n_0),
        .I1(g29_b2_n_0),
        .O(\qspo_int_reg[2]_i_21_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_22 
       (.I0(g26_b2_n_0),
        .I1(g27_b2_n_0),
        .O(\qspo_int_reg[2]_i_22_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_23 
       (.I0(g24_b2_n_0),
        .I1(g25_b2_n_0),
        .O(\qspo_int_reg[2]_i_23_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_3 
       (.I0(\qspo_int[2]_i_6_n_0 ),
        .I1(\qspo_int[2]_i_7_n_0 ),
        .O(\qspo_int_reg[2]_i_3_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[2]_i_8 
       (.I0(g6_b2_n_0),
        .I1(g7_b2_n_0),
        .O(\qspo_int_reg[2]_i_8_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_9 
       (.I0(g4_b2_n_0),
        .I1(g5_b2_n_0),
        .O(\qspo_int_reg[2]_i_9_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[3]_i_1_n_0 ),
        .Q(qspo[3]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[3]_i_1 
       (.I0(\qspo_int_reg[3]_i_2_n_0 ),
        .I1(\qspo_int_reg[3]_i_3_n_0 ),
        .O(\qspo_int_reg[3]_i_1_n_0 ),
        .S(a_reg[10]));
  MUXF7 \qspo_int_reg[3]_i_10 
       (.I0(g2_b3_n_0),
        .I1(g3_b3_n_0),
        .O(\qspo_int_reg[3]_i_10_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_11 
       (.I0(g0_b3_n_0),
        .I1(g1_b3_n_0),
        .O(\qspo_int_reg[3]_i_11_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_12 
       (.I0(g14_b3_n_0),
        .I1(g15_b3_n_0),
        .O(\qspo_int_reg[3]_i_12_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_13 
       (.I0(g12_b3_n_0),
        .I1(g13_b3_n_0),
        .O(\qspo_int_reg[3]_i_13_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_14 
       (.I0(g10_b3_n_0),
        .I1(g11_b3_n_0),
        .O(\qspo_int_reg[3]_i_14_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_15 
       (.I0(g8_b3_n_0),
        .I1(g9_b3_n_0),
        .O(\qspo_int_reg[3]_i_15_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_16 
       (.I0(g22_b3_n_0),
        .I1(g23_b3_n_0),
        .O(\qspo_int_reg[3]_i_16_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_17 
       (.I0(g20_b3_n_0),
        .I1(g21_b3_n_0),
        .O(\qspo_int_reg[3]_i_17_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_18 
       (.I0(g18_b3_n_0),
        .I1(g19_b3_n_0),
        .O(\qspo_int_reg[3]_i_18_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_19 
       (.I0(g16_b3_n_0),
        .I1(g17_b3_n_0),
        .O(\qspo_int_reg[3]_i_19_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_2 
       (.I0(\qspo_int[3]_i_4_n_0 ),
        .I1(\qspo_int[3]_i_5_n_0 ),
        .O(\qspo_int_reg[3]_i_2_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[3]_i_20 
       (.I0(g30_b3_n_0),
        .I1(g31_b3_n_0),
        .O(\qspo_int_reg[3]_i_20_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_21 
       (.I0(g28_b3_n_0),
        .I1(g29_b3_n_0),
        .O(\qspo_int_reg[3]_i_21_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_22 
       (.I0(g26_b3_n_0),
        .I1(g27_b3_n_0),
        .O(\qspo_int_reg[3]_i_22_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_23 
       (.I0(g24_b3_n_0),
        .I1(g25_b3_n_0),
        .O(\qspo_int_reg[3]_i_23_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_3 
       (.I0(\qspo_int[3]_i_6_n_0 ),
        .I1(\qspo_int[3]_i_7_n_0 ),
        .O(\qspo_int_reg[3]_i_3_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[3]_i_8 
       (.I0(g6_b3_n_0),
        .I1(g7_b3_n_0),
        .O(\qspo_int_reg[3]_i_8_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_9 
       (.I0(g4_b3_n_0),
        .I1(g5_b3_n_0),
        .O(\qspo_int_reg[3]_i_9_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[4]_i_1_n_0 ),
        .Q(qspo[4]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[4]_i_1 
       (.I0(\qspo_int_reg[4]_i_2_n_0 ),
        .I1(\qspo_int_reg[4]_i_3_n_0 ),
        .O(\qspo_int_reg[4]_i_1_n_0 ),
        .S(a_reg[10]));
  MUXF7 \qspo_int_reg[4]_i_10 
       (.I0(g2_b4_n_0),
        .I1(g3_b4_n_0),
        .O(\qspo_int_reg[4]_i_10_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_11 
       (.I0(g0_b4_n_0),
        .I1(g1_b4_n_0),
        .O(\qspo_int_reg[4]_i_11_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_12 
       (.I0(g14_b4_n_0),
        .I1(g15_b4_n_0),
        .O(\qspo_int_reg[4]_i_12_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_13 
       (.I0(g12_b4_n_0),
        .I1(g13_b4_n_0),
        .O(\qspo_int_reg[4]_i_13_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_14 
       (.I0(g10_b4_n_0),
        .I1(g11_b4_n_0),
        .O(\qspo_int_reg[4]_i_14_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_15 
       (.I0(g8_b4_n_0),
        .I1(g9_b4_n_0),
        .O(\qspo_int_reg[4]_i_15_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_16 
       (.I0(g22_b4_n_0),
        .I1(g23_b4_n_0),
        .O(\qspo_int_reg[4]_i_16_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_17 
       (.I0(g20_b4_n_0),
        .I1(g21_b4_n_0),
        .O(\qspo_int_reg[4]_i_17_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_18 
       (.I0(g18_b4_n_0),
        .I1(g19_b4_n_0),
        .O(\qspo_int_reg[4]_i_18_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_19 
       (.I0(g16_b4_n_0),
        .I1(g17_b4_n_0),
        .O(\qspo_int_reg[4]_i_19_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_2 
       (.I0(\qspo_int[4]_i_4_n_0 ),
        .I1(\qspo_int[4]_i_5_n_0 ),
        .O(\qspo_int_reg[4]_i_2_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[4]_i_20 
       (.I0(g30_b4_n_0),
        .I1(g31_b4_n_0),
        .O(\qspo_int_reg[4]_i_20_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_21 
       (.I0(g28_b4_n_0),
        .I1(g29_b4_n_0),
        .O(\qspo_int_reg[4]_i_21_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_22 
       (.I0(g26_b4_n_0),
        .I1(g27_b4_n_0),
        .O(\qspo_int_reg[4]_i_22_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_23 
       (.I0(g24_b4_n_0),
        .I1(g25_b4_n_0),
        .O(\qspo_int_reg[4]_i_23_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_3 
       (.I0(\qspo_int[4]_i_6_n_0 ),
        .I1(\qspo_int[4]_i_7_n_0 ),
        .O(\qspo_int_reg[4]_i_3_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[4]_i_8 
       (.I0(g6_b4_n_0),
        .I1(g7_b4_n_0),
        .O(\qspo_int_reg[4]_i_8_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_9 
       (.I0(g4_b4_n_0),
        .I1(g5_b4_n_0),
        .O(\qspo_int_reg[4]_i_9_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[5]_i_1_n_0 ),
        .Q(qspo[5]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[5]_i_1 
       (.I0(\qspo_int_reg[5]_i_2_n_0 ),
        .I1(\qspo_int_reg[5]_i_3_n_0 ),
        .O(\qspo_int_reg[5]_i_1_n_0 ),
        .S(a_reg[10]));
  MUXF7 \qspo_int_reg[5]_i_10 
       (.I0(g2_b5_n_0),
        .I1(g3_b5_n_0),
        .O(\qspo_int_reg[5]_i_10_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_11 
       (.I0(g0_b5_n_0),
        .I1(g1_b5_n_0),
        .O(\qspo_int_reg[5]_i_11_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_12 
       (.I0(g14_b5_n_0),
        .I1(g15_b5_n_0),
        .O(\qspo_int_reg[5]_i_12_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_13 
       (.I0(g12_b5_n_0),
        .I1(g13_b5_n_0),
        .O(\qspo_int_reg[5]_i_13_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_14 
       (.I0(g10_b5_n_0),
        .I1(g11_b5_n_0),
        .O(\qspo_int_reg[5]_i_14_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_15 
       (.I0(g8_b5_n_0),
        .I1(g9_b5_n_0),
        .O(\qspo_int_reg[5]_i_15_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_16 
       (.I0(g22_b5_n_0),
        .I1(g23_b5_n_0),
        .O(\qspo_int_reg[5]_i_16_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_17 
       (.I0(g20_b5_n_0),
        .I1(g21_b5_n_0),
        .O(\qspo_int_reg[5]_i_17_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_18 
       (.I0(g18_b5_n_0),
        .I1(g19_b5_n_0),
        .O(\qspo_int_reg[5]_i_18_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_19 
       (.I0(g16_b5_n_0),
        .I1(g17_b5_n_0),
        .O(\qspo_int_reg[5]_i_19_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_2 
       (.I0(\qspo_int[5]_i_4_n_0 ),
        .I1(\qspo_int[5]_i_5_n_0 ),
        .O(\qspo_int_reg[5]_i_2_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[5]_i_20 
       (.I0(g30_b5_n_0),
        .I1(g31_b5_n_0),
        .O(\qspo_int_reg[5]_i_20_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_21 
       (.I0(g28_b5_n_0),
        .I1(g29_b5_n_0),
        .O(\qspo_int_reg[5]_i_21_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_22 
       (.I0(g26_b5_n_0),
        .I1(g27_b5_n_0),
        .O(\qspo_int_reg[5]_i_22_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_23 
       (.I0(g24_b5_n_0),
        .I1(g25_b5_n_0),
        .O(\qspo_int_reg[5]_i_23_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_3 
       (.I0(\qspo_int[5]_i_6_n_0 ),
        .I1(\qspo_int[5]_i_7_n_0 ),
        .O(\qspo_int_reg[5]_i_3_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[5]_i_8 
       (.I0(g6_b5_n_0),
        .I1(g7_b5_n_0),
        .O(\qspo_int_reg[5]_i_8_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_9 
       (.I0(g4_b5_n_0),
        .I1(g5_b5_n_0),
        .O(\qspo_int_reg[5]_i_9_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[6]_i_1_n_0 ),
        .Q(qspo[6]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[6]_i_1 
       (.I0(\qspo_int_reg[6]_i_2_n_0 ),
        .I1(\qspo_int_reg[6]_i_3_n_0 ),
        .O(\qspo_int_reg[6]_i_1_n_0 ),
        .S(a_reg[10]));
  MUXF7 \qspo_int_reg[6]_i_10 
       (.I0(g2_b6_n_0),
        .I1(g3_b6_n_0),
        .O(\qspo_int_reg[6]_i_10_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_11 
       (.I0(g0_b6_n_0),
        .I1(g1_b6_n_0),
        .O(\qspo_int_reg[6]_i_11_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_12 
       (.I0(g14_b6_n_0),
        .I1(g15_b6_n_0),
        .O(\qspo_int_reg[6]_i_12_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_13 
       (.I0(g12_b6_n_0),
        .I1(g13_b6_n_0),
        .O(\qspo_int_reg[6]_i_13_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_14 
       (.I0(g10_b6_n_0),
        .I1(g11_b6_n_0),
        .O(\qspo_int_reg[6]_i_14_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_15 
       (.I0(g8_b6_n_0),
        .I1(g9_b6_n_0),
        .O(\qspo_int_reg[6]_i_15_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_16 
       (.I0(g22_b6_n_0),
        .I1(g23_b6_n_0),
        .O(\qspo_int_reg[6]_i_16_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_17 
       (.I0(g20_b6_n_0),
        .I1(g21_b6_n_0),
        .O(\qspo_int_reg[6]_i_17_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_18 
       (.I0(g18_b6_n_0),
        .I1(g19_b6_n_0),
        .O(\qspo_int_reg[6]_i_18_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_19 
       (.I0(g16_b6_n_0),
        .I1(g17_b6_n_0),
        .O(\qspo_int_reg[6]_i_19_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_2 
       (.I0(\qspo_int[6]_i_4_n_0 ),
        .I1(\qspo_int[6]_i_5_n_0 ),
        .O(\qspo_int_reg[6]_i_2_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[6]_i_20 
       (.I0(g30_b6_n_0),
        .I1(g31_b6_n_0),
        .O(\qspo_int_reg[6]_i_20_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_21 
       (.I0(g28_b6_n_0),
        .I1(g29_b6_n_0),
        .O(\qspo_int_reg[6]_i_21_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_22 
       (.I0(g26_b6_n_0),
        .I1(g27_b6_n_0),
        .O(\qspo_int_reg[6]_i_22_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_23 
       (.I0(g24_b6_n_0),
        .I1(g25_b6_n_0),
        .O(\qspo_int_reg[6]_i_23_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_3 
       (.I0(\qspo_int[6]_i_6_n_0 ),
        .I1(\qspo_int[6]_i_7_n_0 ),
        .O(\qspo_int_reg[6]_i_3_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[6]_i_8 
       (.I0(g6_b6_n_0),
        .I1(g7_b6_n_0),
        .O(\qspo_int_reg[6]_i_8_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[6]_i_9 
       (.I0(g4_b6_n_0),
        .I1(g5_b6_n_0),
        .O(\qspo_int_reg[6]_i_9_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[7]_i_1_n_0 ),
        .Q(qspo[7]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[7]_i_1 
       (.I0(\qspo_int_reg[7]_i_2_n_0 ),
        .I1(\qspo_int_reg[7]_i_3_n_0 ),
        .O(\qspo_int_reg[7]_i_1_n_0 ),
        .S(a_reg[10]));
  MUXF7 \qspo_int_reg[7]_i_10 
       (.I0(g2_b7_n_0),
        .I1(g3_b7_n_0),
        .O(\qspo_int_reg[7]_i_10_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_11 
       (.I0(g0_b7_n_0),
        .I1(g1_b7_n_0),
        .O(\qspo_int_reg[7]_i_11_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_12 
       (.I0(g14_b7_n_0),
        .I1(g15_b7_n_0),
        .O(\qspo_int_reg[7]_i_12_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_13 
       (.I0(g12_b7_n_0),
        .I1(g13_b7_n_0),
        .O(\qspo_int_reg[7]_i_13_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_14 
       (.I0(g10_b7_n_0),
        .I1(g11_b7_n_0),
        .O(\qspo_int_reg[7]_i_14_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_15 
       (.I0(g8_b7_n_0),
        .I1(g9_b7_n_0),
        .O(\qspo_int_reg[7]_i_15_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_16 
       (.I0(g22_b7_n_0),
        .I1(g23_b7_n_0),
        .O(\qspo_int_reg[7]_i_16_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_17 
       (.I0(g20_b7_n_0),
        .I1(g21_b7_n_0),
        .O(\qspo_int_reg[7]_i_17_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_18 
       (.I0(g18_b7_n_0),
        .I1(g19_b7_n_0),
        .O(\qspo_int_reg[7]_i_18_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_19 
       (.I0(g16_b7_n_0),
        .I1(g17_b7_n_0),
        .O(\qspo_int_reg[7]_i_19_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_2 
       (.I0(\qspo_int[7]_i_4_n_0 ),
        .I1(\qspo_int[7]_i_5_n_0 ),
        .O(\qspo_int_reg[7]_i_2_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[7]_i_20 
       (.I0(g30_b7_n_0),
        .I1(g31_b7_n_0),
        .O(\qspo_int_reg[7]_i_20_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_21 
       (.I0(g28_b7_n_0),
        .I1(g29_b7_n_0),
        .O(\qspo_int_reg[7]_i_21_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_22 
       (.I0(g26_b7_n_0),
        .I1(g27_b7_n_0),
        .O(\qspo_int_reg[7]_i_22_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_23 
       (.I0(g24_b7_n_0),
        .I1(g25_b7_n_0),
        .O(\qspo_int_reg[7]_i_23_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_3 
       (.I0(\qspo_int[7]_i_6_n_0 ),
        .I1(\qspo_int[7]_i_7_n_0 ),
        .O(\qspo_int_reg[7]_i_3_n_0 ),
        .S(a_reg[9]));
  MUXF7 \qspo_int_reg[7]_i_8 
       (.I0(g6_b7_n_0),
        .I1(g7_b7_n_0),
        .O(\qspo_int_reg[7]_i_8_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[7]_i_9 
       (.I0(g4_b7_n_0),
        .I1(g5_b7_n_0),
        .O(\qspo_int_reg[7]_i_9_n_0 ),
        .S(a_reg[6]));
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
