-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sun Dec  3 21:19:14 2017
-- Host        : nezin-desktop running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top filter_rom -prefix
--               filter_rom_ dist_mem_gen_0_sim_netlist.vhdl
-- Design      : dist_mem_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity filter_rom_rom is
  port (
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC
  );
end filter_rom_rom;

architecture STRUCTURE of filter_rom_rom is
  signal a_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \a_reg_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \a_reg_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \a_reg_reg[2]_rep_n_0\ : STD_LOGIC;
  signal \a_reg_reg[3]_rep_n_0\ : STD_LOGIC;
  signal \a_reg_reg[4]_rep_n_0\ : STD_LOGIC;
  signal \a_reg_reg[5]_rep_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g10_b0_n_0 : STD_LOGIC;
  signal g10_b1_n_0 : STD_LOGIC;
  signal g10_b2_n_0 : STD_LOGIC;
  signal g10_b3_n_0 : STD_LOGIC;
  signal g10_b4_n_0 : STD_LOGIC;
  signal g10_b5_n_0 : STD_LOGIC;
  signal g10_b6_n_0 : STD_LOGIC;
  signal g10_b7_n_0 : STD_LOGIC;
  signal g11_b0_n_0 : STD_LOGIC;
  signal g11_b1_n_0 : STD_LOGIC;
  signal g11_b2_n_0 : STD_LOGIC;
  signal g11_b3_n_0 : STD_LOGIC;
  signal g11_b4_n_0 : STD_LOGIC;
  signal g11_b5_n_0 : STD_LOGIC;
  signal g11_b6_n_0 : STD_LOGIC;
  signal g11_b7_n_0 : STD_LOGIC;
  signal g12_b0_n_0 : STD_LOGIC;
  signal g12_b1_n_0 : STD_LOGIC;
  signal g12_b2_n_0 : STD_LOGIC;
  signal g12_b3_n_0 : STD_LOGIC;
  signal g12_b4_n_0 : STD_LOGIC;
  signal g12_b5_n_0 : STD_LOGIC;
  signal g12_b6_n_0 : STD_LOGIC;
  signal g12_b7_n_0 : STD_LOGIC;
  signal g13_b0_n_0 : STD_LOGIC;
  signal g13_b1_n_0 : STD_LOGIC;
  signal g13_b2_n_0 : STD_LOGIC;
  signal g13_b3_n_0 : STD_LOGIC;
  signal g13_b4_n_0 : STD_LOGIC;
  signal g13_b5_n_0 : STD_LOGIC;
  signal g13_b6_n_0 : STD_LOGIC;
  signal g13_b7_n_0 : STD_LOGIC;
  signal g14_b0_n_0 : STD_LOGIC;
  signal g14_b1_n_0 : STD_LOGIC;
  signal g14_b2_n_0 : STD_LOGIC;
  signal g14_b3_n_0 : STD_LOGIC;
  signal g14_b4_n_0 : STD_LOGIC;
  signal g14_b5_n_0 : STD_LOGIC;
  signal g14_b6_n_0 : STD_LOGIC;
  signal g14_b7_n_0 : STD_LOGIC;
  signal g15_b0_n_0 : STD_LOGIC;
  signal g15_b1_n_0 : STD_LOGIC;
  signal g15_b2_n_0 : STD_LOGIC;
  signal g15_b3_n_0 : STD_LOGIC;
  signal g15_b4_n_0 : STD_LOGIC;
  signal g15_b5_n_0 : STD_LOGIC;
  signal g15_b6_n_0 : STD_LOGIC;
  signal g15_b7_n_0 : STD_LOGIC;
  signal g16_b0_n_0 : STD_LOGIC;
  signal g16_b1_n_0 : STD_LOGIC;
  signal g16_b2_n_0 : STD_LOGIC;
  signal g16_b3_n_0 : STD_LOGIC;
  signal g16_b4_n_0 : STD_LOGIC;
  signal g16_b5_n_0 : STD_LOGIC;
  signal g16_b6_n_0 : STD_LOGIC;
  signal g16_b7_n_0 : STD_LOGIC;
  signal g17_b0_n_0 : STD_LOGIC;
  signal g17_b1_n_0 : STD_LOGIC;
  signal g17_b2_n_0 : STD_LOGIC;
  signal g17_b3_n_0 : STD_LOGIC;
  signal g17_b4_n_0 : STD_LOGIC;
  signal g17_b5_n_0 : STD_LOGIC;
  signal g17_b6_n_0 : STD_LOGIC;
  signal g17_b7_n_0 : STD_LOGIC;
  signal g18_b0_n_0 : STD_LOGIC;
  signal g18_b1_n_0 : STD_LOGIC;
  signal g18_b2_n_0 : STD_LOGIC;
  signal g18_b3_n_0 : STD_LOGIC;
  signal g18_b4_n_0 : STD_LOGIC;
  signal g18_b5_n_0 : STD_LOGIC;
  signal g18_b6_n_0 : STD_LOGIC;
  signal g18_b7_n_0 : STD_LOGIC;
  signal g19_b0_n_0 : STD_LOGIC;
  signal g19_b1_n_0 : STD_LOGIC;
  signal g19_b2_n_0 : STD_LOGIC;
  signal g19_b3_n_0 : STD_LOGIC;
  signal g19_b4_n_0 : STD_LOGIC;
  signal g19_b5_n_0 : STD_LOGIC;
  signal g19_b6_n_0 : STD_LOGIC;
  signal g19_b7_n_0 : STD_LOGIC;
  signal g1_b0_n_0 : STD_LOGIC;
  signal g1_b1_n_0 : STD_LOGIC;
  signal g1_b2_n_0 : STD_LOGIC;
  signal g1_b3_n_0 : STD_LOGIC;
  signal g1_b4_n_0 : STD_LOGIC;
  signal g1_b5_n_0 : STD_LOGIC;
  signal g1_b6_n_0 : STD_LOGIC;
  signal g1_b7_n_0 : STD_LOGIC;
  signal g20_b0_n_0 : STD_LOGIC;
  signal g20_b1_n_0 : STD_LOGIC;
  signal g20_b2_n_0 : STD_LOGIC;
  signal g20_b3_n_0 : STD_LOGIC;
  signal g20_b4_n_0 : STD_LOGIC;
  signal g20_b5_n_0 : STD_LOGIC;
  signal g20_b6_n_0 : STD_LOGIC;
  signal g20_b7_n_0 : STD_LOGIC;
  signal g21_b0_n_0 : STD_LOGIC;
  signal g21_b1_n_0 : STD_LOGIC;
  signal g21_b2_n_0 : STD_LOGIC;
  signal g21_b3_n_0 : STD_LOGIC;
  signal g21_b4_n_0 : STD_LOGIC;
  signal g21_b5_n_0 : STD_LOGIC;
  signal g21_b6_n_0 : STD_LOGIC;
  signal g21_b7_n_0 : STD_LOGIC;
  signal g22_b0_n_0 : STD_LOGIC;
  signal g22_b1_n_0 : STD_LOGIC;
  signal g22_b2_n_0 : STD_LOGIC;
  signal g22_b3_n_0 : STD_LOGIC;
  signal g22_b4_n_0 : STD_LOGIC;
  signal g22_b5_n_0 : STD_LOGIC;
  signal g22_b6_n_0 : STD_LOGIC;
  signal g22_b7_n_0 : STD_LOGIC;
  signal g23_b0_n_0 : STD_LOGIC;
  signal g23_b1_n_0 : STD_LOGIC;
  signal g23_b2_n_0 : STD_LOGIC;
  signal g23_b3_n_0 : STD_LOGIC;
  signal g23_b4_n_0 : STD_LOGIC;
  signal g23_b5_n_0 : STD_LOGIC;
  signal g23_b6_n_0 : STD_LOGIC;
  signal g23_b7_n_0 : STD_LOGIC;
  signal g24_b0_n_0 : STD_LOGIC;
  signal g24_b1_n_0 : STD_LOGIC;
  signal g24_b2_n_0 : STD_LOGIC;
  signal g24_b3_n_0 : STD_LOGIC;
  signal g24_b4_n_0 : STD_LOGIC;
  signal g24_b5_n_0 : STD_LOGIC;
  signal g24_b6_n_0 : STD_LOGIC;
  signal g24_b7_n_0 : STD_LOGIC;
  signal g25_b0_n_0 : STD_LOGIC;
  signal g25_b1_n_0 : STD_LOGIC;
  signal g25_b2_n_0 : STD_LOGIC;
  signal g25_b3_n_0 : STD_LOGIC;
  signal g25_b4_n_0 : STD_LOGIC;
  signal g25_b5_n_0 : STD_LOGIC;
  signal g25_b6_n_0 : STD_LOGIC;
  signal g25_b7_n_0 : STD_LOGIC;
  signal g26_b0_n_0 : STD_LOGIC;
  signal g26_b1_n_0 : STD_LOGIC;
  signal g26_b2_n_0 : STD_LOGIC;
  signal g26_b3_n_0 : STD_LOGIC;
  signal g26_b4_n_0 : STD_LOGIC;
  signal g26_b5_n_0 : STD_LOGIC;
  signal g26_b6_n_0 : STD_LOGIC;
  signal g26_b7_n_0 : STD_LOGIC;
  signal g27_b0_n_0 : STD_LOGIC;
  signal g27_b1_n_0 : STD_LOGIC;
  signal g27_b2_n_0 : STD_LOGIC;
  signal g27_b3_n_0 : STD_LOGIC;
  signal g27_b4_n_0 : STD_LOGIC;
  signal g27_b5_n_0 : STD_LOGIC;
  signal g27_b6_n_0 : STD_LOGIC;
  signal g27_b7_n_0 : STD_LOGIC;
  signal g28_b0_n_0 : STD_LOGIC;
  signal g28_b1_n_0 : STD_LOGIC;
  signal g28_b2_n_0 : STD_LOGIC;
  signal g28_b3_n_0 : STD_LOGIC;
  signal g28_b4_n_0 : STD_LOGIC;
  signal g28_b5_n_0 : STD_LOGIC;
  signal g28_b6_n_0 : STD_LOGIC;
  signal g28_b7_n_0 : STD_LOGIC;
  signal g29_b0_n_0 : STD_LOGIC;
  signal g29_b1_n_0 : STD_LOGIC;
  signal g29_b2_n_0 : STD_LOGIC;
  signal g29_b3_n_0 : STD_LOGIC;
  signal g29_b4_n_0 : STD_LOGIC;
  signal g29_b5_n_0 : STD_LOGIC;
  signal g29_b6_n_0 : STD_LOGIC;
  signal g29_b7_n_0 : STD_LOGIC;
  signal g2_b0_n_0 : STD_LOGIC;
  signal g2_b1_n_0 : STD_LOGIC;
  signal g2_b2_n_0 : STD_LOGIC;
  signal g2_b3_n_0 : STD_LOGIC;
  signal g2_b4_n_0 : STD_LOGIC;
  signal g2_b5_n_0 : STD_LOGIC;
  signal g2_b6_n_0 : STD_LOGIC;
  signal g2_b7_n_0 : STD_LOGIC;
  signal g30_b0_n_0 : STD_LOGIC;
  signal g30_b1_n_0 : STD_LOGIC;
  signal g30_b2_n_0 : STD_LOGIC;
  signal g30_b3_n_0 : STD_LOGIC;
  signal g30_b4_n_0 : STD_LOGIC;
  signal g30_b5_n_0 : STD_LOGIC;
  signal g30_b6_n_0 : STD_LOGIC;
  signal g30_b7_n_0 : STD_LOGIC;
  signal g31_b0_n_0 : STD_LOGIC;
  signal g31_b1_n_0 : STD_LOGIC;
  signal g31_b2_n_0 : STD_LOGIC;
  signal g31_b3_n_0 : STD_LOGIC;
  signal g31_b4_n_0 : STD_LOGIC;
  signal g31_b5_n_0 : STD_LOGIC;
  signal g31_b6_n_0 : STD_LOGIC;
  signal g31_b7_n_0 : STD_LOGIC;
  signal g3_b0_n_0 : STD_LOGIC;
  signal g3_b1_n_0 : STD_LOGIC;
  signal g3_b2_n_0 : STD_LOGIC;
  signal g3_b3_n_0 : STD_LOGIC;
  signal g3_b4_n_0 : STD_LOGIC;
  signal g3_b5_n_0 : STD_LOGIC;
  signal g3_b6_n_0 : STD_LOGIC;
  signal g3_b7_n_0 : STD_LOGIC;
  signal g4_b0_n_0 : STD_LOGIC;
  signal g4_b1_n_0 : STD_LOGIC;
  signal g4_b2_n_0 : STD_LOGIC;
  signal g4_b3_n_0 : STD_LOGIC;
  signal g4_b4_n_0 : STD_LOGIC;
  signal g4_b5_n_0 : STD_LOGIC;
  signal g4_b6_n_0 : STD_LOGIC;
  signal g4_b7_n_0 : STD_LOGIC;
  signal g5_b0_n_0 : STD_LOGIC;
  signal g5_b1_n_0 : STD_LOGIC;
  signal g5_b2_n_0 : STD_LOGIC;
  signal g5_b3_n_0 : STD_LOGIC;
  signal g5_b4_n_0 : STD_LOGIC;
  signal g5_b5_n_0 : STD_LOGIC;
  signal g5_b6_n_0 : STD_LOGIC;
  signal g5_b7_n_0 : STD_LOGIC;
  signal g6_b0_n_0 : STD_LOGIC;
  signal g6_b1_n_0 : STD_LOGIC;
  signal g6_b2_n_0 : STD_LOGIC;
  signal g6_b3_n_0 : STD_LOGIC;
  signal g6_b4_n_0 : STD_LOGIC;
  signal g6_b5_n_0 : STD_LOGIC;
  signal g6_b6_n_0 : STD_LOGIC;
  signal g6_b7_n_0 : STD_LOGIC;
  signal g7_b0_n_0 : STD_LOGIC;
  signal g7_b1_n_0 : STD_LOGIC;
  signal g7_b2_n_0 : STD_LOGIC;
  signal g7_b3_n_0 : STD_LOGIC;
  signal g7_b4_n_0 : STD_LOGIC;
  signal g7_b5_n_0 : STD_LOGIC;
  signal g7_b6_n_0 : STD_LOGIC;
  signal g7_b7_n_0 : STD_LOGIC;
  signal g8_b0_n_0 : STD_LOGIC;
  signal g8_b1_n_0 : STD_LOGIC;
  signal g8_b2_n_0 : STD_LOGIC;
  signal g8_b3_n_0 : STD_LOGIC;
  signal g8_b4_n_0 : STD_LOGIC;
  signal g8_b5_n_0 : STD_LOGIC;
  signal g8_b6_n_0 : STD_LOGIC;
  signal g8_b7_n_0 : STD_LOGIC;
  signal g9_b0_n_0 : STD_LOGIC;
  signal g9_b1_n_0 : STD_LOGIC;
  signal g9_b2_n_0 : STD_LOGIC;
  signal g9_b3_n_0 : STD_LOGIC;
  signal g9_b4_n_0 : STD_LOGIC;
  signal g9_b5_n_0 : STD_LOGIC;
  signal g9_b6_n_0 : STD_LOGIC;
  signal g9_b7_n_0 : STD_LOGIC;
  signal \qspo_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[0]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[1]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[1]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[1]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[1]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[2]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[2]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[2]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[3]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[3]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[3]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[3]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[4]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[5]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[5]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[5]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[5]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[6]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_4_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_5_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_6_n_0\ : STD_LOGIC;
  signal \qspo_int[7]_i_7_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_14_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_15_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_16_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_17_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_18_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_19_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_20_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_21_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_22_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_23_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_15_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_16_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_17_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_18_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_19_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_20_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_21_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_22_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_23_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_17_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_18_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_19_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_20_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_21_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_22_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_23_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_14_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_15_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_16_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_17_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_18_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_19_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_20_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_21_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_22_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_23_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_11_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_14_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_15_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_16_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_17_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_18_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_19_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_20_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_21_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_22_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_23_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_10_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_11_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_12_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_13_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_14_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_15_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_16_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_17_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_18_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_19_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_20_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_21_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_22_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_23_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[6]_i_9_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_15_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_16_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_17_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_18_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_19_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_20_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_21_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_22_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_23_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \qspo_int_reg[7]_i_9_n_0\ : STD_LOGIC;
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \a_reg_reg[0]\ : label is "a_reg_reg[0]";
  attribute ORIG_CELL_NAME of \a_reg_reg[0]_rep\ : label is "a_reg_reg[0]";
  attribute ORIG_CELL_NAME of \a_reg_reg[1]\ : label is "a_reg_reg[1]";
  attribute ORIG_CELL_NAME of \a_reg_reg[1]_rep\ : label is "a_reg_reg[1]";
  attribute ORIG_CELL_NAME of \a_reg_reg[2]\ : label is "a_reg_reg[2]";
  attribute ORIG_CELL_NAME of \a_reg_reg[2]_rep\ : label is "a_reg_reg[2]";
  attribute ORIG_CELL_NAME of \a_reg_reg[3]\ : label is "a_reg_reg[3]";
  attribute ORIG_CELL_NAME of \a_reg_reg[3]_rep\ : label is "a_reg_reg[3]";
  attribute ORIG_CELL_NAME of \a_reg_reg[4]\ : label is "a_reg_reg[4]";
  attribute ORIG_CELL_NAME of \a_reg_reg[4]_rep\ : label is "a_reg_reg[4]";
  attribute ORIG_CELL_NAME of \a_reg_reg[5]\ : label is "a_reg_reg[5]";
  attribute ORIG_CELL_NAME of \a_reg_reg[5]_rep\ : label is "a_reg_reg[5]";
