// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Oct 17 20:48:55 2017
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_10 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_10_viv i_synth
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
N7X4NFneqaZkHvAstJMTAmRgpr4cusNiVDTVkRLSo22e1Zpa0Bb2ZjARHR3D1MTTxrXLwH8KRz3a
+LWWY41/LIShHlGeBei8feSf7B9dedzZ/oX203NpTwgGgHfsC385SGd6clmGfjOhDXXuabfgDULE
+DTMxZXMd2QSgcmxkrjPE78sE0hkOKeHuRasGNq7w45FCdtY7TBWzF3osdxlxqGoUZB32gezFyeN
FJd1Wqyu4+gq+UsEjApPE50/OZ2DUY80TYySRN175YSZiFXpb11Ixv0IM08WJJYBfoimXBLgmxGz
agryKCo4ZSgTj8TdfKCsfbDTJelPbSmZGmGRpw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
XmMAv2LQtZZlQReU5R6h+ZBwZWbEX1dVUOWZ7JysxavrRs8QmpwPQz8ShjrvgiQqqZI3f9/A3z8k
Z3Q4yNuIufaE+g8fdwRrUD2NSQCYyVwmBCSSBz4NEjzyCrp64TktZjUNzFIthhohASB7pluldmPE
EE+V3o7eqDdQ7ULSXBBS2o7UZvQwzf8I8+H7n9Xrtrk7hEHESEOvwj7exhokI08nqymFXbvdkzi1
RZyXN16pviL6J+aEGZLlrek2nB5XI+01znDfrm0mdIk9HJloW/k9+eVLOxii/bi1vsk/M9p3i3Z3
O4JMZNa4rSm8njmI5OLMI7ZesARhoPlDA6zOHA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9200)
`pragma protect data_block
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
ooC71I7T9C5i3mO41lcgg10a8lxoWTo=
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
