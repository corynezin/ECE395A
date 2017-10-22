// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Oct 18 19:09:46 2017
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
OZTmJAMKbBAcZd98bNNybUVCmERF2zVFKIy6fWwt6OVKaAtFypJGW6PdyVh9oo6k+LajDmH+P687
DpBU1eRsdFvKcaH0kL3uHN+6x9a4BsGaxlGCC+bElyip+EFivjw5LhzjuA67RuYtEpjdzRUs0wbG
AXBmh5nUJq6Q0jtNAnMJtIMgMi4RCqMPyZGzB1nmF+G4pABX/C2h1brSXPO33kddRLk3rEGJ37ox
w7WM8/efCde5U2oGj2dmmKL5eILVT/XCENcXBN1Lm8hUZG3ZnVjMNVl6ILWOLAAj0/buZKrIp306
98mrE0aI388lgM1l20RWD7T2xfW2O4XXKElXrA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Zhs+3mWGfJRzTgWkwdtMwPrxS1lx1EgDa0wTiqQue/ZFAQwH9uEEBpGPD9djNo8GCfTpvKav0bpv
0y4tmzqlWrkUe9IGafcwih1IqNOHc2NkfOsejFsc+Yvse/2ARf1fwmTUrpB2BCMoGQ4+CUwvRUu/
fZBEDtHH+BeU+IxxpGYNuOkRAA1oClgm+Lpk36ogXnAFX3ZbEY9SWPSzU7hmbrAIvHcxHoULEB2E
OXM8K2Xk08yH419gtHGJ2baZs+SMqMgGaU4X9R6qZNIUPJwAtGguZ6BINBnOKmUsn2LDMPzjJW+P
KArFdNg9qxYElUR0Mu1P6f+cLYRZ8yqxIk0Uiw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9200)
`pragma protect data_block
V6pAaX6j8dTkGe0Mnr8mc/w6HUG0j31xBOYJ1nhDAOqGr+f5X0bNTzTu0/KJpYwiZIxeq8xiJAU8
3RCsy6uQf2WlQ07r0tiZQkDSu/ifGRZawydnpFlhtZsrdIhxTSctaCS3jEJXsbmTt63f061x0anT
QqbxXotCpn1DNtThDFtNMwULHXyQW3cskddQipoJfOcM+hO8dqerIbrFEcdzCtUn6JzE7OnjptYI
OdzITUFPTaKNSNED/RkAK6WoXuH0fmws5kK9xGOmeCSRLRGbUsuElxzDKJDq+VUPUP6+TrsQqN4j
d1jMNKaCa2tKQ7mYu70XAv1jupXBta2PmSXBD/XVcLDxPJjiInGC0rDf8317LaISfEfrsiKUkCeS
r8uD8emoBqbiLfX3oIkjegMc2X7TiX4cpJB3VDU3HpLGztMV4SFmxwTrEcFmCAfiANQKw+9SdcC+
5/0KV7Gv5XcJgVBe01xZKs7iQ5HSnedmlb6gkLW8SEoKe+mTOvvom9HA8l8daazuAung8asyM2YK
RTT1lCOPeAxcJh/iJiZm8bbWefhy2GVeLwTUVsfpY+VqE8i15Cs+o2ysAeDsQ6BLnCziuYeQLsxW
hln9ymHQD4mfO7YLbZHUCd0hoaziAUzNkFCzznL/29pnA0YoLOOwIjGO9KFcdO8ylN3Jf6JZ6HaI
QHeg61Esdk4+umsYe+yEenYABC8aHpv7E+2zM3VsZXta/haIwA2ktcr/qBywCqAw2PU4K6YyxzJ1
TICCeTOV/ZDDF2US27UnHgy90WwGXNMmpbRBhBlhwXI9uJcOS4GghO0hoEX65YrleISgGQ6iEj6z
ZiEW13ZJVs3qTLoE9cv7LNLqKFgADaJd3XwXdsf6YigqDS7eweTBMUEZSOeAgUygSqnLI93xtZAI
DqyhHynJwj9gLa6gmNqHdfvnnJZsqHEqTn4OFQflRCLvGwIL8hMnBq1WA3JMcwjPuBWe+ZN4hQiG
i3yRzlHR6qnLKSgwrxXLxCQkgrNRM7duZcJ4abqEpKZi9hIQzcf7n4JI/5qKifY7gz484ev44+j8
0vaxEJXO1p5Wa6wBYFkq7OANyX0ZAOotxjuxjJ6f2YDBM/Qf8prYHvV/PmhTuikJ/rbO9RDVjQ8/
J0/GIqExpfpTf8xcPD+eCtnTIfNwBVhx0nAqgEz5B8Ke0GlTTO8eSrEFmUrSaNa/XFtyDcQeve0x
hsvOHi1r963PswrCaqLZ4A0KSkiSaq6Q3rHHD3SWpvA7qLXLnxTsVNJskuj8/DKyYHgII95O7c4r
U4bNbQhHMLOC5Hep+hATK1pOuBxP8KDLiShWQDvE+kAzCSwf1QYaF43zaa+X3ZlM9UlDpL3Jo8Xf
HYT+0MX4mBvzDzm3BDtdsyU9MUhK776W/pSmA9dBO1wtvoQAi+xe96VcTZAfsWL1ezSqm1A5S6N1
OeXRJIWDr93L/mw/6Zou7UdofwUMQKDkk9pTC9qte5Tq4N0CR2oh0Wr0ueBtSjb5PmlFRtqyPPPO
cS6I91a2/5XnzgGJ9VwhBzjn+0t68EzuWioJ4GcUBvrx/uoPdw+mphKRRdaQvErjucKYz6caAgQD
s2oLe2Tp5McVVJNqBgpdeR/ZelYqpLmBpjZuXzi70Z5BWNEHUU4Uy8fr7/w0wUi4qESj/FfBZkrx
VUb0UGNQVm2CyWNYxDVDeqKBbflsFc/6t4+mzZHX5kW/j6vV97okEsOgVoNNx80ZYZtQDsQ9gZRs
+cgUywacfvS0ntDeNRLp9YnixifHiyfLVwNhVFk/nnXcvUUUJ2DcvKEL3QumlX2r1uR4jxHsNUJ9
eBS2O3Z2x+aalqup032Njdr8+RUSxLe7otjHCd8Z1MPhrFSExxgT8s3M7Ew1dGqexczo4mliazgF
cKG2mN5Dwmw5jXtLQddv1DubK3yeTwLnzFhMl36sSHh65JKN3p7nvnX7hbtWr4vdI9vUF82kQKhz
IPGLq7ku05mj1MlfApwcxUVw5AQQnu2EZOX5P+7Z/Km5D3Vv4aSnDJUNyFWgWLiMiPzNCsuCrF9k
xoG0kRChV7cfzy7RteTQX7s3wfKwRgBgHdjYEHHNHwjUHIupryMD62DK01efNhtdVjvf/aTLYXOp
/+t2ui5xliX1z4dBqv7PNlooRjVI8wS8wFeKvJUOSxe31HaqnlwgCEfRIrqwq5NfTDYp+DQhOqqB
bB4y7tpkkTwyqdA/RZgdFQUxXnmPgjnh2AKlyLFM59aL83OEtydsNakokIagq4N3VsE5HTNAe/Q7
52kZmaZgtokmu+51D57GRIfxX3jOMTPwyYS2MHtLxbZgRu+6kUGh1Rrlg/wMFwnY3JN4qWJHqT/n
m6kC2/WehAg0sbvKE3eAexwpIzPPpCpnOO2HYMTNST2+PWK+Ml6v7WkpLfyYOJssMIDm3tPVcbAZ
doIGuaLqPTnGyDDD+9JJf7lN8NaRB5dK3FbH9qtlFFx8UuYj4AHVcbKFzzgUISJytQQueV5Otjey
zbV+a/4CCP65e2ecL/iFbUtZalKkA/VPHc2bY8/PqL/N3G+xrF8JBtx0e47qy4OPB7fViB5BMeZ1
tVVpE4Xy3zxbEPJQ2FJZ81CRCjFvdT1UJ2CA41nY8wh1qB8w8McUF82T0z2L2ZobVLgV6g1D1HQp
c5eNRXjns4t+HbtCKjsgvztYobmCLeq/o2L5iWq2RvM3G01C7QPzqs6SGfORpmPpoJQgd0O6ef7A
h6ca/YceSmeuHm6asvYZ4tt5BbLFMkPi+/D/9JuYX0PyWuiQq3BuYpf9JbBZ/xhUFMlqG50luBQj
x5GGCc2kPQRbSL8pUGQT+16clDZRiSfc9950arBcmZmiLtcoWhjw+JjOUu1zq5cCN2StQ56AWFTa
CYIH3GCMppBHrceM/t9/shIFaIO22tM17afvVlsrqArar0PNbK5U5AE8bUm4MZOZJvadAP6/2Idh
gD3KxBnzEtl+z45AC4IedB/SGja/dI9h7ip/H5dnupcpPpG8NU2TCRVtCTEE2sC4RqQ9YoOtdKlQ
gkaXpdeDd/qlYE0Y71aPzeo1ZKwjgDxzRjlpqxX4idSdP1NdLMzWBN6ayOhh1sDr2sMn4L5lrVKx
0hQ4Y+gA+HZm1qEIfcFcQ8Jg9heiSiallQPsCbaV4GLEmFGNcefQjOzIr8ZX/TPZ1fZRg4WAJc0q
UB+ku2fuAgRj0TXo4yWKp7yMgH4Jdem+Hx8YisvQ5IrFJoD+og3pv1K4Dg1He88Fkn7vTT75V24d
xqeDTD54UTHj7NR3U9Kugwvh7/+KWVYcmns6Sn2Do7O2zf65GmSNdHK70LgSNpJ7YZJSd0+OmWnb
Z8HbhqW64KKdoBO2/IlpsTlxC6PFrL554lTYPaSxJ56p0mIb1p3Nkaz3UFsA9HWD5qFIUuSm4wF9
EqaYWL3xMs8WqaA8x4uw5SJ3Rx2V28GCEgGyjL6Om2RxsmwLRVGtXRTwQ8xdl3R34Sqld/UVTJfR
u470ImMB1aLJAn87K12pggmZVE1y/EdqP6Fs0m9K6lmVXm4KCecx4hDeZz37pnq0J73YQMXQTwHN
AeAJtSczvr1k56FTxgeDFFeoA8TI8rurnat3C3iITOOe0Tfkz4269IBj9goQb6NAYOFX/bBu6uwh
UnvB+QJJ22EbrKCIe7+7P4zzOSiVowyJDX3O/+XYtEfErn1uL6/Zh5xDmy7iAxsM6WSIzkoP/Qg1
iBxqTGgjFa5HtD0t5c9iF16N/ZZbKipSYJUfG/aWY/pdMuNXgf/fiPSSXbnNTCnC9y0zTF6DRtym
4RrVq0KBRYhfZ3aOgD9L+cCXFY9kquJyE/BFrD+pQf7jskPAxbFtEZgqV4zqPqHfrXQUIOJ8pjXw
moEpRIS7PSme4zEIBy2uXiOCxItRCxQgWnE52WGirPcUwtE3+ZMAj7J2IHIBUKniCmF6w5t8Ymfl
VJBUcSWRzTg53RtRNy0QvsPBZHrqbipTeVquydLbjQz1G3IHMGPB8/LYwI1qBHWU2aKZlt3cNP4h
lTNUPe1tBCjIS56IhJ8GbnJPn2aGQGkZQinli4BJ7LBRUFbUWkS7UvoI0mZxQI8OKawhnOZfRovq
ZapUzmw9IbLiYuQGe0IcBWZdAdx5JGqeupJlsDi2Ty+znUMctUFX3eycRxM4QSsve7bccch5Vp7b
KMNKyGRTXWn+Pmzb2iJNaKBqezn87jQzNSGIcfdpyx3hcEa+SmqIBR9Tyy9iTp4vD1UDMbkT2bHA
eieHK1G2vVLBLKg5MO0MXIDDY2UZ6xRw9wk8KmazixcR9tnGPbFm6GjdpOSqOjCk/BlZVsMek4C2
MTK+aUgEb7JzYblGmxma2yDgunrPoex0OLPscBEYcXrZEF5cswGGwAg4TqrgCJcIgSWK1NEpubqr
0KqqjieXq8x6jhWrxU1j5EQlRE8Ko3swpRqHdY4DZhKU1vF6iHMOxICU7G9NGVKO8wLtlHHBD1+z
55dZFBp92LYrn6//pjmJFumpdIxP1qvSUgW4tEeZs7OGTwHSUrdU8SKHSevgloBYmDqFWfQlmfDA
IOeL8kxUvgmZsx7OzNubKpHYrvTJC3jVF7vPhf/nGOKqSGWZuEFoUeVKvG3z2Z6emgWubk4IQyoE
4h2vtiT1xCzleEyX1o4dIhOUYTn8j4yA9SRB6AmdBCCiNr8LfN3by1bzOwCAKs+KTPiZX8jgZtps
bg/Nx03d5IYByf6kDwREV5xpAivu+mjqk9GvwoiW09uGXStA64c+C34r5GFL4STdehbF2IFvlNua
l4vlSmmL+p002pYPZlM9vmtbUk1clZGQQ6V/WxMe1lAVSUf9m8nJWElVzE3rrJbj5VAGvN0aVToJ
0hb52omdn+EXt6anamJk4cYRzW6UHFK73BWgd0nJ/JvaPneEUE9tLhNdLKWjD8UL5DSZkzN6eTSg
OAf3J/bTpHiw73UmfXblNggbPih+GOxu638zFkqyCSW+nE5QL0a+s11yPiZMJNCqN/LXnj2KKbI4
kH/tRuvsiRMvJF0ulgWMRrZ0fkL1BXHMd/FMRrxvq49hX/Pagvtqxop36BDB9FjL5FpBt5znIV+P
APReTYzOd8Wx5DgfRd34m48bWbPsj9oejaRnIr7RJDEaSO+ZWgjYqRpaaa0vpaQa4IgMapoXmWco
OMwo9cgkpZTGwe+qLbJ37rGc2s1pKGBeqwkeXVHMfVC5DO2/BCAMZqSqhL6EzDm/EKqA+CGEsNm0
vwsVpkpRtVDGa4CCVlxrtEMchI4U+eVfSGEQloML4gZ9YBuY99TYCheFEka7pqwskxGqE+P9gCh9
+cUNkrrnnF5YWkD3rMNALN8H00Yg0UQeRWZtwJQ96lrM4EeAHJVvJCz1GmzET4uPO3k2qMlCjv44
Yd5K3AboaFPjGRhwmFz/QKWrqnG+WmWXWhPsjVTQvl2VQniGyIUsl+cVnt4duzfotJfkHbLu/Pul
w3awODW5lhXYiRGxbkZgBAPhymy+qJMzpOjkXUQxSGuUWsTzUk+QMmT0OAA2vpJhOQRLpoHAskEb
jMf7UViASii+YYK/YbAmvMYOkCc4g4uxnV1V8mkqbYtF51zrqFpZk9AthX0V5AaC5ZEYF1ZB/SUm
+UPWKygAtSIawatRwSGeeoAfv0Qg2fuapoJKQ+lAbdLRcX23U87xuUPZKJjQ3gYBNsDN9Q0s1cUB
G/H/j6wlRc1cZJWHFodBG8J5nZnHAhUYFlAhShgMVc1m6a4X6xX8Eh0Qa7M6E3/sbSTeJ76ghARd
sd59Z+GGNyn8tEkrEPsJntw6MpxkJGrYY2By0wAqFPJSulK//CSEmIy2+qRj71T8trwP3kmUYD5v
ED9FyQkkarAZAetjanwj8jsy/Fsx9E09qY65+4vJTPgUjun39rRSyXCOoKw+lUJ5XShMTsjodxjq
P6IrziolKirBVb27d7TLteL5INM9lx9scB4k/u96G4JiQJMYJnFyAI3mi+4GE9MRv4B6cDlOMeHk
ZNrYDdDnviBFr9OTHupt6WufclNrMjEZ+4oMLAzq1A2qU2JvZGGJiwCs1ICyWy5lOa6WOWvmuLQ2
dwPoXh1QMPj4GqvTV2Qc3yO+hvz+86GJDw8ComE40c66h1iCTUjjV2eohvKAML5fcVCtBUYim3iu
/4WqNpmQtBlbjL/gGYI3hHzYSkwaxamlfDPBPAXNEOtUVjluP2yV+N85OhZwgtIci1ZVMoSh5G1x
7uoWMgQ8aw7gzuTblkhXIU5g2YPJdMV6VtjuMP+O/9hZbeFxyr0+W+hcykgtb7Z5z0YMArsyIW3I
GauyYc55GoT+pcN0BMo8YZDnUGs5jUssCHXBv/8ZdBWuyEsgcm4Fnih1rJixBUQFGHzYpMmltR9u
BcR5OYVH1UzMikbagHnt1YCfIU29K8N83s/23FkH0pCtaBc4452+g/Uo27e0VbBVVMmJ+H1yw1sS
C3TitDQJOekk7k3Wpfev+cOwPj8qSjSAOX21xjynpvEH5oHjzzfG/j8zox3FXk0Qrof9l4Wtk22W
tctGq7uboAf6V6khA9/ppHf22GbaUklkmMJHJnpeVA017pdBh1ChqjXrZ2CUK7F27LNP3x61bfGc
0m0Ftj7i1SAWWeDXhV+nJUZsL9ZxqOQUHJCgFFWztmN5ELhm0HPVA31rmVpMFUsnG2GTrC7bmSa3
CRYsswX6TTYQvLpaGeawxtta5l9AoqsVyBCEnSPVBKCf6qAOnv1v2fjLHCigC7xrnvKM/KZKDJju
RKAP1fsZy8jd2p/Swrmg0YA8m2Ze9g3DXo05mmReIfom1OAZncAapc6kX5HZ8JV7q92jTbHfPI1Z
TFuqagXEfHr16I7SW/lYAtcbewRXt9kuUAgTo+7ewkXRVAj10iYU+IdR0S8FUxdzal1HjgLGhYAW
06u+VMV8VeJ6nW1FFUJ/s2+u8cPTMmlYp+3CuPdxskkgpl0R5h+yFR1KJDXXxCID3iHBEfAJRJIW
yEU+PlgTgXLOwZL0dTAuDU6wWcJH1adPGwpSY9cibITvwYOoqhZjyFe3UJqqLQ3Qw8tAN4npcQt7
B5arFmY9Xg0mrZusTWAKkolADf92QKDiO8kguFKITQH4i35slECWGVHtEmOjnV8727Y5yiDycQR0
LtB86xoSDHxsYL+MhUgtIa05I5heyiBTdjUT0RaRTa1KWHarSNFqgPSkV9UrbBa6f+ja7lA7nkoS
+VH1NxxLnLBJcR/BsQjpbB29Z6kribnWJUUkTD+dL8BlUXac0SgFZgTdyVkwWNQk6KmrHTh88/hB
Nd9OIIlgBK3rqBC4X8LhWfYy+FrFZ/suc9LgicWPiJBBZnSd7KyVl2rRgVCkj/s3b13DC6oe0t28
MMNqGI6+IoGNyLrHYFM40NiO35e246TayJC3Hy4qp5x24j+vwBcpXjT3x3dhHQeNWT0wGrV6ZKpQ
zlGgyuiTTtxqIjf4Icm94SMUr+0115hEukM7/2uMuix0T1H8oInZYcPJKp0dMPYYsrdQaG3zGlux
/gcYBWMoXTojSBe8pYHhFJqaS19GzIzeocTUMWl7HD8W258bM4S6CbV+BPrq8Sf3g2A9p7ahUaDD
UX3OyMODDWP5zhJN588oZR1TqO6Vc290Rk14CGb/2gO1+EbjhwzRzb4WTpBFEWRtG721MbSKpRAV
+SFIflrNNErHN6YysrsVa6LS/o3gQvbW11addRupsfbdIIGsbOHnuQs7QAPshZ8MxBoCzBKJGX8t
Ewx57wNkqDa0C1N++Cqi8PVSwx92TuezRxhg7RRFLdFZ6Sm1TGu69Xb+w7/TRO3YAk/dfAXiUzJg
AlLh9531rkx//IgokU1wfhObnqUAM4tyNWDRruP7otIiK4g5uTLE5BflDmLpVmRJo4Q4ttNsJctk
v8JrZQghb1RsIlhHP3e8vSCsGs6W/CtiYmuxcijuGE85yrgeMJyDh2kEXVQGM8yvfI/hQrAgIIxI
dg8gPI/RQLy1NK7hKA8w5BVEjcB2YXni46aBNOWxfCJCpEngFeMPHaJXiqdZXEveroQhYT5T8iUo
GiFzvCCrSWivxOh/oEK0FZAGMZ+++Un8NlYllhFkYKgWiL967sJQSu487/UjGUheTWQpD7941stn
86Vbgu8Iv/boTVN8fNWlA/NGAEpyQE47ep6AuFvL3Mxg9EPdOL6G82nPsTvDF/Dr1YkGkDFDmHZb
s7uqhEYoa7wsLho6RcEp49aoEgPnglaqIL+0ukC16IO18mUKP3jzRtL2B9XbXOwFZoDdXWy+WdbN
vs1ENlzc9PW7Mk3K+uNMoPa2plWLps6Tu/UHI7w0mE+iUMCR5lt+zRdPeGbiGRyKjf1KVsrTLDqz
LSiTpZ/L79c2WBzVU+4lFbUs8OQcqt6IVV53EqN677g0mDW3ZH/d9Oq9B8wSmSBiiyeJ8IqKoqcr
iWk8UP/0cr8rBOjPlsz84ME55XVl0u697XEmyJAlkFB1XGTp+fd+H/8kXR3LggBx3/5FQgtQC7NN
RhgYw13e8RbFW9FBXZ80A+E/1PDd2jn5bvJo99sMrR4o3/l6rh4/2JfFLm2VYX9qZ/NbSWYFc7Yy
YsNj/HTaejsXfeOGqWZ7s9W7xmAICvldJWeduIBR264bBC8O8rUCqEiq1g0QUavmzZqdspoIKXU2
loKjByAMmHWhuOlB1rjJyy9W02yElTuxHetNhB45qRnufAuvfFeeI9TRGXp/lKJJ1MGwe3JUViLi
vJlPu+fRC6mfnprtnMof3w6FoRL9n++emeIT74foQeH5xAZG7XYpAeNCVRbUUEv2Au1Uob51ZQmc
Wy/BbiW1y5UT3+XzfV1EMu0Tj4HwHllaKO3IS/dd0I6Mh3NGk2HKTtxv2BvEDwGO8vxUFeFToYPN
AWB8z4qdjdbR4f2hM+4JL1KeVVjNqxomXxT5QMsCEsMkk/vZeZSNxnkDJmz74Zvg81hn1Mkf4da5
pD7dtABIyysmjrleoCa8sP65hjMPmsjqjECuhF2awhlXQfNEE20zuy1OGm628vqAQU9eBpHrfDx+
vtqW15t81FbW+I8ReQoJv7+WEfTkmAAb/AafQZlzs0MLrrlkTbdSJY3f0frssc3vc+ttiYu/uYzp
64Md/nT0NkGm+tphRo7QC5Eo9w3NTeM5/HS9VYqIt/Ng0d3iYsRiFeQ6sJQfEwyy4aMBn0gp3BK/
YRsA9ULRccA80C/3w2h/X78bZyQv58sWV8vedukL3KDyX8oxalRJIH35ImxnLmBNGDHZ37k7+2p5
1oMiCqefLgD81UsyB4WEl4K9VEb1+33lBbP0AMVnAJY5JUGGPHj4GHTdJZX/J5uqwot3SDEjspck
P/lFWPNPBI8gRExv0060UqxrmZhHceZIoluIZQ5BWvll6HyTiPFkoXUBY2kndRmwyc1RVs7vJBdf
xRS0yYZhWWNpEL1JIqN+Gi/tFq5FKVVOclPoU2ooJxaRFljYEytXvfzn9BY7pWrNLXgV1DdAzJBp
qFC5afxIJYIcfQRrUz3+AKU0cjUr4F6I7CnNQZLWrYylr8B+53XpLd7aJz0Hww/x5LMDlBLWsbdw
XgKOgEMPiNUVmhl4ymX/kqxtS0FeRzCFDXyNaDEa9Zu3f7CcGN3EkeKuxg2WyvVxHMxdFZlryMul
dgNw3c48Twsa/ZnoNS3PTtm3u/S+DySwOwuwNPpsmxkLDQg8lsfcI52bBNRsDhBvCYSqrXorpbXV
mFNkxdL7mskemloeXn4nn2CZVNHl3Flk7xUqz8tNTgr8HcZM+R6JdUVhcUNQeoYWGt6en+t7RieA
2vn8oWiKJfWwb6ZnyErYikHkdzHK/hS74wrA6RKkNXXYNR1Mf2ZTCB1SYFAc9IrS06/9c9NpM7nj
G3TcVpdcGpq9JkDFFFqV6PAMqgpirZj7t/gKL+HG1viLkH3rchsRr+aELY09aiMXLcxjz1w0A2UY
xnBLHa8TX4V0Zhyw5vW3+yi18HjkooVf1ZBfq1JPE63guKc6rvW/0fEqc0ScRcYbwW2jUlfrUg//
+kWH53qmsgr6UmJGqq5K41+02XULSHizjRtSTvArEeq8bTKIejrTipsZqAZDQfaFaRRh0XZPyvHD
ZI/Er6+7ovLOGKIMDABzuyapL8dJuXhmVTtNZGlPRx5EDtoU5ocQ6JHR2h5zG0eZlkioDy2fDFGV
rldkIHd1/SiOR7R3PX1s1e4NILQZtkz2UC0pupqNtxKDiGOTZncer3Fw+IGjUrYEYenFFe6mTgnl
1utyxr8GMUlGNfhNB8QCVSjvKyxR0KuCwrwQT4VEdztdmL0Hxf7lonj+LlwatCkTKsUr/zw9qong
nXdWHRavupREFxRPLJdoLktxwvIaflGZ0IpZpKdJrTfYR7o3uNuei8MZHObcR5qLoI62bmhHiDNw
g5pya4XvNe11lM6JZh7+rF6F981NC8orDjh1r5FV9tF/7+yUy4rfHgfWIm9zezdro36FSuKzT/1w
AxOPL9UrlsrcnuOdmAesrooHMen1f1cM8S5bRF4gTDd7ftTol1S4eFHno9hBXWLW2JdaGqccrG2a
ntKA6PPOIAh1VYRJbCnLUNSFek2upoN4ZyfZI1xWb1nPZj7VuPequ9/HRlFgW+E89LWJjMqDggtx
Kt7O0czFoGLsLPCj9FqDfUREEP7BQyE8qb2xAbclgN8YA3CPSJb+IgSsB0V25flnOJAdh+cZjgRS
71L1fTuFWN55CmetoWQJpkkz8844cN8n8b6XSkVorIDKgHFjQnhErsXeAgshAFZgba1Yn8/rgeiS
B9lqZaJy0tUe9gOjaiLlRgV6A+WChU2HNdIo1NWCGVGxO9ynJ+LmLq3RKhkqJoA8FugY5QRIQX8W
WIX4xCAAUo/V5Y4J3QNEF0N/QwXHsxxojZcaT0P4TgL4pT5/+fcKS0bawOTD8thQ61owT5tuQqbz
4miVamLMfJMWRRSS+eyqKILtkV3VmGjbMnEXd2IRMKLsUDg53Fwk9nKnlWSMbUC9s948N2LoAzJK
YSU/hCSrkUMtECe0sGmYsCXVfEVcshSziEqdcKjEIe44a1I/43oqE0Zx+gfyuHG+W9lzMtdfXgVm
iZgawwuLyW+MTqLn7WYpJOdbcnU5q+eb079kCIwjLz/ZJTvYpVhzspx8En3BeSmkkE/EM8Yk0BYk
280ps4qIxkd1dQ5Vc81TVv4PYsKaYH0MKiUMRBMvD9k32G0JdhcFtvv4WFC3u53CjwEpu6Vt8eW7
lwS/USqYBhnGAe9jx+/C6heJmw5A2D9tE2EHXwe25gBVSdBL9fcMvzmdMq0GR19ithYxJigDzgWh
Otpz8Uex4aigNls8jRPGgM7Io+GN0Z43QU6PsNphtBOwB1VBu1L8xdGo24BHqVwJ0AN4GmymOMwV
KIUgdr9H4YStnlyMTCg8BsuTMjqLUn/T03bXrHAahmbEtcqxxsbY2rjg5tTvq79hogzlUSoJCaBs
j2hgi7laVSa7dvlyte1fljwJNrQ+K5KC0jr20uvTlhNtK7n9BOYw6d+gIT1k0l2VCQZ4i6OiaIuB
Ih83GIlP1X5XsGn4eLlOTly8DBQBWREMX4eEjFvwciFicAR77oOi34bfgHEFWf4hR1M38x8yMjit
KV193OzlJiK5HIs2NrBYYErUvVznDqNGQ1ow82ss6y1RIL7C8V8/XOok6VehJKFJwLC3rPyWfjCm
1uSBOu+UqRUygPk6W1r+2WN+CvE/pKGF7waVhRQK21DcXHKN4EQTnXaauhcMlr3UN56bbKROQeIU
YsFM3DXD7Mml3IdJoBChGVPKdAuEpkqPPytvJW4Qy4rucZdXvbvh7m3/ULkPbqW9oVO8TWcgqShh
McYsUga8JJEmuUWjkxxjgWwFbNKB8awuWCdzNM0sHGg+pkRuj+YO9nqrl0jzOYexaVIukt8ZrKwF
hfu0Fv7Zeq6xgvGfZzbzCKPSTuX4vx9Rd2sYli4PhtmBA6PlxKEwjNBALsDgfSvO0O+v4UBO19wI
3Ug9ikX+HQbyGlARWAlMWZ6hi/89PSqdV1224ocNCXk9Y45ngRdg9p9N+XsJ4qSRw4bwSd/Me1fu
sOpEAA9U4qFw3jaqHcHiwt8uEu21zCGTfNu4X1NCcQpqNYQVWHNodUBErfmZc6bCz34C1egWZk+Z
l+d0TjXI56v3bPpgClJ41Bksznt+avORoN38S8BgYI2PmsRuiBooF6LwIvACxfZXnhOwXdGnnlt+
CCAj6d0JpcqGKk6hQr4/UqFIssD4b2I=
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
