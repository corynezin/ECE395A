# Name : Brenda So
# Date : 11/4/2017
# Goal : Make conv layer 0 with the following script

name = "Brenda So"
date = "11/4/2017"
goal = "make convolution layer 0 with relu"
entity_name="conv0"
num_inputs=2
num_filts=2
num_bits=8


def get_vector_string(num):
    return ("("+str(num)+" downto 0)")

def print_fir_filter(name, f):
    f.write("component "+name+"\n")
    f.write("  Port(\n");
    f.write("    aclk: IN STD_LOGIC;\n")
    f.write("    s_axis_data_tvalid: IN STD_LOGIC;\n")
    f.write("    s_axis_data_tready: OUT STD_LOGIC;\n")
    f.write("    s_axis_data_tdata: IN STD_LOGIC_VECTOR"+get_vector_string(7)+";\n")
    f.write("    m_axis_data_tvalid: OUT STD_LOGIC;\n")
    f.write("    m_axis_data_tdata: OUT STD_LOGIC_VECTOR"+get_vector_string(8)+"\n")
    f.write(");\n")
    f.write("end component;\n")

with open("conv0.vhd",'w') as f:
    # print meta data of the file
    f.write("--Name: "+name+"\n")
    f.write("--Date: "+date+"\n")
    f.write("--Goal: "+goal+"\n")
    
    f.write("\n\n")

    # print header of the file
    f.write("library IEEE;\n")
    f.write("use IEEE.STD_LOGIC_1164.ALL;\n")
    f.write("use IEEE.NUMERIC_STD.ALL;\n")

    f.write("\n\n")

    # print ports 
    f.write("entity "+entity_name+" is\n")
    f.write("  Port (\n")
    for i in range(num_inputs):
        f.write("    in_"+str(i)+" : IN STD_LOGIC_VECTOR"+get_vector_string(7)+";\n")
    for i in range(num_filts):
        f.write("    out_"+str(i)+" : OUT STD_LOGIC_VECTOR"+get_vector_string(7)+";\n")
    f.write("    clk : IN STD_LOGIC;\n")
    f.write("    input_data_valid : IN STD_LOGIC\n")
    f.write("  );\n")
    f.write("end "+entity_name+";\n")

    f.write("\n\n") 

    f.write("architecture RTL of "+entity_name+" is\n")

    # print FIR filters used
    for i in range(num_filts):
        for j in range(num_inputs):
            print_fir_filter("fir_compiler_"+str(i)+"_"+str(j), f)

    f.write("\n\n")

    # print output connections directly from FIR filter
    for i in range(num_filts):
        f.write("signal out_"+str(i)+"inter: STD_LOGIC_VECTOR"+get_vector_string(8)+";\n")
        for j in range(num_inputs):
            f.write("signal out_"+str(i)+"_"+str(j)+": STD_LOGIC_VECTOR"+get_vector_string(7)+";\n")

    f.write("\n\n")
    f.write("begin\n")
    for i in range(num_filts):
        for j in range(num_inputs):
            f.write("fir_"+str(i)+"_"+str(j)+": fir_compiler_"+str(i)+"_"+str(j)+"\n") 
            f.write("  Port Map (\n")
            f.write("    aclk=>clk,\n")
            f.write("    s_axis_data_tvalid => input_data_valid,\n")
            f.write("    s_axis_data_tready => ,\n")
            f.write("    s_axis_data_tdata => in_"+str(j)+",\n")
            f.write("    m_axis_data_tvalid => ,\n")
            f.write("    m_axis_data_tdata => out_"+str(i)+"_"+str(j)+" \n")
            f.write("  );\n")

    # add the number of inputs for each filter together
    for i in range(num_filts):
        f.write("out_"+str(i)+"<=out_"+str(i)+"_inter(7 downto 0);\n")
        f.write("out_"+str(i)+"_inter<= ")
        for j in range(num_inputs):
            f.write("out_"+str(i)+"_"+str(j))
            if (j != num_inputs-1):
                f.write(" +\n        ")
        f.write(";\n")
    f.write("end RTL;\n")
    
# print connections
