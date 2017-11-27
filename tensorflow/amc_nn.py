# Name: Brenda So
# Date: 10/27/2017
# Goal: Implement AMC neural net detailed in O'Shea 2017

# Layer : Output dimension : Comment
# Input : 2 * 128
# Convolution + Relu : 128 * 121 : 128 filters, size 2*8
# Max Pooling : 128 * 60 : size 2, strides 2
# Convolution + Relu : 64* 45 : 64 filters, size 1 * 16
# Max Pooling : 64 * 22 : size 2, stride 2
# Flatten : 1408
# FC + Relu : 128
# FC + Relu : 64
# FC + Relu : 32
# FC + softmax : 10

# NOTE : The output of get shape is
# (?,  1, 2,  128) 
# (? , 1, 121, 128)
# (?, 1, 60, 128)
# (?, 1, 45, 64)
# (?, 1, 22, 64)
# (?, 1408)
# (?, 128)
# (?, 64)
# (?, 32)

import tensorflow as tf
import numpy as np
import pickle as cPickle
import time
import matplotlib.pyplot as plt

# Data generator
# filename = "RML2016.10b_dict.dat"
# Batchsize = 1024
# num_rows = 2
# num_cols = 128

# sets up the data and return numpy arrays of testing and training set
# SNR arrays are also returned for plotting purposes and looking at classification accuracy of different SNRs
def data_setup(filename, percent_train, num_mods):
    # Open the file and arrange the data in terms of modulation schemes and SNR
    # Taken from radioML website
    Xd = cPickle.load(open(filename, 'rb'), encoding='latin1')
    snrs, mods = map(lambda j:sorted(list(set(map(lambda x: x[j], Xd.keys())))), [1,0])
    X = []
    lbl = []
    for mod in mods:
        for snr in snrs:
            X.append(Xd[(mod,snr)])
            for i in range(Xd[(mod,snr)].shape[0]):lbl.append((mod,snr))
    X = np.vstack(X) 
    # Partition the data into training and test sets
    np.random.seed(31415)
    n_examples = X.shape[0]
    n_train = n_examples * percent_train
    train_idx = np.random.choice(range(0, n_examples),size=int(n_train), replace=False)
    test_idx = list(set(range(0,n_examples)) - set(train_idx))
    X_train = X[train_idx]
    X_test = X[test_idx]
    Y_train = np.zeros([len(X_train), num_mods])
    Y_test = np.zeros([len(X_test), num_mods])
    Y_train_snr = np.ndarray.tolist(np.asarray(lbl)[train_idx][:,1])
    Y_test_snr = np.ndarray.tolist(np.asarray(lbl)[test_idx][:,1])
    # Turn y value to one hot vector
    print (train_idx) 
    print (mods.index(lbl[train_idx[0]][0]))
    for i in range(len(train_idx)):
        Y_train[i, mods.index(lbl[train_idx[i]][0])] = 1
       
    for i in range(len(test_idx)):
        Y_test[i, mods.index(lbl[test_idx[i]][0])] = 1

    return X_train, X_test, Y_train, Y_test, Y_train_snr, Y_test_snr, snrs

# Data generator for training
def generate_data(X_train, Y_train, batch_size, num_rows, num_cols, num_mods):
    x = np.zeros((batch_size, num_rows, num_cols, 1))
    y = np.zeros((batch_size, num_mods))
    counter = 0
    for i in range(len(X_train)):
        x[counter, :,:, 0] = X_train[i]
        y[counter, :] = Y_train[i]
        counter += 1
        if (counter == batch_size):
            counter = 0
            yield x,y
    
