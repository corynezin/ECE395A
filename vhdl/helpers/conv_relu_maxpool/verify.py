import numpy as np

# Convert binary string to floating point value
# Assumes n integer bits
# q - binary number
def bin2fix(q,n,s):
    N = len(q)
    msv = (-2**(N-1) if s else 2**(N-1))*int(q[0])
    lsv = int(q[1:],2)
    val = msv + lsv
    return val / 2**(N-n)

f = open('conv0_0.coe')
x = np.zeros(128)
for line_num,line in enumerate(f):
    if line_num < 2:
        continue
    else:
        h = line.split(',')
        h = np.array([int(2**13*float(hn))/2**13 for hn in h[:-1]])
    for i in range(128):
        v = (i + 3) % 128
        binary = "{0:b}".format(v).zfill(8)
        val = bin2fix(binary,1,True)
        x[i] = val
    if line_num == 3:
        print(x)
        print(h)
        print(np.convolve(x,h))
