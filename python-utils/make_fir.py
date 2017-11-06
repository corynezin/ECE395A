# Name :  Brenda So
# Date : 11/6/2017
# Goal : Make a script that can generate multiplier-less multiplier FIR filter files for VHDL
# TODO: make generating script for flipflops and fixed adders

import dec2csd
# Print range for vectors in VHDL
def get_range(num):
    return "("+str(num-1)+" downto 0)"

# return the string to make an MM shift
def make_mm_shifts(input_name, num):
    return "signed(to_std_logic_vector(to_bitvector(std_logic_vector("+input_name+")) sra "+str(num)+"))"

# place D flip flop as a component in the entiyt
def place_d_ff(f, data_width):
    f.write("component d_flipflop is\n")
    f.write("    port(data: in signed"+get_range(data_width)+";\n")
    f.write("         clk: in std_logic;\n")
    f.write("         rst: in std_logic;\n")
    f.write("         q: out signed"+get_range(data_width)+");\n")
    f.write("end component;\n")

# place fixed adder as a component in the entity
def place_fixed_add(f, data_width):
    f.write("component fixed_add is\n")
    f.write("    port(a: in signed"+get_range(data_width)+";\n")
    f.write("         b: in signed"+get_range(data_width)+";\n")
    f.write("         output: out signed"+get_range(data_width)+");\n")
    f.write("end component;\n")

# generator of multiplierless multipler file
def make_mm_file(filename, entity_name, csd_string, data_width):
    with open(filename, "w") as f:
        f.write("library IEEE;\n")
        f.write("use IEEE.STD_LOGIC_1164.ALL;\n")
        f.write("use IEEE.NUMERIC_STD.ALL;\n")
        
        f.write("entity "+entity_name+" is\n")
        f.write("port(input: in signed"+get_range(data_width)+";\n")
        f.write("     output: out signed"+get_range(data_width)+");\n")
        f.write("architecture RTL of "+entity_name+" is\n")
        f.write("begin\n")
        f.write("output <= ")
        counter = len(csd_string)-1;
        is_first_number = True;
        for c in csd_string:
            if (c == '1'):
                if (not is_first_number):
                    f.write("+\n          ")
                is_first_number = False
                f.write(make_mm_shifts("input", counter))
            elif (c == '2'):
                f.write("-")
                if (not is_first_number):
                    f.write("\n          ")
                is_first_number = False
                f.write(make_mm_shifts("input", counter))
            counter -= 1
        f.write(";\n")
        f.write("end architecture;\n")
 
        f.write("end "+entity_name+";\n")

# generator of FIR filter with multiplierless multipliers
def make_mm_fir(filename, entity_name, mult_arr, data_width):
    # make the multipliers
    counter = 0
    mm_name_list = []
    for csd in mult_arr:
        mm_name = entity_name+"_b_"+str(counter)
        make_mm_file(mm_name+".vhd", mm_name, csd, data_width)
        mm_name_list.append(mm_name)
        counter += 1

    with open(filename, "w") as f:
        f.write("library IEEE;\n")
        f.write("use IEEE.STD_LOGIC_1164.ALL;\n")
        f.write("use IEEE.NUMERIC_STD.ALL;\n")
        
        f.write("entity "+entity_name+" is\n")
        f.write("port(input: in signed"+get_range(data_width)+";\n")
        f.write("     clk: in std_logic;\n")
        f.write("     rst: in std_logic;\n")
        f.write("     output: out signed"+get_range(data_width)+");\n")
            
        f.write("architecture RTL of "+entity_name+" is\n")
        place_d_ff(f, data_width)
        place_fixed_add(f, data_width)
        num_taps = len(mm_name_list);
        for mm in mm_name_list:
            f.write("component "+mm+ " is\n")
            f.write("    port(input: in signed"+get_range(data_width)+";\n")
            f.write("         output: out signed"+get_range(data_width)+");\n")
            f.write("end component;\n")
        f.write("end "+entity_name+";\n") 
        # make arrays of signed vectors for intermediate steps
        f.write("type delays_"+str(num_taps-1)+" is array (0 to "+str(num_taps-2)+") of signed"+get_range(data_width)+";\n")
        f.write("type prods_"+str(num_taps)+" is array (0 to "+str(num_taps-1)+") of signed"+get_range(data_width)+";\n")
        f.write("type sums_"+str(num_taps-1)+" is array (0 to "+str(num_taps-2)+") of signed"+get_range(data_width)+";\n")
        f.write("signal delay: delays_"+str(num_taps-1)+";\n")
        f.write("signal product: prods_"+str(num_taps)+";\n")
        f.write("signal sums: sums_"+str(num_taps-1)+";\n")
        f.write("signal bef_output: signed"+get_range(data_width)+";\n")
        f.write("signal actual_delay: signed"+get_range(data_width)+";\n")
        f.write("begin\n")
        # connect d flipflops
        for i in range(num_taps):
            if (i == 0):
                f.write("DFF0: d_flipflop port map(data=>input, clk=>clk, rst=>rst, q=>actual_delay);\n")
            elif(i == 1):
                f.write("DFF1: d_flipflop port map(data=>actual_delay, clk=>clk, rst=>rst, q=>delay(0));\n")
            else:
                f.write("DFF"+str(i)+": d_flipflop port map(data=>delay("+str(i-2)+"), clk=>clk, rst=>rst, q=>delay("+str(i-1)+"));\n")

        # connect multipliers
        for i in range(num_taps):
            if (i == 0):
                f.write("MUL0: "+mm_name_list[0]+" port map(input=>actual_delay, output=>product(0));\n")
            else:
                f.write("MUL"+str(i)+": "+mm_name_list[i]+" port map(input=>delay("+str(i-1)+"), output=>product("+str(i)+"));\n")

        # connect adders
        for i in range(num_taps-1):
            if (i == 0):
                f.write("ADD0: fixed_add port map(a=>product(0), b=>product(1), output=>sums(0));\n") 
            elif (i == num_taps-2):
                f.write("ADD"+str(i)+": fixed_add port map(a=>sums("+str(i-1)+"), b=>product("+str(i+1)+"), output=>bef_output);\n")
            else:
                f.write("ADD"+str(i)+": fixed_add port map(a=>sums("+str(i-1)+")"+", b=>product("+str(i+1)+"), output=>sums("+str(i)+"));\n")
        f.write("DFF"+str(num_taps)+": d_flipflop port map(data=>bef_output, clk=>clk, rst=>rst, q=>output);\n)")
        f.write("end "+entity_name+";\n")

