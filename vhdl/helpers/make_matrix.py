import numpy as np
import sys
import os

#
#sys.path.append('./../../tensorflow/simple_mnist/weights')
#import w2bin
#
#w2bin.w2bin('./../../tensorflow/simple_mnist/weights/simple_mnist-100','./')

A = np.random.randint(2,size=(784,100,8))
arr_str = 'constant A: matrix:=(\n'

for i in range(784):
  arr_str += '('
  for j in range(100):
    arr_str += '\"'
    for b in range(8):
      arr_str += np.array_str(A[i,j,b])
    arr_str += '\",'
  arr_str = arr_str[:-1]
  arr_str += '),\n'

arr_str = arr_str[:-2]
arr_str += ');'

f = open('matrix.vhd','w')
f.write(arr_str)
