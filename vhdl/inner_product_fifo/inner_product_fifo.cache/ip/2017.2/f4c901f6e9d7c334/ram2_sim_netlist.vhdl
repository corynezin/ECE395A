-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Wed Oct 18 20:45:43 2017
-- Host        : bcv-Vostro-430 running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram2_sim_netlist.vhdl
-- Design      : ram2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram is
  port (
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    we : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram is
  signal qspo_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qspo_int : signal is "true";
  signal ram_reg_0_255_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_0_255_0_0_n_0 : STD_LOGIC;
  signal ram_reg_0_255_1_1_n_0 : STD_LOGIC;
  signal ram_reg_0_255_2_2_n_0 : STD_LOGIC;
  signal ram_reg_0_255_3_3_n_0 : STD_LOGIC;
  signal ram_reg_0_255_4_4_n_0 : STD_LOGIC;
  signal ram_reg_0_255_5_5_n_0 : STD_LOGIC;
  signal ram_reg_0_255_6_6_n_0 : STD_LOGIC;
  signal ram_reg_0_255_7_7_n_0 : STD_LOGIC;
  signal ram_reg_256_511_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_256_511_0_0_n_0 : STD_LOGIC;
  signal ram_reg_256_511_1_1_n_0 : STD_LOGIC;
  signal ram_reg_256_511_2_2_n_0 : STD_LOGIC;
  signal ram_reg_256_511_3_3_n_0 : STD_LOGIC;
  signal ram_reg_256_511_4_4_n_0 : STD_LOGIC;
  signal ram_reg_256_511_5_5_n_0 : STD_LOGIC;
  signal ram_reg_256_511_6_6_n_0 : STD_LOGIC;
  signal ram_reg_256_511_7_7_n_0 : STD_LOGIC;
  signal ram_reg_512_767_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_512_767_0_0_n_0 : STD_LOGIC;
  signal ram_reg_512_767_1_1_n_0 : STD_LOGIC;
  signal ram_reg_512_767_2_2_n_0 : STD_LOGIC;
  signal ram_reg_512_767_3_3_n_0 : STD_LOGIC;
  signal ram_reg_512_767_4_4_n_0 : STD_LOGIC;
  signal ram_reg_512_767_5_5_n_0 : STD_LOGIC;
  signal ram_reg_512_767_6_6_n_0 : STD_LOGIC;
  signal ram_reg_512_767_7_7_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_0_0_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_1_1_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_2_2_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_3_3_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_4_4_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_5_5_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_6_6_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_7_7_n_0 : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
  attribute KEEP of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute KEEP of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute KEEP of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute KEEP of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute KEEP of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute KEEP of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute KEEP of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
begin
  spo(7 downto 0) <= \^spo\(7 downto 0);
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(0),
      Q => qspo_int(0),
      R => '0'
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(1),
      Q => qspo_int(1),
      R => '0'
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(2),
      Q => qspo_int(2),
      R => '0'
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(3),
      Q => qspo_int(3),
      R => '0'
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(4),
      Q => qspo_int(4),
      R => '0'
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(5),
      Q => qspo_int(5),
      R => '0'
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(6),
      Q => qspo_int(6),
      R => '0'
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(7),
      Q => qspo_int(7),
      R => '0'
    );