begin
\a_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(0),
      Q => a_reg(0),
      R => '0'
    );
\a_reg_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(0),
      Q => \a_reg_reg[0]_rep_n_0\,
      R => '0'
    );
\a_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(10),
      Q => a_reg(10),
      R => '0'
    );
\a_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(1),
      Q => a_reg(1),
      R => '0'
    );
\a_reg_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(1),
      Q => \a_reg_reg[1]_rep_n_0\,
      R => '0'
    );
\a_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(2),
      Q => a_reg(2),
      R => '0'
    );
\a_reg_reg[2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(2),
      Q => \a_reg_reg[2]_rep_n_0\,
      R => '0'
    );
\a_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(3),
      Q => a_reg(3),
      R => '0'
    );
\a_reg_reg[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(3),
      Q => \a_reg_reg[3]_rep_n_0\,
      R => '0'
    );
\a_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(4),
      Q => a_reg(4),
      R => '0'
    );
\a_reg_reg[4]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(4),
      Q => \a_reg_reg[4]_rep_n_0\,
      R => '0'
    );
\a_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(5),
      Q => a_reg(5),
      R => '0'
    );
\a_reg_reg[5]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(5),
      Q => \a_reg_reg[5]_rep_n_0\,
      R => '0'
    );
\a_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(6),
      Q => a_reg(6),
      R => '0'
    );
