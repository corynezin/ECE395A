--Name: Brenda So
--Date: 11/4/2017
--Goal: make convolution layer 0 with relu


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity conv0 is
  Port (
    in_0 : IN STD_LOGIC_VECTOR(7 downto 0);
    in_1 : IN STD_LOGIC_VECTOR(7 downto 0);
    out_0 : OUT STD_LOGIC_VECTOR(7 downto 0);
    out_1 : OUT STD_LOGIC_VECTOR(7 downto 0);
    clk : IN STD_LOGIC;
    input_data_valid : IN STD_LOGIC
  );
end conv0;


architecture RTL of conv0 is
component fir_compiler_0_0
  Port(
    aclk: IN STD_LOGIC;
    s_axis_data_tvalid: IN STD_LOGIC;
    s_axis_data_tready: OUT STD_LOGIC;
    s_axis_data_tdata: IN STD_LOGIC_VECTOR(7 downto 0);
    m_axis_data_tvalid: OUT STD_LOGIC;
    m_axis_data_tdata: OUT STD_LOGIC_VECTOR(8 downto 0)
);
end component;
component fir_compiler_0_1
  Port(
    aclk: IN STD_LOGIC;
    s_axis_data_tvalid: IN STD_LOGIC;
    s_axis_data_tready: OUT STD_LOGIC;
    s_axis_data_tdata: IN STD_LOGIC_VECTOR(7 downto 0);
    m_axis_data_tvalid: OUT STD_LOGIC;
    m_axis_data_tdata: OUT STD_LOGIC_VECTOR(8 downto 0)
);
end component;
component fir_compiler_1_0
  Port(
    aclk: IN STD_LOGIC;
    s_axis_data_tvalid: IN STD_LOGIC;
    s_axis_data_tready: OUT STD_LOGIC;
    s_axis_data_tdata: IN STD_LOGIC_VECTOR(7 downto 0);
    m_axis_data_tvalid: OUT STD_LOGIC;
    m_axis_data_tdata: OUT STD_LOGIC_VECTOR(8 downto 0)
);
end component;
component fir_compiler_1_1
  Port(
    aclk: IN STD_LOGIC;
    s_axis_data_tvalid: IN STD_LOGIC;
    s_axis_data_tready: OUT STD_LOGIC;
    s_axis_data_tdata: IN STD_LOGIC_VECTOR(7 downto 0);
    m_axis_data_tvalid: OUT STD_LOGIC;
    m_axis_data_tdata: OUT STD_LOGIC_VECTOR(8 downto 0)
);
end component;


signal out_0inter: STD_LOGIC_VECTOR(8 downto 0);
signal out_0_0: STD_LOGIC_VECTOR(7 downto 0);
signal out_0_1: STD_LOGIC_VECTOR(7 downto 0);
signal out_1inter: STD_LOGIC_VECTOR(8 downto 0);
signal out_1_0: STD_LOGIC_VECTOR(7 downto 0);
signal out_1_1: STD_LOGIC_VECTOR(7 downto 0);


begin
fir_0_0: fir_compiler_0_0
  Port Map (
    aclk=>clk,
    s_axis_data_tvalid => input_data_valid,
    s_axis_data_tready => ,
    s_axis_data_tdata => in_0,
    m_axis_data_tvalid => ,
    m_axis_data_tdata => out_0_0 
  );
fir_0_1: fir_compiler_0_1
  Port Map (
    aclk=>clk,
    s_axis_data_tvalid => input_data_valid,
    s_axis_data_tready => ,
    s_axis_data_tdata => in_1,
    m_axis_data_tvalid => ,
    m_axis_data_tdata => out_0_1 
  );
fir_1_0: fir_compiler_1_0
  Port Map (
    aclk=>clk,
    s_axis_data_tvalid => input_data_valid,
    s_axis_data_tready => ,
    s_axis_data_tdata => in_0,
    m_axis_data_tvalid => ,
    m_axis_data_tdata => out_1_0 
  );
fir_1_1: fir_compiler_1_1
  Port Map (
    aclk=>clk,
    s_axis_data_tvalid => input_data_valid,
    s_axis_data_tready => ,
    s_axis_data_tdata => in_1,
    m_axis_data_tvalid => ,
    m_axis_data_tdata => out_1_1 
  );
out_0<=out_0_inter(7 downto 0);
out_0_inter<= out_0_0 +
        out_0_1;
out_1<=out_1_inter(7 downto 0);
out_1_inter<= out_1_0 +
        out_1_1;
end RTL;