# read input file of convolutional layer
# return list of names of FIR filters
def make_mm_from_file(filename, data_width, frac_width):
    ret_list = []
    with open(filename, "r") as f:
        meta_data= f.readline()
        meta_list = meta_data.split(" ")
        num_filts = int(meta_list[0])
        num_inputs = int(meta_list[1])
        num_taps = int(meta_list[2])
        for i in range(num_filts):
            for j in range(num_inputs):
                fir_meta_data = f.readline()
                fir_meta_data_list = fir_meta_data.split(" ")
                fir_ind = int(fir_meta_data_list[0])
                input_ind = int(fir_meta_data_list[1])
                taps = f.readline()
                taps_str_list = taps.split(" ")
                taps_list = []
                for i in range(num_taps):
                    taps_list.append(float(taps_str_list[i]))
                new_tap_vec = dec2csd.float2fixed(taps_list, data_width, frac_width)
                csd_tap_vec = dec2csd.bin2csd(new_tap_vec, data_width)
                fir_name = "fir_"+str(fir_ind)+"_"+str(input_ind)
                ret_list.append(fir_name)
                make_mm_fir(fir_name+".vhd", fir_name, csd_tap_vec, data_width)
        return ret_list

def make_conv0_layer(filename, entity_name, fir_name_list):
    with open(filename, "w" ) as f:
        f.write("library IEEE;\n")
        f.write("use IEEE.STD_LOGIC_1164.ALL;\n")
        f.write("use IEEE.NUMERIC_STD.ALL;\n")
        f.write("use data_types;\n")
        f.write("entity "+entity_name+" is\n")
        f.write("port(input: in conv_0_input;\n")
        f.write("     clk: in std_logic;\n")
        f.write("     rst: in std_logic;\n")
        f.write("     output: out conv_0_output);\n")
        # add all fir components
        for fir in fir_name_list:
            f.write("component "+fir+ " is\n")
            f.write("    port(input: in signed"+get_range(data_width)+";\n")
            f.write("         clk : in std_logic;\n")
            f.write("         rst : in std_logic;\n")
            f.write("         output: out signed"+get_range(data_width)+");\n")
            f.write("end component;\n")

        f.write("end "+entity_name+";\n")
        f.write("architecture RTL of "+entity_name+" is\n")
        f.write("begin\n")
        # connect the inputs to the fir filters
        # connec the output pairs of fir filters to adders, which becomes outputs
        f.write("end architecture;\n")
         
    # connect the inputs to the fir filters
    # connect the output of pairs of fir filters to adders, which becomes output

if __name__ == "__main__":
    data_width = 8
    frac_width = 7
    # test_vec = [0.0044, 0.0086, 0.0205, 0.0412, 0.0686, 0.0978, 0.1224, 0.1366]
    # new_test_vec = dec2csd.float2fixed(test_vec, data_width, frac_width)
    # csd_test_vec = dec2csd.bin2csd(new_test_vec, data_width)
    # make_mm_fir("fir_test.vhd","fir_test", csd_test_vec, data_width)
    # make_mm_file("b_test.vhd", "b_test","10200000", 8)
    ret = make_mm_from_file("test.txt", data_width, frac_width)
    make_conv0_layer("conv0.vhd", "conv0", ret);
    print(ret)

