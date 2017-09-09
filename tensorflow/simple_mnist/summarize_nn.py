# Name: Cory Nezin
# Date: 09/09/2017
# Goal: Summarize neural net weights

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

  tf.summary.histogram('Histogram (A)',net.A)
  tf.summary.histogram('Histogram (B)',net.B)

  merged = tf.summary.merge_all()
  writer = tf.summary.FileWriter('./summary/')

  summary = sess.run([merged], feed_dict={filename:['./data/mnist_test.tfrecords']})
  writer.add_summary(summary[0],0)

