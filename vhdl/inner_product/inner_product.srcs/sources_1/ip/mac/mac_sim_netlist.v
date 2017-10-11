// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Oct 10 18:25:42 2017
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
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [47:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) output [47:0]PCOUT;

  wire [7:0]A;
  wire [7:0]B;
  wire [47:0]C;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_OUT_HIGH = "47" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
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
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "0" *) (* C_A_WIDTH = "8" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "0" *) (* C_C_WIDTH = "48" *) 
(* C_OUT_HIGH = "47" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
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
  wire [47:0]C;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_OUT_HIGH = "47" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mac_xbip_multadd_v3_0_10_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
bD0bOsg+px7IWTrSkilmMGJ39Mk7aoQQOeLdOFJrChQJopYkysmxm8ltoPc9l9BO+Fys9VFNhcF+
J3tmA5a2sxGUJCA6SsgA7B9Y0t6tcqa07KFl0gzqlBf171L+Fsfgnuv/7qhiZ9yaaVxi/MrIjwpT
yi78/FGUJ2R8Ofw5BonhF4Lr+ppOvR7Kayoqk3Dpm+rM+ARz9yT2jWgCtIYkMLBwWIebqOHPKStS
zeR5YwJGmZEvk1dxe46mlNVjZUKIO/NZ0yO5VZWLe1h7occtghvqFine2qn2/LmGui8toEfrpBxo
uLQxjR3JMq817YG847ObCevFRZDUBPIkwy8LMw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
emSsOHn/3hsVNOfNr1wMzpJOs3+R0faWVk23WXQG5vC0dNukqpWtJmIo3duAjUaIjhGaqsjd7nxY
9tCJUPnfLCEj9uJbU5cKJYYUaBgMiFoL3Xx28HWcK/nMe22NNXu+A00SPdgNbhbkRD9YcMxO/crN
tNaCXhfJc7aqJ9Tl/tm0F4dwM8LdxJUW+m8O8yyfGFrLaJuireXus8T3Gz8g2SBzVqTTBCEm7Xen
YgmByDVh+q35HhxMKeugSUi3Th7W53gijFpyY1NRpexQ2Q2JqhulKTv3WMiJ4LMGdHsweo/yVsNE
A6W2fWX1Dg717EcucijTjyEA8tpZxsS2j6UEvQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9040)
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
