i = 1
while(1):
  bit = (i>>0 ^ i>>1 ^ i>>3 ^ i>>12)
  i = (i >> 1 | bit << 15) % 2**15
  print(~i + 1)
