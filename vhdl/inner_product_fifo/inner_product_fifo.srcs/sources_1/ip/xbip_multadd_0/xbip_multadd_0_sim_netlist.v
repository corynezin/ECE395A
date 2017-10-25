// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Oct 18 19:09:46 2017
// Host        : bcv-Vostro-430 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/bcv/Documents/ECE395A/vhdl/inner_product_fifo/inner_product_fifo.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_sim_netlist.v
// Design      : xbip_multadd_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_0,xbip_multadd_v3_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module xbip_multadd_0
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [47:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) output [47:0]PCOUT;

  wire [7:0]A;
  wire [7:0]B;
  wire [47:0]C;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "0" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_OUT_HIGH = "47" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_10 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "0" *) (* C_A_WIDTH = "8" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "0" *) (* C_C_TYPE = "0" *) (* C_C_WIDTH = "48" *) 
(* C_OUT_HIGH = "47" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "1" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "xbip_multadd_v3_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_multadd_0_xbip_multadd_v3_0_10
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [7:0]A;
  input [7:0]B;
  input [47:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [47:0]P;
  output [47:0]PCOUT;

  wire [7:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "0" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_OUT_HIGH = "47" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_10_viv i_synth
       (.A(A),
        .B(B),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
b/QhBR/oOzwaIZ6E7xuGaVjTIqrrrk1JJQRhGHM3PGlr0wSnnQxll/0isGyM+wjDSK9GtAlYP0OM
/PCkyb+ehw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WJYbCKycBENXWINGjywfHsrNXZknL7yjgguwmqs6OwjbxK0hf5LYRBnuDpYwQhonmgh8FspAKN7S
vBI1o5pda3s0NrnqYv/G6epYOX6UDWwAVMwCaLpfxBgAA/lPO47odG5bWak48ZfirMNoqxPrYu/X
xn6bfuLcmjfyW6TeE4M=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mW//b3sbAmqxeiGHJDCiVCvPi9GZokMwU+5dRZ6OAcIpAn4OGe3GYmtpujCuVoiFy4oJaeHTE0DN
0VSZByGuwXomWUNjVxzi6wOCqyMnHN+CyPAWgXBhdnVWIXrkwfog4y5TSHD++gZeUJPFrxmlbbwN
+DAsGPPK04f6ZjdOYfI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qfQO4VdbKTpU6s25roZ9u0W2IQ08y+6LFnuMKThrKN1hhqSYoKZqaxCw7+7+dOwYONUoVDh6Wi59
Y+hGQ6HVycgFcoV3PaEcdVB0RoESzqmpiYJ6SrD7h8mfEIcp8t/XKFfDABpO6nrhgegzhtWEYOGW
zNnM/aMonrPoXnt40S3FQWlio5xbBJxLFXmdWCC1wAOsQdYsVK8EQJIFPrau95y+alu7rU9ksc+/
3L14+fqyd229GgD6dpTKDZDDB4x9rEW8XXVQwPX0lSPpwjPUyfMNaFv3y5Qs5okbJBAUJO+a4OxB
UKx1FvIAwLTAhlwqHDdnjdWxezTwyvyk0LCzug==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tm5E70kopcZVk2lyLZL2DhsNkZZ9007bUVlLF0bQzFHvYXYgcsXAQwflg5D1YrTQxGemPecou1PI
Wg3CmGsY5A9b6uGz1Xjtt6J/eMcflQGIF0plxkFJ9Yh0+Ud7+r8n4mljCP6SGYZHkRKF7XmNsEdo
vHkHZqPf2LZqnoTfmz875NP1mZsee1CGNEDbbZ1ILj8vkJo1u8ENiebnBG6kJtocnIpotFSnXK61
5FL1/B4oI0S4Us4bs5vvGLigC1RPIv1QZ9y0LcCax4QWJvscGfW/bGdGhqFZXQpbYuMzfxl6GI6w
wh7v2MHjv+Lr2OrwkHgkZx+XLyAwfzJL/FyEKA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpqBV3cdN1DAgn0KCpa1kC9lWQ1VJzcuAx5h8HQTGLCAzRUFQnCa/EFt6R0Qy7R3hEJGwHtvMUHP
h5h22kDwO5bAhKqaf1yU2gCwDqXG3DewDm2wwPj3TBQ5BBHJapwykdeKGMkQImwpxaRWQvu6I3xK
IUFYyggVvKKZnjDCYJHQIqubpmbB3Z3L3Z7uiKTwmQU0S5eCklRLzKPcMiaVKsrXf/3wA9mLjywg
udEIgv3oufyZDG+pbbDReiiG46DHu4cKmfKmIhwVc68tb/KLSnrROnfM1e43PKLLlC2Nb57FzIFr
D0AvLBs1wTe5j0nEI6Po55dq7Mi3efdkT/iW2w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
aBKyutCPI4dSchSj8aCIhe+hWBkU3t2bWtM6AqW/jnzjp5/5f8jDrUfKaQxaaFo9SsGq7B44Viu1
I9uwIqRH15DWwMxPgYxeFA0RKGlG6MVcd5yY8m06yI47cyma1E9F+yifD/UTvwwQXnE0amH93L9V
PAR036JVHEOonuPDzp3bwPvs1XLfkUmq02pokbHm3g2i/dvtByLOvAJR9/epyqeyo1LzKL0bRJB6
fITWh9RslVRLRVoGWHupB5HoeMY0E3Du2/S9fxN8SWs8vUK+6MD1KkZwCEV7zg25WpqUjxBjqdUG
p4HB46uZe/6+/1gVkexEpOKYzdAwc1hQg9ynpw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
JfulFQoNFnzeBtBxp5oBeB7J+UmXl4rhZOmEBlhu1Pu7EAsEQsTBSBRXEAgN3F09HaKmK//mTS0X
wz28nB1LSSFAimElXa8stKk02LrVYAROSl3pKDtuVhDo7GI9vXIDhgbNkksUQ7A0R1p7/CdMMxoF
oRt00OfuC5hi4VmlsG8q/nldqVzyTwWiax5fdWWrhc5wUmfRKHE4ZX4Kqgucvz1otpzfp03o1WNx
zZVPHLwPavzy1pcn1e7XJ7x+cNvZbdj2scuplx5xPwlyi4RlQENsDZpcx6QGKNwFIhHl6IlGAZWV
DfBdBMS4pOr1zoaz7+qoKvS6TIeSLn1K7nUsGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9200)
`pragma protect data_block
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
qle5WGKtCRAHzwgv+kH3JbN1OrvaOTw=
`pragma protect end_protected
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
