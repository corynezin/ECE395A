import random
for i in range(1):
    f = open(str(i)+'.mem','w')
    for j in range(16*32):
        hex_val = hex(int(random.randint(0,255)))
        str_to_write = hex_val[2:]
        hex_line_num = hex(j)[2:].zfill(3)
        f.write('@' + hex_line_num + ' ' + str_to_write + '\n')
