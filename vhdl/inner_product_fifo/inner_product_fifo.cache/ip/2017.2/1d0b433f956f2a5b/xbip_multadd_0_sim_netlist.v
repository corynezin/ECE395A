// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Dec  7 14:16:11 2017
// Host        : nezin-desktop running 64-bit Ubuntu 16.04.3 LTS
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
qTAMNAdJw23Uwhx+ZTx8plEClWMr29ecgUMj+HJ2Vz5b0zyMku75nExaw4uSmXDPlyT45D7HZzOn
+Xq43aqMxcstCq2kY511xbx1sMzh8Rx4TGRS3lnqYhzzbvBeRynbRSO85T+3WAw3O/+NjhDO9Ow1
6epiNeDz428UHQ2XHMi2NVvC3NZhfDxGsw6/sgnnU3VHju7ih0kHOXxtFWSQ+jg8xWIhd6P6qRiI
mk8crwoFuVeyOn+xtbbtdI0HoVWGZcrW9PkhGBebysJh116GaZxeuqrhdLnUJOXaX+XRNvdqNjyg
iavMiO4ttkQhC7VfRUVVGDAQItIPaGfXE8EZUA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
oRn5UCAZG4GYTmlrbWigKiKoNXQtjckrzMfdwGW1Vr9numGtq7DvtM90L7b0SoIolIOX+OStHYrk
Ae39aM2sjjqFhMedygIeMcaoH0KOCC3Wy+MqPOMa229lndweh8YljzRtvd1uy/Ynhg4PeWabmORp
GDE8U15JdseY2LP7KGEpOuYMICFRo8Be5n9pM6kv1Uii1UxgI1qWrEW55JsKaxFPzikmB6vgxh0U
jdhTtvPghJp8XWmXrzc+hqvPf9VgYSjwaqjADKzFFTPSM+VZ52pnQnwoTgyq2VDPL2oJ6Ush3ONN
0Q5ERHqNHwbuTX9hwSLmTB5P+aQ0h2Xlks2fXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9136)
`pragma protect data_block
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
lSYQR5Jk0/WS55LLKPG+Yg==
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