\a_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(7),
      Q => a_reg(7),
      R => '0'
    );
\a_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(8),
      Q => a_reg(8),
      R => '0'
    );
\a_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => a(9),
      Q => a_reg(9),
      R => '0'
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F98F7D05D5F262C6"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A1086316FB40912F"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g0_b1_n_0
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA5DFBA5FF16D26"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9D2E68985F3343AD"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"46A9976FEAE015A2"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2C920C77D68A3B7"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B2C998F34F6D10"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"922EB9BB7FA877EF"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g0_b7_n_0
    );
g10_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7B36DFA15C362109"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g10_b0_n_0
    );
g10_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B5FD63297FDD72EC"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g10_b1_n_0
    );
g10_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"49EDBD82C91D6276"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g10_b2_n_0
    );
g10_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F2C52C6AF3566D5"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g10_b3_n_0
    );
g10_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD5CB847CFACE771"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g10_b4_n_0
    );
g10_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D82620F4A1B46DD8"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g10_b5_n_0
    );
g10_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43361B45D4314A46"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g10_b6_n_0
    );
g10_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81B4D60C3100B6B1"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g10_b7_n_0
    );
g11_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98F241F2707EFD94"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g11_b0_n_0
    );
g11_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"16F23EC28A53A544"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g11_b1_n_0
    );
g11_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7973D4262C37A1D"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g11_b2_n_0
    );
g11_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"639F6D7A6BE58BFB"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g11_b3_n_0
    );
g11_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCD1CE36AA730CFF"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g11_b4_n_0
    );
g11_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA8529A2136BFE51"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g11_b5_n_0
    );
g11_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7941717C867ACEAE"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g11_b6_n_0
    );
g11_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50D7B5DE8A8301EF"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g11_b7_n_0
    );
g12_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10D41D52EDB66723"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g12_b0_n_0
    );
g12_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0A44410BE705577"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g12_b1_n_0
    );
g12_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA1696B19BADC8DB"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g12_b2_n_0
    );
g12_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA00D16D5F72093A"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g12_b3_n_0
    );
g12_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47B66732CC6CA38D"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g12_b4_n_0
    );
g12_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E03FFFB49EFF37D9"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g12_b5_n_0
    );
g12_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E37F614FE95CABE9"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g12_b6_n_0
    );
g12_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8CED9E8B5081282"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g12_b7_n_0
    );
g13_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"16116DFB68ADC916"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g13_b0_n_0
    );
g13_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EC1D10A109DBC90"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g13_b1_n_0
    );
g13_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD984816F36A88A1"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g13_b2_n_0
    );
g13_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCB3EEC5473A3E93"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g13_b3_n_0
    );
g13_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88873B18C4913402"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g13_b4_n_0
    );
g13_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFB53D405F4A6353"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g13_b5_n_0
    );
g13_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB9603BF328AC320"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g13_b6_n_0
    );
g13_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3E8E6A8948BD23A1"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g13_b7_n_0
    );
g14_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A210EE70875A0DA7"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g14_b0_n_0
    );
g14_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"84DE25D669F52554"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g14_b1_n_0
    );
g14_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34D3278701AE5BFD"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g14_b2_n_0
    );
g14_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"914F985BF522D216"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g14_b3_n_0
    );
g14_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45188888D9885FED"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g14_b4_n_0
    );
g14_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F3C164E4F60E5C5"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g14_b5_n_0
    );
g14_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F19C811FA7EE94"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g14_b6_n_0
    );
g14_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"678958EB5A789BF9"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g14_b7_n_0
    );
g15_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90525B11B63ACF7A"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g15_b0_n_0
    );
g15_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A21126B60A09AE00"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g15_b1_n_0
    );
g15_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90BC1CFFD34809FD"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g15_b2_n_0
    );
g15_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CC27BA3CF8CF66F"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g15_b3_n_0
    );
g15_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E915D716C2A2C1C"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g15_b4_n_0
    );
g15_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2959D0A0A8B1FE1"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g15_b5_n_0
    );
g15_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0801FE96C966FA0"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g15_b6_n_0
    );
g15_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF9DFC87BD05B036"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g15_b7_n_0
    );
g16_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C36269633514025"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g16_b0_n_0
    );
g16_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B1D0C5653CF3B347"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g16_b1_n_0
    );
g16_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AEF1BE250F9E0BD"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g16_b2_n_0
    );
g16_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AB25936F4E68319"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g16_b3_n_0
    );
g16_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D39DE865D6A9BD6C"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g16_b4_n_0
    );
g16_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D46FC9002D5AF6D4"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g16_b5_n_0
    );
g16_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C365E93DF89608F"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g16_b6_n_0
    );
g16_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF85E3FDAF3A6EB5"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g16_b7_n_0
    );
g17_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC4799188B3FEB53"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g17_b0_n_0
    );
g17_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200ED10823C440C"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g17_b1_n_0
    );
g17_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2733922BE0D776E"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g17_b2_n_0
    );
g17_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B3AC735AD3163B0"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g17_b3_n_0
    );
g17_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B631CEB3FEFA79B9"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g17_b4_n_0
    );
g17_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73B93D8325446BD7"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g17_b5_n_0
    );
g17_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01307AD7710AD85A"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g17_b6_n_0
    );
g17_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A05B8214927CBC6A"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g17_b7_n_0
    );
g18_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"91D4B2739BBE1F6D"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g18_b0_n_0
    );
g18_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14258E047A34BA9F"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g18_b1_n_0
    );
g18_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D47D0E73D113F190"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g18_b2_n_0
    );
g18_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A061230A109B72C6"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g18_b3_n_0
    );
g18_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"31354D3E63DBDC7D"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g18_b4_n_0
    );
g18_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F37AF94B59D025A"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g18_b5_n_0
    );
g18_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"365D53370394D19D"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g18_b6_n_0
    );
g18_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D6487678D484C333"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g18_b7_n_0
    );
g19_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9E2248C7CEE457DB"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g19_b0_n_0
    );
g19_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5BE8E154935A4150"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g19_b1_n_0
    );
g19_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3D20E23512A4FCF"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g19_b2_n_0
    );
g19_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DE163DDFAB48CDE"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g19_b3_n_0
    );
g19_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9667F50EF0D647A4"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g19_b4_n_0
    );
g19_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2F2D555CD90549B"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g19_b5_n_0
    );
g19_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"275729D75AFDCEC4"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g19_b6_n_0
    );
g19_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18BECEAEF3578ED0"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g19_b7_n_0
    );
g1_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7230FD1619949B98"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g1_b0_n_0
    );
g1_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4436FEEB777B991"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g1_b1_n_0
    );
