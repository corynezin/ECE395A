import random 

with open('input.txt','w') as f:
    for i in range(128):
        j = random.randint(0,256*256-1)
        b = bin(j)[2:].zfill(16)
        f.write(b)
        f.write('\n')
