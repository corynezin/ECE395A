# Name: Cory Nezin
# Date: 09/08/2017
# Goal: Create the model for a shallow neural net

import tensorflow as tf

class shallow_nn:
  def __init__(self,iterator,sess):
    self.sess = sess
    self.iterator = iterator
    s = 0.1
    self.A = tf.get_variable('A',shape=([100,784]),
      initializer=tf.random_normal_initializer(stddev=s)) # Hidden layer
    self.B = tf.get_variable('B',shape=([10,100]),
      initializer=tf.random_normal_initializer(stddev=s))  # Output layer
    self.b_0 = tf.get_variable('b_0',shape=([1,]),
      initializer=tf.random_normal_initializer(stddev=s))
    self.b_1 = tf.get_variable('b_1',shape=([1,]),
      initializer=tf.random_normal_initializer(stddev=s))

    tf.add_to_collection(tf.contrib.framework.model_variable,self.A)
    tf.add_to_collection(tf.contrib.framework.model_variable,self.B)
    tf.add_to_collection(tf.contrib.framework.model_variable,self.b_0)
    tf.add_to_collection(tf.contrib.framework.model_variable,self.b_1)

    self.build()

  def build(self):
    self.example = self.iterator.get_next()
    x = self.example['image']
    y = self.example['label']
    
    net = tf.reshape(x,[-1,784,1])
    initializer = tf.zeros([100,1])
    net = tf.scan(lambda a,x: tf.matmul(self.A,x), net, initializer) + self.b_0
    net = tf.nn.relu(net) 
    initializer = tf.zeros([10,1])
    net = tf.scan(lambda a,x: tf.matmul(self.B,x), net, initializer) + self.b_1
    net = tf.reshape(net,[-1,10])

    self.matrix_product = net
    
    self.cross_entropy = tf.nn.sparse_softmax_cross_entropy_with_logits(
      labels = y, logits = net)

    self.mean_cross_entropy = tf.reduce_mean(self.cross_entropy)
    self.loss = self.mean_cross_entropy

    self.softmax = tf.nn.softmax(net)

    self.prediction = tf.argmax(self.softmax, axis = 1)
    self.equality = tf.equal(tf.cast(self.prediction, tf.int32), y)
    self.accuracy = tf.reduce_mean(tf.cast(self.equality, tf.float32))