g1_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C2BA6AE5BD84747"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g1_b2_n_0
    );
g1_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"258D9435FC7014E4"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g1_b3_n_0
    );
g1_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5925486088E9BA5B"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g1_b4_n_0
    );
g1_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25CE6CD436CB1DA8"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g1_b5_n_0
    );
g1_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78D667630314F0D5"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g1_b6_n_0
    );
g1_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10D3D91558D744F8"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g1_b7_n_0
    );
g20_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8653E5B0060A844A"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g20_b0_n_0
    );
g20_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35365C8299A0A157"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g20_b1_n_0
    );
g20_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE329553EDD18FEF"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g20_b2_n_0
    );
g20_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"492E58A2B54A0846"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g20_b3_n_0
    );
g20_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B14A32AA3B4D3D7"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g20_b4_n_0
    );
g20_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A9434E5E1AC8A08"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g20_b5_n_0
    );
g20_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"241E2717860A69FC"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g20_b6_n_0
    );
g20_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A6DD69ACD5161BE"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g20_b7_n_0
    );
g21_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"873E0A0C62AE9817"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g21_b0_n_0
    );
g21_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0ABA54F2847A15E"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g21_b1_n_0
    );
g21_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CA6A99F7170CB6F"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g21_b2_n_0
    );
g21_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"97F5647ED66C17C4"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g21_b3_n_0
    );
g21_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0C55A879930FF2F"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g21_b4_n_0
    );
g21_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CF06E3F747F8A63"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g21_b5_n_0
    );
g21_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2C5B1B83A53F46C"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g21_b6_n_0
    );
g21_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF7D649FB0739F76"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g21_b7_n_0
    );
g22_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCFBEC298825C19C"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g22_b0_n_0
    );
g22_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"64D779E1EE203E54"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g22_b1_n_0
    );
g22_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C1F6796EA5D74D4"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g22_b2_n_0
    );
g22_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5BB3D8DB04BAF810"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g22_b3_n_0
    );
g22_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11B9DF4AE7A628DD"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g22_b4_n_0
    );
g22_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0EB387722901964"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g22_b5_n_0
    );
g22_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2472EF0D42046522"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g22_b6_n_0
    );
g22_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"89BDE77C90F2D6D8"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g22_b7_n_0
    );
g23_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"649D0FABF3F78323"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g23_b0_n_0
    );
g23_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F09D38F4351753C5"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g23_b1_n_0
    );
g23_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87069F3C58DBE3B0"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g23_b2_n_0
    );
g23_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75AFBF02E11C7EBE"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g23_b3_n_0
    );
g23_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACDA349F1344877A"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g23_b4_n_0
    );
g23_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CF3600C3C3196B9"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g23_b5_n_0
    );
g23_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"86F5721190779523"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g23_b6_n_0
    );
g23_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0E9AF9E812468E"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g23_b7_n_0
    );
g24_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37AB4268A6104A74"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g24_b0_n_0
    );
g24_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78AC2B0A50BB433E"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g24_b1_n_0
    );
g24_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C4F939A7D100384"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g24_b2_n_0
    );
g24_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470453401BC10F96"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g24_b3_n_0
    );
g24_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1123507555CBF699"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g24_b4_n_0
    );
g24_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9540995897B6AD22"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g24_b5_n_0
    );
g24_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D3982F710909400"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g24_b6_n_0
    );
g24_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"052348C589963530"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g24_b7_n_0
    );
g25_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DBB7DCB780589AA"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g25_b0_n_0
    );
g25_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C27382C05CA8E4A6"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g25_b1_n_0
    );
g25_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"042A3B37269AD6F9"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g25_b2_n_0
    );
g25_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7CD41ED788C316DF"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g25_b3_n_0
    );
g25_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82F07AE86B173A17"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g25_b4_n_0
    );
g25_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"500CF5B16DCAE40E"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g25_b5_n_0
    );
g25_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F38FDBCA7411C54"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g25_b6_n_0
    );
g25_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34633986EFADEF33"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g25_b7_n_0
    );
g26_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC7667F8371A01D0"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g26_b0_n_0
    );
g26_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8EE56778287B0488"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g26_b1_n_0
    );
g26_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"967EC42B892154ED"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g26_b2_n_0
    );
g26_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5FEBA6B0C07D06F"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g26_b3_n_0
    );
g26_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9E38E8E614D76481"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g26_b4_n_0
    );
g26_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"451372AFB82E6A2F"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g26_b5_n_0
    );
g26_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DE8797E304243664"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g26_b6_n_0
    );
g26_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6947A2521442E411"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g26_b7_n_0
    );
g27_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"360DE36BA53B39DA"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g27_b0_n_0
    );
g27_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F17DE26A23660C5"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g27_b1_n_0
    );
g27_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD7B4CBE1A2F4746"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g27_b2_n_0
    );
g27_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BEE3753CC495306"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g27_b3_n_0
    );
g27_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"771D0D38E46F8FF7"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g27_b4_n_0
    );
g27_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"92EB5CAD8F969C4C"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g27_b5_n_0
    );
g27_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"86C702D73EB11704"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g27_b6_n_0
    );
g27_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"46E6F147C38AE03B"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g27_b7_n_0
    );
g28_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"915EF288CEA427A2"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g28_b0_n_0
    );
g28_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E773AA6481F9996D"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g28_b1_n_0
    );
g28_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBA3A02552216303"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g28_b2_n_0
    );
g28_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73DCADBD38EE7719"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g28_b3_n_0
    );
g28_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4C94651F68D7D37"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g28_b4_n_0
    );
g28_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C9D256F8DD4522F"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g28_b5_n_0
    );
g28_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"053534C2F3FB53E1"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g28_b6_n_0
    );
g28_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E4F64B0DA193188"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g28_b7_n_0
    );
g29_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"385195BD50D74636"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g29_b0_n_0
    );
g29_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"455AC309A48EB70A"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g29_b1_n_0
    );
g29_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"725A84CC51F93722"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g29_b2_n_0
    );
g29_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41C2A73CAC053794"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g29_b3_n_0
    );
g29_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E8064F214D7AFA1"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g29_b4_n_0
    );
g29_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A1BDE8B46DB3076"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g29_b5_n_0
    );
g29_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A29378CA3308FB5"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g29_b6_n_0
    );
g29_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B9A5C2593E1099F"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g29_b7_n_0
    );
g2_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5B883374B5FA34"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g2_b0_n_0
    );
g2_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1C4F72EABFC8CF92"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g2_b1_n_0
    );
g2_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B9DA9321C6A9CEC"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g2_b2_n_0
    );
g2_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0ABFECDC6BEB322A"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g2_b3_n_0
    );
g2_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87F4F2E06503FA9A"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g2_b4_n_0
    );
g2_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8B2C9D9998744E7"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g2_b5_n_0
    );
g2_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DC0C2796658ECB3"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g2_b6_n_0
    );
g2_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003655109EE95634"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g2_b7_n_0
    );
g30_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9DEABD606FA9E610"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g30_b0_n_0
    );
g30_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED1D6E85114D409A"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g30_b1_n_0
    );
g30_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B7277085849E73F8"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g30_b2_n_0
    );
g30_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB662AD8B89B8634"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g30_b3_n_0
    );
g30_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F1C3B9025DEA16A"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g30_b4_n_0
    );
g30_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C201B268A37E51C"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g30_b5_n_0
    );
g30_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB53D63874E4952"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g30_b6_n_0
    );
g30_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4CAF053AF312AC9"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g30_b7_n_0
    );
g31_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D816753626D32C72"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g31_b0_n_0
    );
g31_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CC77C46188CBCFB"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g31_b1_n_0
    );
g31_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF612A6816E42498"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g31_b2_n_0
    );
g31_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D12CA5122E2CCA4B"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g31_b3_n_0
    );
g31_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4547866F2A921AA4"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g31_b4_n_0
    );
g31_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4ADE6AD4E8936B4B"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g31_b5_n_0
    );
g31_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC32ABB5FBC6C525"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g31_b6_n_0
    );
g31_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1299678EAB9F3A60"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g31_b7_n_0
    );
g3_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66B7687BBAB25BBD"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g3_b0_n_0
    );
g3_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"97A6C70725C672DF"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g3_b1_n_0
    );
g3_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF447099B4175DB"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g3_b2_n_0
    );
g3_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3898F69137D05C6B"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g3_b3_n_0
    );
g3_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEA86F5FCA88DD57"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g3_b4_n_0
    );
g3_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C6D709B584F8C76"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g3_b5_n_0
    );
g3_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B4412BD18FD6A5F"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g3_b6_n_0
    );
