#include <iostream>
#include "label_image.h"

int main(int argc, char **argv){
    ImageClassifier classifier;
    classifier.Init("./mobilenet_quant_v1_224.tflite", "./labels.txt");
    classifier.Predict("./grace_hopper.bmp");
    return 0;
}