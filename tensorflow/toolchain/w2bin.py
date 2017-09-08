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
from numpy import array


def w2bin(model_name, output_file_path):

  weights_path = model_name + ".meta"
  model_path = model_name 
  output_path = output_file_path

  # extract weights from tensorflow
  sess = tf.Session()
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

    # all_vars = tf.get_collection(key)
    all_vars = [[1,2],[3,4]]
    all_vars_arr = array(all_vars)
    dims = all_vars_arr.shape
    dims = list(dims)
    num_elements = 1
    print(all_vars)
  
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
    print(all_vars)
    all_vars = all_vars_arr.flatten().tolist()
    f.write(struct.pack("I"*num_elements, *all_vars))
  
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


