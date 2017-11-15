c = 1
i1 = 0
i2 = 0
a = 0
with open('logfile.log') as f:
  for line in f:
    a = int(line,base=2)
    if a & (1 << 7) != 0:
      a = a - 256
    if c == 0:
      i1 = a
      print('input 1',a,end=', ')
    if c == 1:
      i2 = a
      print('input 2',a,end=', ')
    if c == 2:
      if a != max(i1,i2):
        print('error: ',i1,i2,a)
      print('output',a)
    c = (c + 1) % 3
