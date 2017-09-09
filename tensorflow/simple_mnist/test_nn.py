# Name: Cory Nezin
# Date: 09/09/2017
# Goal: Test a simple neural net

import tensorflow as tf
import read_records
import shallow_nn

with tf.Session() as sess:
  filename,dataset,iterator = read_records.get_iterator()
  net = shallow_nn.shallow_nn(iterator,sess)
  init = tf.global_variables_initializer()

  sess.run(init)

  saver = tf.train.Saver()
  saver.restore(sess, './weights/simple_mnist-100')

  sess.run(iterator.initializer, feed_dict={filename:['./data/mnist_test.tfrecords']})

  total_acc = 0.0
  n = 0
  print('Running testing...')
  while True:
    try:
      acc = sess.run([net.accuracy])
      total_acc = total_acc + acc[0]
      n = n + 1
    except tf.errors.OutOfRangeError:
      print('Finished testing, total accuracy: ',total_acc/n)
      break