g3_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6921B188B1009CF4"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g3_b7_n_0
    );
g4_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38D826AD3D6EDB5A"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g4_b0_n_0
    );
g4_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4910FA07622083C"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g4_b1_n_0
    );
g4_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED9A5D5F9EA81390"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g4_b2_n_0
    );
g4_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8DFB9CDA2DFE9AFE"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g4_b3_n_0
    );
g4_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E83137B937B512C4"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g4_b4_n_0
    );
g4_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"556B970A8844868B"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g4_b5_n_0
    );
g4_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70603306BF07B2F1"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g4_b6_n_0
    );
g4_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED6D28DEB5865CDC"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g4_b7_n_0
    );
g5_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48B860581C4F9F59"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g5_b0_n_0
    );
g5_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACF9D8581AB8068E"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g5_b1_n_0
    );
g5_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17543CFE6BC3EF9B"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g5_b2_n_0
    );
g5_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BE94E1781408550"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g5_b3_n_0
    );
g5_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A19BC82B6992B7BD"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g5_b4_n_0
    );
g5_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD901DDA9AFCCAC5"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g5_b5_n_0
    );
g5_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8554EDBDDFB4763"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g5_b6_n_0
    );
g5_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3992550CE9AB8D69"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g5_b7_n_0
    );
g6_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5E744E90A646C40"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g6_b0_n_0
    );
g6_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4AB6510645D88A2"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g6_b1_n_0
    );
g6_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE425C82EEBAFFDA"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g6_b2_n_0
    );
g6_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFAE055C8E437C2"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g6_b3_n_0
    );
g6_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"94AE470543C59CDC"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g6_b4_n_0
    );
g6_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0D9A1EDDF0C79C"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g6_b5_n_0
    );
g6_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75B9F1BBF6334275"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g6_b6_n_0
    );
g6_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D07C3AAE71118DBB"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g6_b7_n_0
    );
g7_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"53D810D116113FD2"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g7_b0_n_0
    );
g7_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8D0D8AD41FF0B033"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g7_b1_n_0
    );
g7_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9728863C64555103"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g7_b2_n_0
    );
g7_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D82EBD3841724F0"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g7_b3_n_0
    );
g7_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B246E06A77168DDB"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g7_b4_n_0
    );
g7_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AA2C5BF9719BFD0"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g7_b5_n_0
    );
g7_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEDC035405988372"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g7_b6_n_0
    );
g7_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2D263313BC38943"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g7_b7_n_0
    );
g8_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A08FAD7A7B02BC1"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g8_b0_n_0
    );
g8_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CC03937FDA895E7"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g8_b1_n_0
    );
g8_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEA8F9330F2B923C"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g8_b2_n_0
    );
g8_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8D3E9A70045A22FB"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g8_b3_n_0
    );
g8_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"054050D814F243F0"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g8_b4_n_0
    );
g8_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D559CE3DB771C183"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g8_b5_n_0
    );
g8_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1CFE5EC83F5A103"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g8_b6_n_0
    );
g8_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9D1429F876CEC309"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g8_b7_n_0
    );
g9_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65EFC6B39F39805A"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g9_b0_n_0
    );
g9_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B436F9EFFD9BA809"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g9_b1_n_0
    );
g9_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"493C8A59D84E88A2"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g9_b2_n_0
    );
g9_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D137894B96B425A7"
    )
        port map (
      I0 => \a_reg_reg[0]_rep_n_0\,
      I1 => \a_reg_reg[1]_rep_n_0\,
      I2 => \a_reg_reg[2]_rep_n_0\,
      I3 => \a_reg_reg[3]_rep_n_0\,
      I4 => \a_reg_reg[4]_rep_n_0\,
      I5 => \a_reg_reg[5]_rep_n_0\,
      O => g9_b3_n_0
    );
g9_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7A662019E782F56B"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g9_b4_n_0
    );
g9_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"427AA5A7298B838A"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g9_b5_n_0
    );
g9_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F0F6654DA4D8E1"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g9_b6_n_0
    );
g9_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73239DD9167BA78A"
    )
        port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => g9_b7_n_0
    );
\qspo_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[0]_i_8_n_0\,
      I1 => \qspo_int_reg[0]_i_9_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[0]_i_10_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[0]_i_11_n_0\,
      O => \qspo_int[0]_i_4_n_0\
    );
\qspo_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[0]_i_12_n_0\,
      I1 => \qspo_int_reg[0]_i_13_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[0]_i_14_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[0]_i_15_n_0\,
      O => \qspo_int[0]_i_5_n_0\
    );
\qspo_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[0]_i_16_n_0\,
      I1 => \qspo_int_reg[0]_i_17_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[0]_i_18_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[0]_i_19_n_0\,
      O => \qspo_int[0]_i_6_n_0\
    );
\qspo_int[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[0]_i_20_n_0\,
      I1 => \qspo_int_reg[0]_i_21_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[0]_i_22_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[0]_i_23_n_0\,
      O => \qspo_int[0]_i_7_n_0\
    );
\qspo_int[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[1]_i_8_n_0\,
      I1 => \qspo_int_reg[1]_i_9_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[1]_i_10_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[1]_i_11_n_0\,
      O => \qspo_int[1]_i_4_n_0\
    );
\qspo_int[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[1]_i_12_n_0\,
      I1 => \qspo_int_reg[1]_i_13_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[1]_i_14_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[1]_i_15_n_0\,
      O => \qspo_int[1]_i_5_n_0\
    );
\qspo_int[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[1]_i_16_n_0\,
      I1 => \qspo_int_reg[1]_i_17_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[1]_i_18_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[1]_i_19_n_0\,
      O => \qspo_int[1]_i_6_n_0\
    );
\qspo_int[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[1]_i_20_n_0\,
      I1 => \qspo_int_reg[1]_i_21_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[1]_i_22_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[1]_i_23_n_0\,
      O => \qspo_int[1]_i_7_n_0\
    );
\qspo_int[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[2]_i_8_n_0\,
      I1 => \qspo_int_reg[2]_i_9_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[2]_i_10_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[2]_i_11_n_0\,
      O => \qspo_int[2]_i_4_n_0\
    );
\qspo_int[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[2]_i_12_n_0\,
      I1 => \qspo_int_reg[2]_i_13_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[2]_i_14_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[2]_i_15_n_0\,
      O => \qspo_int[2]_i_5_n_0\
    );
\qspo_int[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[2]_i_16_n_0\,
      I1 => \qspo_int_reg[2]_i_17_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[2]_i_18_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[2]_i_19_n_0\,
      O => \qspo_int[2]_i_6_n_0\
    );
\qspo_int[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[2]_i_20_n_0\,
      I1 => \qspo_int_reg[2]_i_21_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[2]_i_22_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[2]_i_23_n_0\,
      O => \qspo_int[2]_i_7_n_0\
    );
\qspo_int[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[3]_i_8_n_0\,
      I1 => \qspo_int_reg[3]_i_9_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[3]_i_10_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[3]_i_11_n_0\,
      O => \qspo_int[3]_i_4_n_0\
    );
\qspo_int[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[3]_i_12_n_0\,
      I1 => \qspo_int_reg[3]_i_13_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[3]_i_14_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[3]_i_15_n_0\,
      O => \qspo_int[3]_i_5_n_0\
    );
\qspo_int[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[3]_i_16_n_0\,
      I1 => \qspo_int_reg[3]_i_17_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[3]_i_18_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[3]_i_19_n_0\,
      O => \qspo_int[3]_i_6_n_0\
    );
\qspo_int[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[3]_i_20_n_0\,
      I1 => \qspo_int_reg[3]_i_21_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[3]_i_22_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[3]_i_23_n_0\,
      O => \qspo_int[3]_i_7_n_0\
    );
\qspo_int[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[4]_i_8_n_0\,
      I1 => \qspo_int_reg[4]_i_9_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[4]_i_10_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[4]_i_11_n_0\,
      O => \qspo_int[4]_i_4_n_0\
    );
\qspo_int[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[4]_i_12_n_0\,
      I1 => \qspo_int_reg[4]_i_13_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[4]_i_14_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[4]_i_15_n_0\,
      O => \qspo_int[4]_i_5_n_0\
    );
\qspo_int[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[4]_i_16_n_0\,
      I1 => \qspo_int_reg[4]_i_17_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[4]_i_18_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[4]_i_19_n_0\,
      O => \qspo_int[4]_i_6_n_0\
    );
\qspo_int[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[4]_i_20_n_0\,
      I1 => \qspo_int_reg[4]_i_21_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[4]_i_22_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[4]_i_23_n_0\,
      O => \qspo_int[4]_i_7_n_0\
    );
