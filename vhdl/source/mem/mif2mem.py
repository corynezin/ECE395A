n = 0
f = open('0.mem','w')
for line in open('dist_mem_gen_0.mif','r'):
    hex_val = hex(int(line,2))
    str_to_write = hex_val[2:] # remove 0x*
    hex_line_num = hex(n)[2:].zfill(3)
    f.write('@' + hex_line_num + ' ' + str_to_write + '\n')
    n = n + 1
