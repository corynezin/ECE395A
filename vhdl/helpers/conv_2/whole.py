import re
x = []
for line in open('logfile.log'):
    t = int(line)
    x.append(t)

linenum = -1
i = 0
n = -1
h = []
for line in open('conv_2_test_rom.coe'):
    linenum += 1
    if linenum < 2:
        continue
    if i % 16 == 0:
        h.append([])
        n = n + 1
    if linenum < 64:
        print(line,end='')
    t = int(re.split(',|;',line)[0],base=16)
    t -= (0 if t < 0x7F else 0x100)
    h[n].append(t)
    i = i + 1

def dot(x,y):
    return sum([x[i]*y[i] for i in range(len(x))])

n = 0
i = 0
iternum = 0
ps = [0]*45
while n < 4:
    xx = x[i:i+16]
    y = dot(xx,h[n])
    psi = iternum % 45
    ps[psi] += y
    res = ps[psi]
    print('iternum: {0}, n: {3}, i: {2}, y: {1}, ps[{5}]: {4}'.format(iternum,y,i,n,res,psi))
    i = i + 1
    iternum += 1
    if iternum % 45 == 0:
        i = i + 15
        n = n + 1

print(ps)
