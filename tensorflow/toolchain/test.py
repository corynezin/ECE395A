# Name: Brenda So
# Date: 09/07/2017
# Goal: To create a spiral dataset such that I can test my weight extraction code on it

import tensorflow as tf
import numpy as np

def model_variable(shape, name):
    variable = tf.get_variable(name = name,
                               shape = shape,
                               dtype = tf.float32,
                               initializer = tf.random_normal_initializer(stddev=0.1))
    tf.add_to_collection('model_variables', variable)
    return variable

# This function creates a data for spirals
def data():
    x = np.zeros((1,2))
    sigma = 0.1
    np.random.seed(31415)
    for i in range(300):
        theta = np.random.uniform(0,12)
        epsilon1 = np.random.normal(0,sigma)
        epsilon2 = np.random.normal(0,sigma)
        if (np.random.randint(2) == 1):
            x[0,0] = theta*np.cos(theta) + epsilon1
            x[0,1] = theta*np.sin(theta) + epsilon2
            y = 0
        else:
            x[0,0] = theta*np.cos(theta+np.pi) + epsilon1
            x[0,1] = theta*np.sin(theta+np.pi) + epsilon2
            y = 1
        yield x,y

class Model():
    def __init__(self, sess, data, nEpochs, learning_rate, num_data, layer_vars, n_classes):
        self.sess = sess
        self.data = data
        self.nEpochs = nEpochs
        self.learning_rate = learning_rate
        self.num_data = num_data
        self.layer_vars = layer_vars
        self.n_classes = n_classes
        self.build_model()  # build a multi-layer perceptron

    def build_model(self):
        # create placeholders for data points and labels
        self.x = tf.placeholder(tf.float32, (1,2), name='x')
        self.y = tf.placeholder(tf.float32, (1,1), name='y')
        
        # create layers with RELU activation and sigmoid function at the end
        h1 = model_variable((2,self.layer_vars[0]), 'h1');
        hout = model_variable((self.layer_vars[2],1), 'hout');
        
        b1 = model_variable(self.layer_vars[0], 'b1');
        bout = model_variable(1, 'bout');

        self.yhat = tf.add(tf.matmul(tf.nn.relu(tf.add(tf.matmul(self.x, h1), b1)), hout), bout)

        self.output = tf.sigmoid(self.yhat)

        self.cross_entropy = tf.nn.sigmoid_cross_entropy_with_logits(logits=self.yhat, labels=self.y)
        
    def train_init(self):
        model_variables = tf.get_collection('model_variables')
        self.optim = (tf.train.AdamOptimizer()
                      .minimize(self.cross_entropy, var_list=model_variables)
                     )
        self.sess.run(tf.initialize_all_variables())

    def train(self):
        for i in range(self.nEpochs):
            for x,y in self.data():
              loss  = self.sess.run([self.cross_entropy, self.optim], feed_dict={self.x:np.atleast_2d(x), self.y:np.atleast_2d(y)})

    def infer(self,x):
        return self.sess.run(self.output, feed_dict={self.x:x})   

sess = tf.Session()
saver = tf.train.Saver()
model = Model(sess, data, 50, 1e-2, 300, [100, 100, 100], 2);
model.train_init()
model.train()
saver.save(model.sess,'my_test_model')

