// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Oct 17 20:48:56 2017
// Host        : bcv-Vostro-430 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/bcv/Documents/ECE395A/vhdl/inner_product/inner_product.srcs/sources_1/ip/mac/mac_sim_netlist.v
// Design      : mac
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mac,xbip_multadd_v3_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module mac
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
  mac_xbip_multadd_v3_0_10 U0
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
module mac_xbip_multadd_v3_0_10
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
  mac_xbip_multadd_v3_0_10_viv i_synth
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
HOtoVy0MgJ/K9bjEMaWCZT766kc334juLsuuw6zyJ6bHb9qy40UXsi3Zi0H2s0lLmDP6Tljr566a
ddegQuY/rRFvOtQQAbmg7I4dN2Hhy6kogRxX5HjMVKS9JogfbuW2G/oY6TVPza0l5dzkSd9RvoAA
pocepw3t6SxPbEGRGnZMG8dcSGHzABsPs+WujbBFve3HwStdienrOLyQ7ouaznAGkGUiubZGJlq+
N+KqcIE5RRu9i/YPENoQcBiMueu7G1qgY5Uc9Nyc2bgoBpEbSvhRAGBmsqBp/zUYnG/V5D9IA4JV
76kvWURe3iBpm+B7wveDcKoZGy20EWFq7R84PQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
c/O4Er9G/73JWxyK+wg0dXiCM487OTwrCC9G3k6o95OAvKCuEdrvrGNzu+5/uVm2f116AKM9X6CF
IoY+tHa3DdYvNPcA093I6RNu7i2ypUL6ZKQ+D2bCSSliRHxwieL7Eus8DDq2cpGg1GpMJ8qQg3JE
IrT3uebjUhgubf9CFZQF1sy9WCoJtHbliIW6M8Af9GVjzZN4EmTEz7daD6EKtMMgorGI/khxEsVA
gHCJS//ySjBD3FaSBXghFIbBys+a5cS5zux7J39MVNi5HW6qwgD6+SSI7CrHfIdwfqeQih4ksx02
zatkcM1hivyZP+sdXla8XWjc6jYwkHslul3sUg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9104)
`pragma protect data_block
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
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
