// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Sep 19 16:46:26 2017
// Host        : bcv-Vostro-430 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xbip_multadd_0_sim_netlist.v
// Design      : xbip_multadd_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_0,xbip_multadd_v3_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_10 U0
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
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_10
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_10_viv i_synth
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
TY+UkCSt4+YtaTh3FxkBQYZzfZUnvuoLtQC0bn3fqKVHv5Fz7n59LV3d1FqRPtUlfSTlXXzzlQmN
f/hVi12Hmgo90FUY4Dnr2ghj70QWF3RI0vLRtYdIZbX9Z+l7e2FI7QKVPusoUTMkhactTHSes9UI
H5n675UX+xW5BdE9dpxIjVznlfUy4JsRuQMApkBYL2SHbYSHoV6HmRPUfGevz2UmE2laxVyGTHj9
HAesKnw64oioRufCGHbnOj8vAGM5Il3BiUSmZE61UEeOQUaFH1WLAGCCgDBcD0tEA4mbq2eKXkib
ZOiwMltA8Cm59rILOAix+BIYhEWdbFya7PMTMg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
R7rK0FpfESLOxT9Wzj5h08BQTM/ld3wPIJtqbZXonOdQPlpsb+Gk1hruscwrwFUA9UUeBCsa69U7
NZwz5xMV+s55ofCQnH/JrAr3aIyZOuIMy2jkYAa4ri7OPuzYTLInc8w4tnIpgDihxzoUjFQ8q/5t
DXVyY1mpR9Ht0OY6ukA9Pi2pDQ/pNJ+b1IVbdcQHn30O1Pb4e7mMIo7rmG0dAuzbACiqKVezBD3G
QEJMEDHNQn0lVE3NSWvBqAHbB8NCiLzBOEZkUb4StqxAYufsZtu2XpQvpBpOazd5FHPajB+7rWvw
2BxK2I/glwPvCCkto7Z0mNmliwjpg4DJ7RRiSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10672)
`pragma protect data_block
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
qlrvo+hoP3wNnkiMvA==
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
