# Name: Cory Nezin
# Date: 09/08/2017
# Goal: Train a simple neural net

import tensorflow as tf
import read_records
import shallow_nn

with tf.Session() as sess:
  model_variables = tf.get_collection('model_variables')
  filename,dataset,iterator = read_records.get_iterator()
  net = shallow_nn.shallow_nn(iterator,sess)
  updates = tf.train.GradientDescentOptimizer(0.01).minimize(net.loss)
  init = tf.global_variables_initializer()
  
  sess.run(init)

  saver = tf.train.Saver(max_to_keep = 100)
  F = open('./weights/loss.txt','w')

  n = 0
  m = 0
  global_step = 0
  for _ in range(100):
    global_step = global_step + 1
    sess.run(iterator.initializer,
       feed_dict={filename:['./data/mnist_train.tfrecords']})
    while True:
      try:
        loss,grad = sess.run([net.loss,updates])
        n = n + 1
        if n % 100 == 0:
          print('Loss:',loss)
          graph_keys = tf.get_collection(tf.GraphKeys.GLOBAL_VARIABLES)
          for key in graph_keys:
            print(key)
            print(sess.run(key))
      except tf.errors.OutOfRangeError:
        print('Epoch finished, validating...')
        sess.run(iterator.initializer, 
          feed_dict={filename:['./data/mnist_test.tfrecords']})
        total_loss = 0
        m = 0
        while True:
          try:
            loss = sess.run([net.loss])
            print('Validation Loss: ',loss[0])
            total_loss = total_loss + loss[0]
            m = m + 1
          except tf.errors.OutOfRangeError:
            print('Saving weights.')
            F.write(str(total_loss/m)+'\n')
            saver.save(sess,'./weights/simple_mnist', global_step = global_step)
            break
        break

F.close()
print('Finished Training')
