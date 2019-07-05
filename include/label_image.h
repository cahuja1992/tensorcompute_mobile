#ifndef TENSORFLOW_LITE_EXAMPLES_LABEL_IMAGE_LABEL_IMAGE_H_
#define TENSORFLOW_LITE_EXAMPLES_LABEL_IMAGE_LABEL_IMAGE_H_

#include <string>

class ImageClassifier{
  public:
    void Init(std::string model_name, std::string labels_file_name);
    void Predict(std::string image_path);
};

#endif  // TENSORFLOW_LITE_EXAMPLES_LABEL_IMAGE_LABEL_IMAGE_H_