\qspo_int[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[5]_i_8_n_0\,
      I1 => \qspo_int_reg[5]_i_9_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[5]_i_10_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[5]_i_11_n_0\,
      O => \qspo_int[5]_i_4_n_0\
    );
\qspo_int[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[5]_i_12_n_0\,
      I1 => \qspo_int_reg[5]_i_13_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[5]_i_14_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[5]_i_15_n_0\,
      O => \qspo_int[5]_i_5_n_0\
    );
\qspo_int[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[5]_i_16_n_0\,
      I1 => \qspo_int_reg[5]_i_17_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[5]_i_18_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[5]_i_19_n_0\,
      O => \qspo_int[5]_i_6_n_0\
    );
\qspo_int[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[5]_i_20_n_0\,
      I1 => \qspo_int_reg[5]_i_21_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[5]_i_22_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[5]_i_23_n_0\,
      O => \qspo_int[5]_i_7_n_0\
    );
\qspo_int[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[6]_i_8_n_0\,
      I1 => \qspo_int_reg[6]_i_9_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[6]_i_10_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[6]_i_11_n_0\,
      O => \qspo_int[6]_i_4_n_0\
    );
\qspo_int[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[6]_i_12_n_0\,
      I1 => \qspo_int_reg[6]_i_13_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[6]_i_14_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[6]_i_15_n_0\,
      O => \qspo_int[6]_i_5_n_0\
    );
\qspo_int[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[6]_i_16_n_0\,
      I1 => \qspo_int_reg[6]_i_17_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[6]_i_18_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[6]_i_19_n_0\,
      O => \qspo_int[6]_i_6_n_0\
    );
\qspo_int[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[6]_i_20_n_0\,
      I1 => \qspo_int_reg[6]_i_21_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[6]_i_22_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[6]_i_23_n_0\,
      O => \qspo_int[6]_i_7_n_0\
    );
\qspo_int[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[7]_i_8_n_0\,
      I1 => \qspo_int_reg[7]_i_9_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[7]_i_10_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[7]_i_11_n_0\,
      O => \qspo_int[7]_i_4_n_0\
    );
\qspo_int[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[7]_i_12_n_0\,
      I1 => \qspo_int_reg[7]_i_13_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[7]_i_14_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[7]_i_15_n_0\,
      O => \qspo_int[7]_i_5_n_0\
    );
\qspo_int[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[7]_i_16_n_0\,
      I1 => \qspo_int_reg[7]_i_17_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[7]_i_18_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[7]_i_19_n_0\,
      O => \qspo_int[7]_i_6_n_0\
    );
\qspo_int[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \qspo_int_reg[7]_i_20_n_0\,
      I1 => \qspo_int_reg[7]_i_21_n_0\,
      I2 => a_reg(8),
      I3 => \qspo_int_reg[7]_i_22_n_0\,
      I4 => a_reg(7),
      I5 => \qspo_int_reg[7]_i_23_n_0\,
      O => \qspo_int[7]_i_7_n_0\
    );
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[0]_i_1_n_0\,
      Q => qspo(0),
      R => '0'
    );
\qspo_int_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qspo_int_reg[0]_i_2_n_0\,
      I1 => \qspo_int_reg[0]_i_3_n_0\,
      O => \qspo_int_reg[0]_i_1_n_0\,
      S => a_reg(10)
    );
\qspo_int_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b0_n_0,
      I1 => g3_b0_n_0,
      O => \qspo_int_reg[0]_i_10_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b0_n_0,
      I1 => g1_b0_n_0,
      O => \qspo_int_reg[0]_i_11_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b0_n_0,
      I1 => g15_b0_n_0,
      O => \qspo_int_reg[0]_i_12_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b0_n_0,
      I1 => g13_b0_n_0,
      O => \qspo_int_reg[0]_i_13_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b0_n_0,
      I1 => g11_b0_n_0,
      O => \qspo_int_reg[0]_i_14_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b0_n_0,
      I1 => g9_b0_n_0,
      O => \qspo_int_reg[0]_i_15_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b0_n_0,
      I1 => g23_b0_n_0,
      O => \qspo_int_reg[0]_i_16_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b0_n_0,
      I1 => g21_b0_n_0,
      O => \qspo_int_reg[0]_i_17_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b0_n_0,
      I1 => g19_b0_n_0,
      O => \qspo_int_reg[0]_i_18_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b0_n_0,
      I1 => g17_b0_n_0,
      O => \qspo_int_reg[0]_i_19_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[0]_i_4_n_0\,
      I1 => \qspo_int[0]_i_5_n_0\,
      O => \qspo_int_reg[0]_i_2_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[0]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b0_n_0,
      I1 => g31_b0_n_0,
      O => \qspo_int_reg[0]_i_20_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b0_n_0,
      I1 => g29_b0_n_0,
      O => \qspo_int_reg[0]_i_21_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b0_n_0,
      I1 => g27_b0_n_0,
      O => \qspo_int_reg[0]_i_22_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b0_n_0,
      I1 => g25_b0_n_0,
      O => \qspo_int_reg[0]_i_23_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[0]_i_6_n_0\,
      I1 => \qspo_int[0]_i_7_n_0\,
      O => \qspo_int_reg[0]_i_3_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b0_n_0,
      I1 => g7_b0_n_0,
      O => \qspo_int_reg[0]_i_8_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b0_n_0,
      I1 => g5_b0_n_0,
      O => \qspo_int_reg[0]_i_9_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[1]_i_1_n_0\,
      Q => qspo(1),
      R => '0'
    );
\qspo_int_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qspo_int_reg[1]_i_2_n_0\,
      I1 => \qspo_int_reg[1]_i_3_n_0\,
      O => \qspo_int_reg[1]_i_1_n_0\,
      S => a_reg(10)
    );
\qspo_int_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b1_n_0,
      I1 => g3_b1_n_0,
      O => \qspo_int_reg[1]_i_10_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => g1_b1_n_0,
      O => \qspo_int_reg[1]_i_11_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b1_n_0,
      I1 => g15_b1_n_0,
      O => \qspo_int_reg[1]_i_12_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b1_n_0,
      I1 => g13_b1_n_0,
      O => \qspo_int_reg[1]_i_13_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b1_n_0,
      I1 => g11_b1_n_0,
      O => \qspo_int_reg[1]_i_14_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b1_n_0,
      I1 => g9_b1_n_0,
      O => \qspo_int_reg[1]_i_15_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b1_n_0,
      I1 => g23_b1_n_0,
      O => \qspo_int_reg[1]_i_16_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b1_n_0,
      I1 => g21_b1_n_0,
      O => \qspo_int_reg[1]_i_17_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b1_n_0,
      I1 => g19_b1_n_0,
      O => \qspo_int_reg[1]_i_18_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b1_n_0,
      I1 => g17_b1_n_0,
      O => \qspo_int_reg[1]_i_19_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[1]_i_4_n_0\,
      I1 => \qspo_int[1]_i_5_n_0\,
      O => \qspo_int_reg[1]_i_2_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[1]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b1_n_0,
      I1 => g31_b1_n_0,
      O => \qspo_int_reg[1]_i_20_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b1_n_0,
      I1 => g29_b1_n_0,
      O => \qspo_int_reg[1]_i_21_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b1_n_0,
      I1 => g27_b1_n_0,
      O => \qspo_int_reg[1]_i_22_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b1_n_0,
      I1 => g25_b1_n_0,
      O => \qspo_int_reg[1]_i_23_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[1]_i_6_n_0\,
      I1 => \qspo_int[1]_i_7_n_0\,
      O => \qspo_int_reg[1]_i_3_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b1_n_0,
      I1 => g7_b1_n_0,
      O => \qspo_int_reg[1]_i_8_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b1_n_0,
      I1 => g5_b1_n_0,
      O => \qspo_int_reg[1]_i_9_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[2]_i_1_n_0\,
      Q => qspo(2),
      R => '0'
    );
\qspo_int_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qspo_int_reg[2]_i_2_n_0\,
      I1 => \qspo_int_reg[2]_i_3_n_0\,
      O => \qspo_int_reg[2]_i_1_n_0\,
      S => a_reg(10)
    );
