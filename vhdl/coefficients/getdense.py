import numpy as np

M = np.zeros((352,64))
with open('fc_truncated_reshape_flipped_layer.txt','r') as f:
    n = -1
    m = 0
    for line in f:
        if line[:2] == "fc":
            n = n + 1
            m = 0
            continue
        print(n,m)
        M[n,m] = float(line[:-1])
        m = m + 1

print(M)
mp = np.load('maxpool2_out.npy')
mp[mp<0]=0
MT = M.T
print(mp.shape)
print(MT.shape)
for k in range(0,352):
    #print(k,-1.37897+np.dot(MT[3,0:k],mp[0:k]))
    print(k,'\t',MT[3,k],mp[k])
    #input()


#330
