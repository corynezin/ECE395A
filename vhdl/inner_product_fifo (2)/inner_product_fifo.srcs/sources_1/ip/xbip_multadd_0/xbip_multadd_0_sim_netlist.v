// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Dec  7 14:16:12 2017
// Host        : nezin-desktop running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/nezin/Documents/ECE395A/vhdl/inner_product_fifo/inner_product_fifo.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_sim_netlist.v
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
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "0" *) (* C_C_WIDTH = "48" *) 
(* C_OUT_HIGH = "47" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
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
cM6HKu7DRQcR1KDSdsBmYtEQb5shlllRxYNeUv4fNUAFvSkWfWLGs70WBkQ/lszF1nyXJKuQXmvJ
CVQI/5IEq8P3bKzOOIaBczQ+durzxgIR73rM9HdJOwjqVm/JFWui+4RtIshSE5V+B70wJ0cDFeMX
Yuyh51TRtMhF30SMM4UZcgprg1DtoYVOHuedohPLeb0b+G0r6GOmyb7Imob+XghJ0DTqIO5eM37p
5Sk1KG0Da4jl3zGCZsn5HRKynw4N83NINitULkWwUAoxt6+dz1Kdae9L7Q02mXgAgcivbaMtQJeQ
KQnuuFktEOZzhuY9R1jG3Z7dc4Y60Qd7s15DYw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
zZQEFfNv3Is5/aB3EJl2T7hsFLDkqTRgzQkRkZKztGuK7kMHanhSqFxDJXILZhIBF/d2550cz7/R
rLUNM2kehRLHFWlRL8RgU1y0HCnQPr5Ah4VzcoAL8GutFqjd7jHE+nEYZv3LNUf0+2EWGHWDTB8o
i77I+guo1PBwsGhsHpx8TvRugpyJeNpE8ptBRpDNGCHFZabHx+p34moBFlmCkRxq4fWDkqvJAq1o
cUSGPnGQxCLGCEhnisi3/tBhheSH18g/y0x/l9NMyPyXLmMlLsrrHNPL6wMtqcvFrNjY3746MNFd
+zIAL+iAqgftZ6QEqSoEElT8vHHuz68D/54OMg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9136)
`pragma protect data_block
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
JLBKas2bjkeBPfqJntqR1w==
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
