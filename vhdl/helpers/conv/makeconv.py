import random
hexstr = '0123456789ABCDEF'

M = 128 # Number of filters
N = 8 # Number of taps
with open('taps.coe','w') as f:
  f.write('Radix = 16;\n')
  f.write('CoefData = \n')
  for i in range(128):
    for j in range(8):
      f.write( random.choice(hexstr) + random.choice(hexstr) + random.choice(hexstr) )
      if i == M-1 and j == N-1:
        f.write(';')
      else:
        f.write(',')
    f.write('\n')
