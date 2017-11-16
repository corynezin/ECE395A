# Name : Brenda So
# Date : 11/3/2017
# Goal : utilities to generate FIR filters in CSD

# convert positive csd to negative csd
# i.e. flipping 1 to -1 (represented by 2) and -1 to 1
def flip_csd(bin_str):
    print("flipping")
    for i in range(len(bin_str)):
        if (bin_str[i] == "1"):
            bin_str = bin_str[:i] + "2"+bin_str[i+1:]
        elif (bin_str[i] == "2"):
            bin_str = bin_str[:i]+"1"+bin_str[i+1:]
    return bin_str

# Convert fixed point binary digit to canonicals signed digit convention
def bin2csd( bin_arr , data_width):
    ret = []
    for fb_fixed in bin_arr:
        isChange = True
        b = fb_fixed            # assign b to fb_fixed
        if (fb_fixed < 0):
             b = -fb_fixed      # take the positive number
        bin_str = bin(b)[2:]    # convert from decimal to binary string
        while(isChange == True):
            isChange = False
            for i in range(len(bin_str)-1, 0, -1):
                if (bin_str[i] == '1' and bin_str[i-1] == '1'):
                    isChange = True # make the change
                    bin_str = bin_str[:i]+"2"+bin_str[i+1:]
                    start = i-1
                    end = 0
                    while (start >= end):
                         if (bin_str[start] != "0"):
                             bin_str = bin_str[:start]+"0"+bin_str[start+1:]
                             start -= 1
                         else:
                             bin_str = bin_str[:start]+"1"+bin_str[start+1:]
                             break
                    if (start < end):
                        bin_str = '1'+bin_str
        # first if fb_fixed is negative, we flip the 1->2 and 2->1
        if (fb_fixed < 0):
            bin_str=flip_csd(bin_str)
        if (len(bin_str) < data_width):
            bin_str = "0"*(data_width-len(bin_str))+bin_str
        ret.append(bin_str)
                
    return ret

# Convert floating point number to fixed point number
def float2fixed( float_bin_arr , data_width, frac_width ):
    ret = []
    max_lim = 0
    for i in range(-frac_width,data_width-frac_width-1):
        max_lim += 2**i
    for a in float_bin_arr:
        if (a < -2**(data_width-frac_width-1)):    # if b underflows
            b = -128
        elif (a > 2**(data_width-frac_width-1)):   # if b overflows
            b = 128
        else:
            b = a *  (2 ** frac_width)     # b = a * 2^F
            # if b < 0:                    # if b is negative
            #    b = 2**data_width+b       # loop the number around
            b = round(b)                   # Round to nearest integer
            # b_bin = bin(b_round)[2:]     # Convert integer to binary and eliminate '0b' from the string
            # if (a >= 0):
            #     b_bin = "0"+b_bin
            # if (len(b_bin) < data_width):
            #     b_bin = b_bin + "0"*(data_width-len(b_bin))
            # elif (len(b_bin) > data_width):
            #    b_bin = b_bin[:data_width]
        ret.append(b)
    return ret

# takes a csd string number and convert back to decimal
def verify_csd(csd_num, data_width, frac_width):
    ret_val = 0
    counter = 0
    for i in range(data_width-frac_width-1, -frac_width-1, -1):
        if (csd_num[counter] == "2"):
            ret_val -= 2**i
        elif (csd_num[counter] == "1"):
            ret_val += 2**i
        counter += 1
    return ret_val

if  __name__ == "__main__":
    test_vec = [-1, 1, -1.1,0.0044, 0.0086, 0.0205, 0.0412, 0.0686, 0.0978, 0.1224, 0.1366]
    new_test_vec = float2fixed(test_vec, 8,7)
    csd_test_vec = bin2csd(new_test_vec, 8)
    for i in range(len(csd_test_vec)):
        v_num = verify_csd(csd_test_vec[i],  8, 7)
        print("float: ",str(test_vec[i]),"\tfixed: ", str(new_test_vec[i])+"\tcsd:"+csd_test_vec[i], 
              "\tv_num: ", str(v_num))
