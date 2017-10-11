// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Sep 19 16:46:27 2017
// Host        : bcv-Vostro-430 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/bcv/Documents/ECE395A/vhdl/experiments/arrays/arrays.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_sim_netlist.v
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
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [15:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [15:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) output [47:0]PCOUT;

  wire [7:0]A;
  wire [7:0]B;
  wire [15:0]C;
  wire CE;
  wire CLK;
  wire [15:0]P;
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
  (* C_C_WIDTH = "16" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
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
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "0" *) (* C_A_WIDTH = "8" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "0" *) (* C_C_WIDTH = "16" *) 
(* C_OUT_HIGH = "15" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
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
  input [15:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [15:0]P;
  output [47:0]PCOUT;

  wire [7:0]A;
  wire [7:0]B;
  wire [15:0]C;
  wire CE;
  wire CLK;
  wire [15:0]P;
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
  (* C_C_WIDTH = "16" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_10_viv i_synth
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
XycvDyUZnBK/sCc3ffqkSZcDeXmpoz25DhSGl+f9fay9o/wQoaIZPqza4xmXHKiBbIDixd6KuIWD
VHz9o/0aT/nb3aeeZ3h2IgN0CiXEScGboB3Zl3Zx3MOKKXpbFFlj0DxeeAzM2BpVlQ5rWu0ulBD0
x0l1SA9Chc+kfvjfPje7DFx5hcJYNXPsaT7uA1JTlALHKkx1BzWNLEUeLTrIVNX04T33C30KydO2
e5IcDh2X4pehfBzmJrfUjJ3khV0wMBjxhEhknCbWFcdL5Ok34HGjZKSMzZNPCpguwtHh6l9gsvxV
WND4O1jGwIuj4UsCSaT/XJOYQNHWcK/CGZNf8A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
fXuWoo4zJLAUVHcq9ifeGKox6hrV+dQObDEE+X7SZdrxC4wxJbeuHwMjQa1hZ3mCndqqObDA4Tsm
PRKUkidgML+TxFEh/WYd6Iq1tAL57Zqthv2087XsjVhmUC5YeGdZNGSCdmkIkpBfmuF0IGI0qJv1
/aLnklm4uDndEOcEgxNXxi8VXhJSDUQSY+j58FBw3ss4lIXzsoUfIWduYRBsb7j1gzm8bMjf3scC
yUVWfKdbboksWYZP5Z19EMg0ckAaZUfzeQPR7RJ7jl2b9LdzOClrQb2/SefFslyuDe6mD5GMFvQP
RCqbEiCwX/rUn/LFrqP88amXnorXF7OAad1y+g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10672)
`pragma protect data_block
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
kCh6jCgCkqR/LzBRjQ==
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
