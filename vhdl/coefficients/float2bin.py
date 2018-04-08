g = open('fc2_biases_bin.txt','w')
ii = 0
with open('fc2_biases.txt') as f:
    for line in f:
        n = float(line[0:-1])
        print(n)
        r = n * 2**17
        m = int(r)

        g.write('"')
        if m >= 0:
            b = format(m, '025b')
            print(b, len(b))
            g.write(b)
        if m < 0:
            m = m + 2**25
            b = format(m, '025b')
            print(b)
            g.write(b)
        g.write('",')
        ii = ii + 1
        if ii % 4 == 0:
            g.write('\n')
for i in range(64-ii):
    g.write('"'+'0'*25+'",')
    ii = ii + 1
    if ii % 4 == 0:
        g.write('\n')

g.close()
