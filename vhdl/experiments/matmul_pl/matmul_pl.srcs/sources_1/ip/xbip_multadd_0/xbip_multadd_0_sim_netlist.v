// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Sep 19 17:33:15 2017
// Host        : bcv-Vostro-430 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/bcv/Documents/ECE395A/vhdl/experiments/matmul_pl/matmul_pl.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_sim_netlist.v
// Design      : xbip_multadd_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_0,xbip_multadd_v3_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module xbip_multadd_0
   (A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [105:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [105:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) output [47:0]PCOUT;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire [105:0]C;
  wire [105:0]P;
  wire SUBTRACT;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  assign PCOUT[47] = \<const0> ;
  assign PCOUT[46] = \<const0> ;
  assign PCOUT[45] = \<const0> ;
  assign PCOUT[44] = \<const0> ;
  assign PCOUT[43] = \<const0> ;
  assign PCOUT[42] = \<const0> ;
  assign PCOUT[41] = \<const0> ;
  assign PCOUT[40] = \<const0> ;
  assign PCOUT[39] = \<const0> ;
  assign PCOUT[38] = \<const0> ;
  assign PCOUT[37] = \<const0> ;
  assign PCOUT[36] = \<const0> ;
  assign PCOUT[35] = \<const0> ;
  assign PCOUT[34] = \<const0> ;
  assign PCOUT[33] = \<const0> ;
  assign PCOUT[32] = \<const0> ;
  assign PCOUT[31] = \<const0> ;
  assign PCOUT[30] = \<const0> ;
  assign PCOUT[29] = \<const0> ;
  assign PCOUT[28] = \<const0> ;
  assign PCOUT[27] = \<const0> ;
  assign PCOUT[26] = \<const0> ;
  assign PCOUT[25] = \<const0> ;
  assign PCOUT[24] = \<const0> ;
  assign PCOUT[23] = \<const0> ;
  assign PCOUT[22] = \<const0> ;
  assign PCOUT[21] = \<const0> ;
  assign PCOUT[20] = \<const0> ;
  assign PCOUT[19] = \<const0> ;
  assign PCOUT[18] = \<const0> ;
  assign PCOUT[17] = \<const0> ;
  assign PCOUT[16] = \<const0> ;
  assign PCOUT[15] = \<const0> ;
  assign PCOUT[14] = \<const0> ;
  assign PCOUT[13] = \<const0> ;
  assign PCOUT[12] = \<const0> ;
  assign PCOUT[11] = \<const0> ;
  assign PCOUT[10] = \<const0> ;
  assign PCOUT[9] = \<const0> ;
  assign PCOUT[8] = \<const0> ;
  assign PCOUT[7] = \<const0> ;
  assign PCOUT[6] = \<const0> ;
  assign PCOUT[5] = \<const0> ;
  assign PCOUT[4] = \<const0> ;
  assign PCOUT[3] = \<const0> ;
  assign PCOUT[2] = \<const0> ;
  assign PCOUT[1] = \<const0> ;
  assign PCOUT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AB_LATENCY = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "0" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "106" *) 
  (* C_OUT_HIGH = "105" *) 
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
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "0" *) (* C_A_TYPE = "0" *) (* C_A_WIDTH = "8" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "0" *) (* C_C_TYPE = "0" *) (* C_C_WIDTH = "106" *) 
(* C_OUT_HIGH = "105" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
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
  input [105:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [105:0]P;
  output [47:0]PCOUT;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire [105:0]C;
  wire [105:0]P;
  wire SUBTRACT;
  wire [47:0]NLW_i_synth_PCOUT_UNCONNECTED;

  assign PCOUT[47] = \<const0> ;
  assign PCOUT[46] = \<const0> ;
  assign PCOUT[45] = \<const0> ;
  assign PCOUT[44] = \<const0> ;
  assign PCOUT[43] = \<const0> ;
  assign PCOUT[42] = \<const0> ;
  assign PCOUT[41] = \<const0> ;
  assign PCOUT[40] = \<const0> ;
  assign PCOUT[39] = \<const0> ;
  assign PCOUT[38] = \<const0> ;
  assign PCOUT[37] = \<const0> ;
  assign PCOUT[36] = \<const0> ;
  assign PCOUT[35] = \<const0> ;
  assign PCOUT[34] = \<const0> ;
  assign PCOUT[33] = \<const0> ;
  assign PCOUT[32] = \<const0> ;
  assign PCOUT[31] = \<const0> ;
  assign PCOUT[30] = \<const0> ;
  assign PCOUT[29] = \<const0> ;
  assign PCOUT[28] = \<const0> ;
  assign PCOUT[27] = \<const0> ;
  assign PCOUT[26] = \<const0> ;
  assign PCOUT[25] = \<const0> ;
  assign PCOUT[24] = \<const0> ;
  assign PCOUT[23] = \<const0> ;
  assign PCOUT[22] = \<const0> ;
  assign PCOUT[21] = \<const0> ;
  assign PCOUT[20] = \<const0> ;
  assign PCOUT[19] = \<const0> ;
  assign PCOUT[18] = \<const0> ;
  assign PCOUT[17] = \<const0> ;
  assign PCOUT[16] = \<const0> ;
  assign PCOUT[15] = \<const0> ;
  assign PCOUT[14] = \<const0> ;
  assign PCOUT[13] = \<const0> ;
  assign PCOUT[12] = \<const0> ;
  assign PCOUT[11] = \<const0> ;
  assign PCOUT[10] = \<const0> ;
  assign PCOUT[9] = \<const0> ;
  assign PCOUT[8] = \<const0> ;
  assign PCOUT[7] = \<const0> ;
  assign PCOUT[6] = \<const0> ;
  assign PCOUT[5] = \<const0> ;
  assign PCOUT[4] = \<const0> ;
  assign PCOUT[3] = \<const0> ;
  assign PCOUT[2] = \<const0> ;
  assign PCOUT[1] = \<const0> ;
  assign PCOUT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AB_LATENCY = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "0" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "106" *) 
  (* C_OUT_HIGH = "105" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_10_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_i_synth_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
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
UDfkcWyRTZ4p2vDkP1idTt40NaxoQ1/zwjsKY87+NXEy7gRRtFb8Frv2/l37nMUc4zY4SpdpE3y1
2NBvlBtIUeDJsU9fl2vxzmBVcEDCKwrK8FV+69vfgRjGdQKhv5mLgkLQmep685vWApIKGiHvMpqu
4rLsMyIi+fQOxHu5avlkMWnXPE3wq//xb9lXkcSAithS9Cfv90NxAqLWvXFSbD6mEYW+jbUulmUN
cwe6/vRUr5loRGaDpfqGSrMj5xUDfE/Zg1nffQ6jGt9knNJjq8bcq3sNy/QB8KYhhqg+GAYqLbPJ
9wp2E2EyldrSnL3YbBHQ3hoLXpXKHV68y/FD/g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
ELFaO4S4BiE7svXRjE6TOAIWEpVJGmCd/ipi2kFAVFAe+eXsgK0dUfkonK01u3NVwOQ5uu/U3YBJ
vluvIb8gLcoN9hRpXDjkUeZK8nQOgB4mO3bZnYfzHQatSBS7hwOBZSME2HjS+y8xkN0tTA6KGXuk
V8mgeqiYCTHX/SeIdsoRvZTWaMPXObktHm+pOPF0GOPnVr5iniXHqr2rqu54DkL/QU/aWh+DUfX4
dfoF/fVYauo2bBzKXMYW19JuPv8dEGBh5nIo8zfmkfPQaXj3yZOP8tBFZmP+Mh+YZFbK37hBUr3g
C1MbkdPTEJ3RewBjf3jtvdvtdkb8TdFzakcSEQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41392)
`pragma protect data_block
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
7G2PfCvNlc2BLw==
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
