# Name: Cory Nezin
# Date: 09/07/2017
# Goal: Read MNIST into TFRecords

import tensorflow as tf
import numpy as np
import struct

writer = tf.python_io.TFRecordWriter('./data/mnist_train.tfrecords')

filename = './data/train-labels-idx1-ubyte'
with open(filename,'rb') as f:
  magic = struct.unpack(">I",f.read(4))[0]
  batches = struct.unpack(">I",f.read(4))[0]
  labels = []
  for b in range(batches):
    bytes_list = f.read(1)
    labels.append(bytes_list)

filename = './data/train-images-idx3-ubyte'
with open(filename,'rb') as f:
  magic = struct.unpack(">I",f.read(4))[0]
  batches = struct.unpack(">I",f.read(4))[0]
  rows = struct.unpack(">I",f.read(4))[0]
  cols = struct.unpack(">I",f.read(4))[0]
  for b in range(batches):
    bytes_list = f.read(28*28)
    writer.write(bytes_list + labels[b])

writer.close

writer = tf.python_io.TFRecordWriter('./data/mnist_test.tfrecords')

filename = './data/t10k-labels-idx1-ubyte'
with open(filename,'rb') as f:
  magic = struct.unpack(">I",f.read(4))[0]
  batches = struct.unpack(">I",f.read(4))[0]
  labels = []
  for b in range(batches):
    bytes_list = f.read(1)
    labels.append(bytes_list)

filename = './data/t10k-images-idx3-ubyte'
with open(filename,'rb') as f:
  magic = struct.unpack(">I",f.read(4))[0]
  batches = struct.unpack(">I",f.read(4))[0]
  rows = struct.unpack(">I",f.read(4))[0]
  cols = struct.unpack(">I",f.read(4))[0]
  for b in range(batches):
    bytes_list = f.read(28*28)
    writer.write(bytes_list + labels[b])

writer.close
