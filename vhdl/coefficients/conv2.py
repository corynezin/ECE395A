import numpy as np
x = np.load('maxpool1_out.npy')
x.shape = (60,32)
yy = []
for memnum in range(16):
    h = []
    with open('conv2_truncated_reversed_flipped_'+str(memnum)+'.txt','r') as f:
        for line in f:
            h.append(float(line))

    h = np.array(h) 
    #h.shape = (16,-1)
    h = np.reshape(h,(16,32),order='F')
    #print('h.shape',h.shape)
    h = np.flip(h,axis=0)
    y = np.zeros((1,45))
    o = np.zeros((1,45))
    #print(h)
    for i in range(32):
        #o = np.convolve(x[:,i],h[:,i],mode='valid')
        for j in range(45):
            a = np.copy(o[0,j])
            for k in range(16):
                o[0,j] += x[j+k,i]*h[k,i]
                if j == 0:
                    if i == 16 or i == 3:
                        print(x[j+k,i],'*',h[k,i],j,' => ',o[0,j]-a)
                    if k == 15:
                        print(o[0,j])
        y = y + o

    print(o)
    o = o[0,0:-1]
    o = np.reshape(o,(2,22),order='F')
    m = np.amax(o,axis=0)
    yy.extend(list(m))
print(yy)
np.save('maxpool2_out.npy',np.array(yy))
