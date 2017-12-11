x_s = ['09','13','27','4f','9f','3f','7f','ff','fe','fc','f8','f0','e1','c2','85','0b']
h_s = ['4f','35','c9','8d','bb','40','dc','20','75','0b','b4','18','4d','a9','07','35']
x = [int(x_s[i],base=16) for i in range(len(x_s))]
h = [int(h_s[i],base=16) for i in range(len(h_s))]

ps = [];
for i in range(len(x)):
    x[i] -= (0 if x[i] <= 0x7F else 0x100)
    h[i] -= (0 if h[i] <= 0x7F else 0x100)
    print('x: ',x_s[i],x[i],'h: ',h_s[i],h[i])
    if i > 0:
        ps.append(x[i]*h[i] + ps[i-1])
    else:
        ps.append(h[i]*x[i])
    
print(ps)
