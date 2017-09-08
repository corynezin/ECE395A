# Name: Cory Nezin
# Date: 09/08/2017
# Goal: Create an iterator for a given TFRecords file

import tensorflow as tf

def get_iterator():
  filename = tf.placeholder(tf.string, shape = [None])
  dataset = tf.contrib.data.TFRecordDataset(filename)

  def _parse(b):
    mean = tf.constant(128,'float32')
    t = tf.decode_raw(b,out_type=tf.uint8)
    label = tf.cast(t[-1],'int32')
    image = tf.reshape(
    tf.divide(tf.subtract(tf.cast(t[0:-1],'float32'),mean),mean),
    [28,28,1])
    return({'label':label,'image':image})

  dataset = dataset.map(_parse)
  dataset = dataset.shuffle(buffer_size=10000)
  dataset = dataset.batch(64)
  iterator = dataset.make_initializable_iterator()

  return(filename,dataset,iterator)

# Example Usage:
# with tf.Session() as sess:
#   sess.run(iterator.initializer, feed_dict={filename:[training_filename]})
#   for n in range(100):
#     dic = sess.run(next_example)
#     print(dic['label'])
