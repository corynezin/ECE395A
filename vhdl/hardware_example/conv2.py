import numpy as np

x = np.load('maxpool1_out.npy')
h = []
with open('conv2_0.txt','r') as f:
    for line in f:
        h.append(float(line))

print(h)
        
