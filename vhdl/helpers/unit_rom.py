import sys
import random
import numpy as np
hexstr = "0123456789ABCDEF"
s = 'memory_initialization_radix=16;\n'
s += 'memory_initialization_vector=\n'
n = 0
for i in range(int(sys.argv[1])):
    d = ''
    for j in range(int(sys.argv[2])):
        d = d + hexstr[n//16] + hexstr[n%16]
    n = (n + 1) % 256
    s += d + ',\n'
s = s[:-2] + ';'

f = open(sys.argv[3],'w')
f.write(s)
