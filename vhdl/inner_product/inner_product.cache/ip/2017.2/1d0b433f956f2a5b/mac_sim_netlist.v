// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Oct 10 18:25:42 2017
// Host        : bcv-Vostro-430 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mac_sim_netlist.v
// Design      : mac
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mac,xbip_multadd_v3_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_10,Vivado 2017.2" *) 
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
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "0" *) (* C_C_WIDTH = "48" *) 
(* C_OUT_HIGH = "47" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
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
ELt/i0MVzeys0lOaQijemXxOcFiSA3UZ+2VZEgZDaryF1BCRWsXzw5ACs0krQNF8DI9GmFTfBYg7
EqAZWbfqWqEG8PDH2n4kIYrMeCGJvqFXCqp/twyUoB2vnsJ727Z4pN2PF6r0vcEco4DUP+i/3z2G
5zvKEMR9lfXMIinBU0MvMlHGNhH9Om1D3zg4YFjT69fe5uzCKK5Xy72FyKgpLb+RhG1g4HwXYUo7
6RWp3OV0/YsLbz19gbH+U4km0DycAz0+87RvA8lN+x9CEJsLKKl8e8o9F8I3Bd5zGNwaeQxSGovw
+l3FB9a/Fn6Bao/OVoJjF+d+aQ1mmww9qW1VaQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Ayaj4yyNG38XS61+L2ifGaBmZRIENgVsNsDJ4tqDPY2U9+VpU82SOjnIV8J3Auh+7HDo8rIrllDm
b6Ni0Op+vG77hmVtFnMwTww+tMK0+fyF8fxyQWkVgTpiDxT25hSEC+3vXWDxpD1TCoA+kG3EhvYZ
nPnE6WkBS3KjMDjx80gcYf539IJ0konLB/xaNOIoTuKBfzqvF2MzAQQ9KJDGuuqaQUbChS5riP8J
TbyIRdjIfKIRlWA03Se5qmSn0S1u9DoqsPcC9xL813Y9goqPGsy6YGszssS8hcNz+Ixdq/Sc+29M
+P2vtuXAqCZfgZGmZaydB3CTorh4lhi0SOL6yQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9136)
`pragma protect data_block
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
mZiyfm1RQtIpvIWMUHAUEA==
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
