// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Oct 10 17:20:48 2017
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [31:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [47:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) output [47:0]PCOUT;

  wire [7:0]A;
  wire [7:0]B;
  wire [31:0]C;
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
  (* C_C_WIDTH = "32" *) 
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
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "0" *) (* C_C_WIDTH = "32" *) 
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
  input [31:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [47:0]P;
  output [47:0]PCOUT;

  wire [7:0]A;
  wire [7:0]B;
  wire [31:0]C;
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
  (* C_C_WIDTH = "32" *) 
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
muTCdOKsrhCby6th7rMy/HWCWVGTZcpnMaK5tNneNuX6NtDugFMv6Bn/5QjnwtLCAO2q5GCCkvCr
IHPootdrhUCb5dlmmaPOe6R51bOLJuVm6ti4IdQtbFT5NvIdGqK3wr5A2wDWLGwWLKVZ50NdOaGR
4tmJ3jbTs0gqwbSvHtYNW23r4zwSia3LJrKJOmppkEemcyRGD5TzCd0+nXnxNQqFr0jK5baURoBw
njDgMgMSVJv9IyXU1H2co6En6hqElUxOjHQqUTpietg56SwmsTfAZ6e9wrPTDNwGlKn0JJ3VffVI
c/SFg6/CHWPs/YyUp9v+ewBRr2oEmZ9SCmDKoQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
pWWmPAfKeO0prHwTwEN+47O+R7qWqZiAEyzCBcwgwHDhfkRMPXMU0AhlFG8AO0oqizd+CLhaIw3+
xIikf+9n8xWmfT+KURI/eUQ67/OcwzPcV6quAbh+FlZ3czUpMXrZpyjylq5h/FrHt3+NhstJDJq+
utuezPh4fXiHvmD9Gm8XW2HtPcfD7aQ1XQxB3i/+Cx4YWysnb8gUMvAAWvW+lRRbHPc8nIFcziUW
NB9+ctB/BBniPl2QyWY7e7OhcW0WKNYx2cr7QegppOwZsq4x3agqddKHMSUSLrQPLsdgVfoLeO+S
tRACYV1swpbEbErNrz2p6i7rfQASUjLFKHmgYQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9232)
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