ram_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"DCF6D3E6B460722D4FEDD676028C4769B75DD53D5C2D68F59CEAEECD9D34F512"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_0_255_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => we,
      I1 => a(8),
      I2 => a(9),
      O => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"61B72F18DADDA3BB56F6ADAD2829F0BE6403478464091CB4F25EA8973BB208B5"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_0_255_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"CBD058A185482A4A1DFF851E6D0A84198E2D47277D8700A2419DD699A6895B90"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_0_255_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"74BF58CD68576A7BF97E0EF4ABEF0A018BBDA97DA411325E51CE486400C3DAE8"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_0_255_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"545F3FFBC8ACA4353ABD15F7DAFB11D6B7C2E180C5072246E95714D27597502B"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_0_255_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"F32AD8131149E13ACB85752145157709AAB73064A91DF450C311EC8E11DE4045"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_0_255_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"679FB1F6CA3B903A92649EA53DFFE00D5852C0C787F4EC8F802CF54BCE95B94C"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_0_255_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"EE1F0ABF1507921DF46C8B46D99AC6CF4D5F9AEC1BA6979B4319F93403C8B21A"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_0_255_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_256_511_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"2830FD2FC82D22878ABB99DB2057679F72AB31D2DF1A34BDC51747C4718841FB"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_256_511_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => we,
      O => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"3C27C6A9B40B848105ACE49344A9B82085B7FCEE5093240C8533896D46EB829B"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_256_511_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"E51E48215F20A08E65E5A9CA594424D287ACA6820A7C117B3EE5F3D1380EBEF6"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_256_511_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"CBA963D8AE6E5A0EFF21C2337B978C30A3685F86E68822E75EE0283FFC7774A3"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_256_511_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"F2BE2AE2A7EBD814979C320F79194CE7D36692FF903422BFC867995B32396B07"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_256_511_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"55B4AB7482D7379349F5E613810534F6025115B49D0E1055E6CABFFC1478350C"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_256_511_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"85A8DA2AAB9A983E2A9BE47FA81711244BE14148E930994F8662ED80AB55067E"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_256_511_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"B1DAEE467A087A5FD9057323EB3567DBA7FE66F5E28FBA5B518ECD859AA214B0"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_256_511_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_512_767_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"3DA5622B55DCE1CFAD1A50CF1CACD14BA834F4CE9F53AF96A2B80D49B3762109"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_512_767_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => we,
      O => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"2DEFD524C6AF522546A31099A4868BB7530B09E186187BABA1698306FCBCF6CE"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_512_767_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"6264DC48D6D580BBFE9F43419F11F6215631418C2E55D696D8BD48E6BA5AD9D0"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_512_767_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"B08765D81C81E5E854D900BA50B152402247CB39492F80B87F9156116165E73A"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_512_767_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"2F042290DE7D68C5E2FF4F490A036462AB264BD816A4FD02AF70F5FCBE6197D4"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_512_767_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"4364F3E402E83B5C530870FE4F47DE22B08190244D7A88602C89E77EC61AF32A"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_512_767_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"D31A0E9C0F72CCEC0572E31E3EA54BA6D6C8E3056F463AE079048FD7ACF881F2"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_512_767_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"B4B346FDFBE8AAAC31CC9F63FFDCB1A29106FE880BA1FCFF8E91BEA55C44CE20"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_512_767_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_768_1023_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"81D2B45683528845A68723886B34DD9B792457B982F486FD507EB91F6E42412C"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_768_1023_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => we,
      I1 => a(8),
      I2 => a(9),
      O => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"05C9B5B5FB510EC6238F11881E147E50DD7F10F6BCB424FBEFA6C679194D78BE"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_768_1023_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"E6D705D2E0057750D03BC0CC5CAD8DB22176B332F5BDF1EB9ACA66CD56DA8FF6"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_768_1023_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"657D4E4F660621D39FD439D2528198275D65C477E8981972768CE602BBA768A3"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_768_1023_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"102C5839AC42A45AFE6DEFB2CE74593DB6E03524624B8CE561BF22AE24D78861"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_768_1023_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"F895A09F3906FBB5BC34A17DE06751B6930D73BC62D3938D48BF566FF98149FB"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_768_1023_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"D1D31732A31D7B13560BBDE3A34CBC57BB4FAFA9E6327D5CA15B4596765A02BC"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_768_1023_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"C88C20172BD8283DAFF5087BCB8DF11D853080D5D464578A50E9BCA0B4665458"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_768_1023_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_0_0_n_0,
      I1 => ram_reg_512_767_0_0_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_0_0_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_0_0_n_0,
      O => \^spo\(0)
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_1_1_n_0,
      I1 => ram_reg_512_767_1_1_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_1_1_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_1_1_n_0,
      O => \^spo\(1)
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_2_2_n_0,
      I1 => ram_reg_512_767_2_2_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_2_2_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_2_2_n_0,
      O => \^spo\(2)
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_3_3_n_0,
      I1 => ram_reg_512_767_3_3_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_3_3_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_3_3_n_0,
      O => \^spo\(3)
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_4_4_n_0,
      I1 => ram_reg_512_767_4_4_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_4_4_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_4_4_n_0,
      O => \^spo\(4)
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_5_5_n_0,
      I1 => ram_reg_512_767_5_5_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_5_5_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_5_5_n_0,
      O => \^spo\(5)
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_6_6_n_0,
      I1 => ram_reg_512_767_6_6_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_6_6_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_6_6_n_0,
      O => \^spo\(6)
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_7_7_n_0,
      I1 => ram_reg_512_767_7_7_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_7_7_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_7_7_n_0,
      O => \^spo\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    we : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11_synth is
begin
\gen_sp_ram.spram_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      spo(7 downto 0) => spo(7 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 9 downto 0 );
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
  attribute C_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 10;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 1024;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is "zynq";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is "ram2.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 : entity is 8;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11 is
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
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11_synth
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      spo(7 downto 0) => spo(7 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ram2,dist_mem_gen_v8_0_11,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dist_mem_gen_v8_0_11,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
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
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 10;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1024;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "ram2.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 8;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_11
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      dpo(7 downto 0) => NLW_U0_dpo_UNCONNECTED(7 downto 0),
      dpra(9 downto 0) => B"0000000000",
      i_ce => '1',
      qdpo(7 downto 0) => NLW_U0_qdpo_UNCONNECTED(7 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(7 downto 0) => NLW_U0_qspo_UNCONNECTED(7 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(7 downto 0) => spo(7 downto 0),
      we => we
    );
end STRUCTURE;
