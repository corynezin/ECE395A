/*
 * convnet.h
 *
 *  Created on: Dec 8, 2017
 *      Author: brenda
 */

#ifndef SRC_CONVNET_H_
#define SRC_CONVNET_H_


#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#define NUM_SAMPLES 128	// 128 IQ samples
void conv(unsigned int stage, int input_width, unsigned int input_height);
void maxpool(unsigned int input_width, unsigned int input_height);
void flatten(unsigned int num_rows, unsigned int num_cols);
void fully_connected(unsigned int stage, unsigned int input_size);
unsigned int argmax(unsigned int num_classes);
unsigned int maia(float scaled_sample[NUM_SAMPLES][2]);

#endif /* SRC_CONVNET_H_ */
