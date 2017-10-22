import sys
import numpy as np
v1,v2 = np.zeros(16,),np.zeros(16,)
dot = []
c = 0
i = 0
with open(sys.argv[1],'r') as f1, open(sys.argv[2],'r') as f2:
  for x,y in zip(f1,f2):
    if c < 2:
      c += 1
    else:
      x = int(x[:-2],16); y = int(y[:-2],16);
      if x > 0x80:
        x -= 0x100
      if y > 0x80:
        y -= 0x100
      v1[i],v2[i] = x,y
      if i == 15:
        dot.append(int(np.dot(v1,v2)))
        print(int(np.dot(v1,v2)))
      i = (i + 1) % 16
    

