import numpy as np
import sys
import os

w = 3
h = 5
A = np.random.randint(2,size=(w,h,8))



arr_str = \
'package body MATRIX is\n'\
'constant matrix_height: INTEGER:= '+str(w)+';\n'\
'constant matrix_width: INTEGER:= '+str(h)+';\n'\
'constant number_size: INTEGER:= 8;\n'\
'end MATRIX;\n'\
'library IEEE;\n'\
'use IEEE.STD_LOGIC_1164.ALL;\n'\
'use IEEE.NUMERIC_STD.ALL;\n'\
'use WORK.MATRIX.ALL;\n'\
'package matrix_a is\n'\

arr_str += 'constant A: matrix:=(\n'

for i in range(w):
  arr_str += '('
  for j in range(h):
    arr_str += '\"'
    for b in range(8):
      arr_str += np.array_str(A[i,j,b])
    arr_str += '\",'
  arr_str = arr_str[:-1]
  arr_str += '),\n'

arr_str = arr_str[:-2]
arr_str += ');\n'
arr_str += 'end package;'
f = open('matrix_a.vhd','w')
f.write(arr_str)