\qspo_int_reg[2]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b2_n_0,
      I1 => g3_b2_n_0,
      O => \qspo_int_reg[2]_i_10_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b2_n_0,
      I1 => g1_b2_n_0,
      O => \qspo_int_reg[2]_i_11_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b2_n_0,
      I1 => g15_b2_n_0,
      O => \qspo_int_reg[2]_i_12_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b2_n_0,
      I1 => g13_b2_n_0,
      O => \qspo_int_reg[2]_i_13_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b2_n_0,
      I1 => g11_b2_n_0,
      O => \qspo_int_reg[2]_i_14_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b2_n_0,
      I1 => g9_b2_n_0,
      O => \qspo_int_reg[2]_i_15_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b2_n_0,
      I1 => g23_b2_n_0,
      O => \qspo_int_reg[2]_i_16_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b2_n_0,
      I1 => g21_b2_n_0,
      O => \qspo_int_reg[2]_i_17_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b2_n_0,
      I1 => g19_b2_n_0,
      O => \qspo_int_reg[2]_i_18_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b2_n_0,
      I1 => g17_b2_n_0,
      O => \qspo_int_reg[2]_i_19_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[2]_i_4_n_0\,
      I1 => \qspo_int[2]_i_5_n_0\,
      O => \qspo_int_reg[2]_i_2_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[2]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b2_n_0,
      I1 => g31_b2_n_0,
      O => \qspo_int_reg[2]_i_20_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b2_n_0,
      I1 => g29_b2_n_0,
      O => \qspo_int_reg[2]_i_21_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b2_n_0,
      I1 => g27_b2_n_0,
      O => \qspo_int_reg[2]_i_22_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b2_n_0,
      I1 => g25_b2_n_0,
      O => \qspo_int_reg[2]_i_23_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[2]_i_6_n_0\,
      I1 => \qspo_int[2]_i_7_n_0\,
      O => \qspo_int_reg[2]_i_3_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b2_n_0,
      I1 => g7_b2_n_0,
      O => \qspo_int_reg[2]_i_8_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[2]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b2_n_0,
      I1 => g5_b2_n_0,
      O => \qspo_int_reg[2]_i_9_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[3]_i_1_n_0\,
      Q => qspo(3),
      R => '0'
    );
\qspo_int_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qspo_int_reg[3]_i_2_n_0\,
      I1 => \qspo_int_reg[3]_i_3_n_0\,
      O => \qspo_int_reg[3]_i_1_n_0\,
      S => a_reg(10)
    );
\qspo_int_reg[3]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b3_n_0,
      I1 => g3_b3_n_0,
      O => \qspo_int_reg[3]_i_10_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_n_0,
      I1 => g1_b3_n_0,
      O => \qspo_int_reg[3]_i_11_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b3_n_0,
      I1 => g15_b3_n_0,
      O => \qspo_int_reg[3]_i_12_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b3_n_0,
      I1 => g13_b3_n_0,
      O => \qspo_int_reg[3]_i_13_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b3_n_0,
      I1 => g11_b3_n_0,
      O => \qspo_int_reg[3]_i_14_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b3_n_0,
      I1 => g9_b3_n_0,
      O => \qspo_int_reg[3]_i_15_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b3_n_0,
      I1 => g23_b3_n_0,
      O => \qspo_int_reg[3]_i_16_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b3_n_0,
      I1 => g21_b3_n_0,
      O => \qspo_int_reg[3]_i_17_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b3_n_0,
      I1 => g19_b3_n_0,
      O => \qspo_int_reg[3]_i_18_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b3_n_0,
      I1 => g17_b3_n_0,
      O => \qspo_int_reg[3]_i_19_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[3]_i_4_n_0\,
      I1 => \qspo_int[3]_i_5_n_0\,
      O => \qspo_int_reg[3]_i_2_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[3]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b3_n_0,
      I1 => g31_b3_n_0,
      O => \qspo_int_reg[3]_i_20_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b3_n_0,
      I1 => g29_b3_n_0,
      O => \qspo_int_reg[3]_i_21_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b3_n_0,
      I1 => g27_b3_n_0,
      O => \qspo_int_reg[3]_i_22_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b3_n_0,
      I1 => g25_b3_n_0,
      O => \qspo_int_reg[3]_i_23_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[3]_i_6_n_0\,
      I1 => \qspo_int[3]_i_7_n_0\,
      O => \qspo_int_reg[3]_i_3_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b3_n_0,
      I1 => g7_b3_n_0,
      O => \qspo_int_reg[3]_i_8_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b3_n_0,
      I1 => g5_b3_n_0,
      O => \qspo_int_reg[3]_i_9_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[4]_i_1_n_0\,
      Q => qspo(4),
      R => '0'
    );
\qspo_int_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qspo_int_reg[4]_i_2_n_0\,
      I1 => \qspo_int_reg[4]_i_3_n_0\,
      O => \qspo_int_reg[4]_i_1_n_0\,
      S => a_reg(10)
    );
\qspo_int_reg[4]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b4_n_0,
      I1 => g3_b4_n_0,
      O => \qspo_int_reg[4]_i_10_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b4_n_0,
      I1 => g1_b4_n_0,
      O => \qspo_int_reg[4]_i_11_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b4_n_0,
      I1 => g15_b4_n_0,
      O => \qspo_int_reg[4]_i_12_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b4_n_0,
      I1 => g13_b4_n_0,
      O => \qspo_int_reg[4]_i_13_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b4_n_0,
      I1 => g11_b4_n_0,
      O => \qspo_int_reg[4]_i_14_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b4_n_0,
      I1 => g9_b4_n_0,
      O => \qspo_int_reg[4]_i_15_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b4_n_0,
      I1 => g23_b4_n_0,
      O => \qspo_int_reg[4]_i_16_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b4_n_0,
      I1 => g21_b4_n_0,
      O => \qspo_int_reg[4]_i_17_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b4_n_0,
      I1 => g19_b4_n_0,
      O => \qspo_int_reg[4]_i_18_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b4_n_0,
      I1 => g17_b4_n_0,
      O => \qspo_int_reg[4]_i_19_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[4]_i_4_n_0\,
      I1 => \qspo_int[4]_i_5_n_0\,
      O => \qspo_int_reg[4]_i_2_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[4]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b4_n_0,
      I1 => g31_b4_n_0,
      O => \qspo_int_reg[4]_i_20_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b4_n_0,
      I1 => g29_b4_n_0,
      O => \qspo_int_reg[4]_i_21_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b4_n_0,
      I1 => g27_b4_n_0,
      O => \qspo_int_reg[4]_i_22_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b4_n_0,
      I1 => g25_b4_n_0,
      O => \qspo_int_reg[4]_i_23_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[4]_i_6_n_0\,
      I1 => \qspo_int[4]_i_7_n_0\,
      O => \qspo_int_reg[4]_i_3_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b4_n_0,
      I1 => g7_b4_n_0,
      O => \qspo_int_reg[4]_i_8_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[4]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b4_n_0,
      I1 => g5_b4_n_0,
      O => \qspo_int_reg[4]_i_9_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[5]_i_1_n_0\,
      Q => qspo(5),
      R => '0'
    );
\qspo_int_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qspo_int_reg[5]_i_2_n_0\,
      I1 => \qspo_int_reg[5]_i_3_n_0\,
      O => \qspo_int_reg[5]_i_1_n_0\,
      S => a_reg(10)
    );
\qspo_int_reg[5]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b5_n_0,
      I1 => g3_b5_n_0,
      O => \qspo_int_reg[5]_i_10_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b5_n_0,
      I1 => g1_b5_n_0,
      O => \qspo_int_reg[5]_i_11_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b5_n_0,
      I1 => g15_b5_n_0,
      O => \qspo_int_reg[5]_i_12_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b5_n_0,
      I1 => g13_b5_n_0,
      O => \qspo_int_reg[5]_i_13_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b5_n_0,
      I1 => g11_b5_n_0,
      O => \qspo_int_reg[5]_i_14_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b5_n_0,
      I1 => g9_b5_n_0,
      O => \qspo_int_reg[5]_i_15_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b5_n_0,
      I1 => g23_b5_n_0,
      O => \qspo_int_reg[5]_i_16_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b5_n_0,
      I1 => g21_b5_n_0,
      O => \qspo_int_reg[5]_i_17_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b5_n_0,
      I1 => g19_b5_n_0,
      O => \qspo_int_reg[5]_i_18_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b5_n_0,
      I1 => g17_b5_n_0,
      O => \qspo_int_reg[5]_i_19_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[5]_i_4_n_0\,
      I1 => \qspo_int[5]_i_5_n_0\,
      O => \qspo_int_reg[5]_i_2_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[5]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b5_n_0,
      I1 => g31_b5_n_0,
      O => \qspo_int_reg[5]_i_20_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b5_n_0,
      I1 => g29_b5_n_0,
      O => \qspo_int_reg[5]_i_21_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b5_n_0,
      I1 => g27_b5_n_0,
      O => \qspo_int_reg[5]_i_22_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b5_n_0,
      I1 => g25_b5_n_0,
      O => \qspo_int_reg[5]_i_23_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[5]_i_6_n_0\,
      I1 => \qspo_int[5]_i_7_n_0\,
      O => \qspo_int_reg[5]_i_3_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[5]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b5_n_0,
      I1 => g7_b5_n_0,
      O => \qspo_int_reg[5]_i_8_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[5]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b5_n_0,
      I1 => g5_b5_n_0,
      O => \qspo_int_reg[5]_i_9_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[6]_i_1_n_0\,
      Q => qspo(6),
      R => '0'
    );