# Main class for running the neural net model
class Model():

    def __init__(self, sess, num_samples, num_dim, num_mods, batch_size, num_epochs, lr, generate_data):
        self.sess = sess
        self.num_samples = num_samples    # 128 since each input has 128 values
        self.num_dim = num_dim            # 2 since there is I and Q per value
        self.num_mods = num_mods          # Number of modulation schemes
        self.batch_size = batch_size
        self.learning_rate = lr
        self.num_epochs = num_epochs
        self.generate_data = generate_data
        self.build_model()    

        self.saver = tf.train.Saver(max_to_keep=200)

    def build_model(self):
        with tf.variable_scope("LogReg"):
            # create placeholders for datapoints and labels
            self.x = tf.placeholder(tf.float32, (None, self.num_dim, self.num_samples,1), name = 'x')
            tf.summary.histogram('x',self.x)
            print(self.x.get_shape())
            self.dropout_rate = tf.placeholder(tf.float32, name='dropout')
            self.y = tf.placeholder(tf.int32, (None, self.num_mods), name = 'y')
            # Convolution + Relu : 128 filters, size 2*8 , output dimension should be 128 * 121
            self.net0 = tf.layers.conv2d(inputs = self.x, filters=128, kernel_size=[2,8], 
                                    padding="valid", activation = tf.nn.relu, use_bias=False, name='conv0')
            tf.summary.histogram('conv0',self.net0)
            net0_1 = tf.layers.dropout(inputs=self.net0, rate=self.dropout_rate);
	
            # Max Pooling : size 2, stride 2, output dimension should be 128 * 60
            net1 = tf.layers.max_pooling2d(inputs=net0_1, pool_size=[1,2], strides=2, name='maxpool0')

            # Convolution + Relu : 64 filters, size 1 * 16, output dimension should be 64 * 45
            net2 = tf.layers.conv2d(inputs = net1, filters=64, kernel_size=[1,16],
                                    padding="valid", activation=tf.nn.relu, use_bias=False, name='conv1')
            net2_1 = tf.layers.dropout(inputs=net2, rate=self.dropout_rate)
 
            # Max Pooling : size 2, stride 2, output dimension should be 64 * 22
            net3 = tf.layers.max_pooling2d(inputs=net2_1, pool_size=[1,2], strides=2, name='maxpool1')

            # Flatten : Output dimension should be 1408
            net4 = tf.contrib.layers.flatten(inputs=net3)
        
            # FC + Relu : Output dimension should be 128
            net5 = tf.layers.dense(inputs=net4, units=128, activation=tf.nn.relu, name='dense0')
        
            # FC + Relu : Output dimension should be 64
            net6 = tf.layers.dense(inputs=net5, units=64, activation=tf.nn.relu, name='dense1')

            # FC + Relu : Output dimension should be 32
            net7 = tf.layers.dense(inputs=net6, units=32, activation=tf.nn.relu, name='dense2')
            # FC + softmax : Output dimension should be 10
            net8 = tf.layers.dense(inputs=net7, units=self.num_mods, name='dense3')
            # net8_1 = tf.nn.normalize(net8, 1)
            self.prediction = net8
        
            self.xentropy = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(labels=self.y,
                                       logits=net8))
            tf.summary.scalar('xent',self.xentropy)
            self.merged = tf.summary.merge_all()
            self.train_writer = tf.summary.FileWriter('./log/')


    def save_model(self):
        self.saver.save(self.sess, "my-model.ckpt")
        
    def restore_model(self, path):
        self.saver.restore(self.sess, path)

    def train_init(self):
        self.optim = (tf.train.AdamOptimizer(learning_rate = self.learning_rate)
                      .minimize(self.xentropy))
        self.sess.run(tf.global_variables_initializer())

    def train_iter(self, x, y):
        xentropy, _, pred,net0 = self.sess.run([self.xentropy, self.optim, self.prediction, self.net0],
             feed_dict={self.x:x, self.y:y})
        # print('xen: ', xentropy)

    def train(self, X_train, Y_train, X_test, Y_test):
        for i in range(self.num_epochs):
            print("Epoch " + str(i))
            t0 = time.time()
            for x, y in self.generate_data(X_train, Y_train, self.batch_size, 
                                           self.num_dim, self.num_samples, self.num_mods):
                self.train_iter(x,y)
            summary = self.sess.run([self.merged],feed_dict={self.x:x,self.y:y, self.dropout_rate:0.5})
            self.train_writer.add_summary(summary[0])
            self.saver.save(self.sess, "my-model-3/my-model-"+str(i)+".ckpt")
            t1 = time.time()
            total = t1-t0
            print("Time to train 1 epoch: "+str(total))
            # t2 = time.time()
            # acc = self.test(X_test[:10000], Y_test[:10000])
            # t3 = time.time()
            # total = t3-t2
            # print("Time to test "+ str(len(Y_test))+" samples: "+str(total))
            # print("Accuracy: " + str(acc))

    def test(self, X_test, Y_test):
        x = np.zeros(shape=(len(Y_test), self.num_dim, self.num_samples, 1))
        y = np.zeros(shape=(len(Y_test),self.num_mods))
        num_correct = 0
        tot_time = 0
        for i in range(len(X_test)): 
            x[i,:,:,0] = X_test[i]
            y[i,:] = Y_test[i]
        correct_prediction = tf.equal(tf.argmax(self.prediction,1), tf.argmax(self.y, 1))
        accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))
        return (accuracy.eval(feed_dict={self.x :x, self.y:y, self.dropout_rate:0}, session=self.sess))
        
    # find the accuracy at different SNRs
    def snr_accuracy(self,X_test, Y_test, Y_test_snr, snrs):
        # get the index of different snrs
        x_plot = []
        y_plot = []
        my_dict = {}
        for i in range(len(Y_test_snr)):
            if (Y_test_snr[i] in my_dict.keys()):
                my_dict[Y_test_snr[i]].append(i)
            else:
                my_dict[Y_test_snr[i]] = [i]

        for snr in snrs:
             print("snr: "+ str(snr) +" len(snr): "+str(len(my_dict[str(snr)])))
             x = X_test[my_dict[str(snr)]] 
             y = Y_test[my_dict[str(snr)]]
             acc = self.test(x, y)
             print("snr: " , str(snr), " accuracy: ", str(acc))
             x_plot.append(snr)
             y_plot.append(acc)
        np.save('x.npy',np.array(x_plot))
        np.save('y.npy',np.array(y_plot))
        plt.plot(x_plot, y_plot,label='Neural Network')
        plt.plot([-20,18],[0.1,0.1],label='Random Guessing')
        plt.title("Classification accuracy at different SNRs")
        plt.xlabel("Signal to Noise Ratio")
        plt.ylabel("Classification Accuracy")
        plt.show()
        plt.savefig("snr_accuracy_plot.png")
    
    def get_all_layers(self):
        i = 0
        for x in tf.global_variables():
            ret = self.sess.run(x.name)
            print(ret.shape)
            print(ret[0][0][0][0])
            with open("layer_"+str(i), "w") as f:
                f.write(ret)
            i += 1
    def get_layer_conv0(self):
        ret = self.sess.run(tf.global_variables()[0].name)
        print(ret.shape)
        for num_feature_map in range(2):
            with open("conv0_"+str(num_feature_map)+".coe", "w") as f:
                f.write("Radix = 10;\nCoefData = \n")
                for i in range(128):
                    for j in range(8):
                        f.write(str(ret[num_feature_map][j][0][i]))
                        if (i == 127 and j == 7):
                            f.write(";")
                        else:
                            f.write(",")
                    f.write("\n")
                
    
if __name__ == "__main__":
    # X_train, X_test, Y_train, Y_test, Y_train_snr, Y_test_snr, snrs = data_setup("RML2016.10b.dat", 0.9, 10)
    # with open("partitioned_data.pickle","rb") as input_file:
    #     X_train = cPickle.load(input_file)
    #     X_test = cPickle.load(input_file)
    #     Y_train = cPickle.load(input_file)
    #     Y_test = cPickle.load(input_file)
    #    Y_train_snr = cPickle.load(input_file)
    #    Y_test_snr = cPickle.load(input_file)
    #    snrs = cPickle.load(input_file)
    sess = tf.Session()
    cnn = Model(sess, 128, 2, 10, 1024, 100, 0.005, generate_data)
    # cnn.train_init()
    # cnn.train(X_train, Y_train, X_test, Y_test)
    # cnn.save_model()
    cnn.restore_model("my-model-3/my-model-99.ckpt")
    # cnn.snr_accuracy(X_test, Y_test, Y_test_snr, snrs)
    cnn.get_layer_conv0()
    # cnn.get_all_layers()
