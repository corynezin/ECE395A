import sys
import random
import numpy as np
hexstr = "0123456789ABCDEF"
s = 'memory_initialization_radix=16;\n'
s += 'memory_initialization_vector=\n'
for i in range(1024):
  d = str(random.choice(hexstr)) + str(random.choice(hexstr))
  s += d + ',\n'
s = s[:-1] + ';'

f = open(sys.argv[1],'w')
f.write(s)
