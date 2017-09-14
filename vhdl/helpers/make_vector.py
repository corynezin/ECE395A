import numpy as np

arr_str = \
'package body VECTOR_W is\n'\
'constant matrix_height: INTEGER:= 100;\n'\
'constant matrix_width: INTEGER:= 784;\n'\
'constant number_size: INTEGER:= 8;\n'\
'end MATRIX;\n'\
'library IEEE;\n'\
'use IEEE.STD_LOGIC_1164.ALL;\n'\
'use IEEE.NUMERIC_STD.ALL;\n'\
'use WORK.MATRIX.ALL;\n'\
'package VECTOR_W is\n'\

v = np.random.randint(2,size=(784,8))
arr_str += 'constant v: vector_in:=(\n'

for n in range(784):
  arr_str += '\"'
  for b in range(8):
    arr_str += np.array_str(v[n,b])
  arr_str += '\",'
arr_str = arr_str[:-1]
arr_str = arr_str + ');\n'
arr_str = arr_str + 'end package;'

f = open('vector_v.vhd','w')
f.write(arr_str)
