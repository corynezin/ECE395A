import numpy as np
import matplotlib.pyplot as plt

n = 0
slope = 0.0287916671682745
bias = -0.9099925674156859
b = []
p = []
with open('fc_truncated_reshape_flipped_layer.coe','r') as f:
    for line in f:
        n = n + 1
        if n <= 2:
            continue
        if n > 354:
            break
        H = line[-4:-2]
        h = int(H,16)
        if h >= 128:
            h = h - 256
        a = h * slope + bias
        b.append(a)

x = list(np.load('maxpool2_out.npy'))

for k in range(352):
    if x[k] < 0:
        x[k] = 0
    s = -0.9117 + sum([x[i]*b[i] for i in range(k+1)])
    p.append(s)
    print(x[k],b[k],'->')
    print(k,s)
    #raw_input()