\qspo_int_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qspo_int_reg[6]_i_2_n_0\,
      I1 => \qspo_int_reg[6]_i_3_n_0\,
      O => \qspo_int_reg[6]_i_1_n_0\,
      S => a_reg(10)
    );
\qspo_int_reg[6]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b6_n_0,
      I1 => g3_b6_n_0,
      O => \qspo_int_reg[6]_i_10_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b6_n_0,
      I1 => g1_b6_n_0,
      O => \qspo_int_reg[6]_i_11_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b6_n_0,
      I1 => g15_b6_n_0,
      O => \qspo_int_reg[6]_i_12_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b6_n_0,
      I1 => g13_b6_n_0,
      O => \qspo_int_reg[6]_i_13_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b6_n_0,
      I1 => g11_b6_n_0,
      O => \qspo_int_reg[6]_i_14_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b6_n_0,
      I1 => g9_b6_n_0,
      O => \qspo_int_reg[6]_i_15_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b6_n_0,
      I1 => g23_b6_n_0,
      O => \qspo_int_reg[6]_i_16_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b6_n_0,
      I1 => g21_b6_n_0,
      O => \qspo_int_reg[6]_i_17_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b6_n_0,
      I1 => g19_b6_n_0,
      O => \qspo_int_reg[6]_i_18_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b6_n_0,
      I1 => g17_b6_n_0,
      O => \qspo_int_reg[6]_i_19_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[6]_i_4_n_0\,
      I1 => \qspo_int[6]_i_5_n_0\,
      O => \qspo_int_reg[6]_i_2_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[6]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b6_n_0,
      I1 => g31_b6_n_0,
      O => \qspo_int_reg[6]_i_20_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b6_n_0,
      I1 => g29_b6_n_0,
      O => \qspo_int_reg[6]_i_21_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b6_n_0,
      I1 => g27_b6_n_0,
      O => \qspo_int_reg[6]_i_22_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b6_n_0,
      I1 => g25_b6_n_0,
      O => \qspo_int_reg[6]_i_23_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[6]_i_6_n_0\,
      I1 => \qspo_int[6]_i_7_n_0\,
      O => \qspo_int_reg[6]_i_3_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[6]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b6_n_0,
      I1 => g7_b6_n_0,
      O => \qspo_int_reg[6]_i_8_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[6]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b6_n_0,
      I1 => g5_b6_n_0,
      O => \qspo_int_reg[6]_i_9_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \qspo_int_reg[7]_i_1_n_0\,
      Q => qspo(7),
      R => '0'
    );
\qspo_int_reg[7]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \qspo_int_reg[7]_i_2_n_0\,
      I1 => \qspo_int_reg[7]_i_3_n_0\,
      O => \qspo_int_reg[7]_i_1_n_0\,
      S => a_reg(10)
    );
\qspo_int_reg[7]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b7_n_0,
      I1 => g3_b7_n_0,
      O => \qspo_int_reg[7]_i_10_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b7_n_0,
      I1 => g1_b7_n_0,
      O => \qspo_int_reg[7]_i_11_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b7_n_0,
      I1 => g15_b7_n_0,
      O => \qspo_int_reg[7]_i_12_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b7_n_0,
      I1 => g13_b7_n_0,
      O => \qspo_int_reg[7]_i_13_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b7_n_0,
      I1 => g11_b7_n_0,
      O => \qspo_int_reg[7]_i_14_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b7_n_0,
      I1 => g9_b7_n_0,
      O => \qspo_int_reg[7]_i_15_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => g22_b7_n_0,
      I1 => g23_b7_n_0,
      O => \qspo_int_reg[7]_i_16_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => g20_b7_n_0,
      I1 => g21_b7_n_0,
      O => \qspo_int_reg[7]_i_17_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => g18_b7_n_0,
      I1 => g19_b7_n_0,
      O => \qspo_int_reg[7]_i_18_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => g16_b7_n_0,
      I1 => g17_b7_n_0,
      O => \qspo_int_reg[7]_i_19_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[7]_i_4_n_0\,
      I1 => \qspo_int[7]_i_5_n_0\,
      O => \qspo_int_reg[7]_i_2_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[7]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => g30_b7_n_0,
      I1 => g31_b7_n_0,
      O => \qspo_int_reg[7]_i_20_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => g28_b7_n_0,
      I1 => g29_b7_n_0,
      O => \qspo_int_reg[7]_i_21_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => g26_b7_n_0,
      I1 => g27_b7_n_0,
      O => \qspo_int_reg[7]_i_22_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => g24_b7_n_0,
      I1 => g25_b7_n_0,
      O => \qspo_int_reg[7]_i_23_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qspo_int[7]_i_6_n_0\,
      I1 => \qspo_int[7]_i_7_n_0\,
      O => \qspo_int_reg[7]_i_3_n_0\,
      S => a_reg(9)
    );
\qspo_int_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b7_n_0,
      I1 => g7_b7_n_0,
      O => \qspo_int_reg[7]_i_8_n_0\,
      S => a_reg(6)
    );
\qspo_int_reg[7]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b7_n_0,
      I1 => g5_b7_n_0,
      O => \qspo_int_reg[7]_i_9_n_0\,
      S => a_reg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity filter_rom_dist_mem_gen_v8_0_11_synth is
  port (
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC
  );
end filter_rom_dist_mem_gen_v8_0_11_synth;

architecture STRUCTURE of filter_rom_dist_mem_gen_v8_0_11_synth is
begin
\gen_rom.rom_inst\: entity work.filter_rom_rom
     port map (
      a(10 downto 0) => a(10 downto 0),
      clk => clk,
      qspo(7 downto 0) => qspo(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity filter_rom_dist_mem_gen_v8_0_11 is
  port (
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of filter_rom_dist_mem_gen_v8_0_11 : entity is 11;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of filter_rom_dist_mem_gen_v8_0_11 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of filter_rom_dist_mem_gen_v8_0_11 : entity is 2048;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of filter_rom_dist_mem_gen_v8_0_11 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of filter_rom_dist_mem_gen_v8_0_11 : entity is "zynq";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of filter_rom_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of filter_rom_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of filter_rom_dist_mem_gen_v8_0_11 : entity is "dist_mem_gen_0.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of filter_rom_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of filter_rom_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of filter_rom_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of filter_rom_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of filter_rom_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of filter_rom_dist_mem_gen_v8_0_11 : entity is 8;
end filter_rom_dist_mem_gen_v8_0_11;

architecture STRUCTURE of filter_rom_dist_mem_gen_v8_0_11 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  spo(7) <= \<const0>\;
  spo(6) <= \<const0>\;
  spo(5) <= \<const0>\;
  spo(4) <= \<const0>\;
  spo(3) <= \<const0>\;
  spo(2) <= \<const0>\;
  spo(1) <= \<const0>\;
  spo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.filter_rom_dist_mem_gen_v8_0_11_synth
     port map (
      a(10 downto 0) => a(10 downto 0),
      clk => clk,
      qspo(7 downto 0) => qspo(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity filter_rom is
  port (
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC;
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of filter_rom : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of filter_rom : entity is "dist_mem_gen_0,dist_mem_gen_v8_0_11,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of filter_rom : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of filter_rom : entity is "dist_mem_gen_v8_0_11,Vivado 2017.2";
end filter_rom;

architecture STRUCTURE of filter_rom is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 11;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 2048;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 1;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 1;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "dist_mem_gen_0.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 1;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 8;
begin
U0: entity work.filter_rom_dist_mem_gen_v8_0_11
     port map (
      a(10 downto 0) => a(10 downto 0),
      clk => clk,
      d(7 downto 0) => B"00000000",
      dpo(7 downto 0) => NLW_U0_dpo_UNCONNECTED(7 downto 0),
      dpra(10 downto 0) => B"00000000000",
      i_ce => '1',
      qdpo(7 downto 0) => NLW_U0_qdpo_UNCONNECTED(7 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(7 downto 0) => qspo(7 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(7 downto 0) => NLW_U0_spo_UNCONNECTED(7 downto 0),
      we => '0'
    );
end STRUCTURE;
