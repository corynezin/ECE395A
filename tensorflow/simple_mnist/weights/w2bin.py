# Name: Brenda So
# Date: 09/07/2017
# Goal: To extract weights from a tensorflow model and store it in a binary form. This only works for FC and

# The file structure stored is as follows:
# First 4 bytes : n (number of layers)
# Second 8*n bytes : lookup table with the structure (layer number, byte offset)
# Each layer is structured as : number of dimensions, dim1, dim2... dimn, weight1 ...

import tensorflow as tf
import sys
import struct
import math
from numpy import array

# This function takes in a meta file and output name of the weights
def show_weights(model_name):
  weights_path = model_name + ".meta"
  model_path = model_name
  
  sess = tf.Session()
  new_saver = tf.train.import_meta_graph(weights_path)
  what = new_saver.restore(sess, model_path)
  graph_keys = tf.get_collection(tf.GraphKeys.MODEL_VARIABLES)
  for keys in graph_keys:
    print(keys)

# This function takes a floating point number and generate a fixed point number
# f_num : floating point number
# is_signed : signed conversion?
# w_length: length of the fixed point number
# d_length : length of bits after decimal point
# return : byte array representation of the number
def sfi(f_num, is_signed, w_length, d_length):
  
  frame = bytearray()
 
  # error checking
  if (d_length >= w_length):
    print("w2bin.py : length of bits after decimal point should be less than length of fixed point")
    return frame
  if (is_signed != 0 and is_signed != 1):
    print("w2bin.py : is_signed should be either 0 or 1")
    return frame

  for num in  f_num:
    
    bin_frame = ""
    
    new_num = num * pow(2,d_length)
    print(new_num)
    new_num = round(new_num)
    if (new_num > pow(2, w_length-1)):
      # overflow
      print("overflow")
      bin_frame += '0'
      for i in range(w_length-1):
        bin_frame += '1'
    elif (new_num < -pow(2, w_length)):
      # underflow
      print("underflow")
      bin_frame += '1'
      for i in range(w_length-1):
        bin_frame += '0'
    else:
      if(new_num < 0):
        new_num = new_num + pow(2, w_length)
      while (new_num >= 1):
        bin_frame += chr(new_num % 2 + 48)
        new_num = int(new_num / 2)
    
    bin_frame = bin_frame[::-1]
    if (len(bin_frame) < w_length):
      for i in range(w_length-len(bin_frame)):
        bin_frame = '0'+bin_frame
    elif (len(bin_frame) > w_length):
        bin_frame = bin_frame[:8:]
    
    final_int = 0
    for i in range(w_length):
      if (bin_frame[i] == '1'):
        final_int += pow(2,w_length-i-1) 
    a = ord(chr(final_int))
    print("num: " + str(num) + "\tbin_frame: " + bin_frame + "\ta: " + str(a) + "\ta_trunc:  " + bin(a))
    frame.append(a)

  return frame 

# This function takes in a meta file and generate a file for the weights from it
def w2bin(model_name, output_file_path):

  weights_path = model_name + ".meta"
  model_path = model_name 
  output_path = output_file_path

  # extract weights from tensorflow
  sess = tf.Session()
  dir(tf.contrib)
  new_saver = tf.train.import_meta_graph(weights_path)
  what = new_saver.restore(sess, model_path)

  # open file and write meta data to the file
  f = open(output_path, "wb")
  graph_keys = tf.get_collection(tf.GraphKeys.MODEL_VARIABLES)
  num_graph_keys = len(graph_keys)
  f.write(struct.pack("I", num_graph_keys))

  if (num_graph_keys == 0):
    print("w2bin.py : No layers detected\n")
    f.close()
    sys.exit()

  data = [0 for i in range(num_graph_keys*2)]

  # allocate space for lookup table
  # a mapping between layer number and the offset in the file from start of file
  f.write(struct.pack("I"*num_graph_keys*2, *data))

  counter = 0

  lut_offset = 4
  counter = counter + 1
  data_offset = f.tell()

  for key in graph_keys:
    print(key)
    # all_vars = sess.run(key)
    # all_vars = [[1,2],[3,4]]
    all_vars_arr = sess.run(key)
    dims = all_vars_arr.shape
    dims = list(dims)
    num_elements = 1
    # print(all_vars_arr)
  
    for d in dims:
      num_elements = num_elements * d
  
    # write data into file
    f.seek(lut_offset)

    # write LUT
    data = [counter, data_offset]
    f.write(struct.pack("I"*len(data), *data))
    f.seek(0,2) 
  
    # write dimensions
    dims = [len(dims)] + dims  # dims now contains data about the length of dimensions
    f.write(struct.pack("I"*len(dims), *dims))
    # write weights
    all_vars = all_vars_arr.flatten().tolist()
    all_vars = sfi(all_vars, 1, 8, 7)
    # f.write(struct.pack("c"*num_elements, *all_vars))
    f.write(all_vars)
    # update counter
    counter = counter + 1
    lut_offset = lut_offset + 8
    data_offset = f.tell()
  
  f.close()


if __name__ == "__main__":
  if (len(sys.argv) != 3):
    print("Usage :  python3 w2bin.py [model name] [output file path] \n")
    sys.exit()
  w2bin(sys.argv[1], sys.argv[2])

  # Test sfi
  # test_vec = [1.0000, -1.0000]
  # new_vec = sfi(test_vec, 0, 8, 7)

  # for i in range(len(test_vec)):
  #   print(test_vec[i])
  #   print(new_vec[i])
