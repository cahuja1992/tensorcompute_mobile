/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.12
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.chiragahuja.imageclassification.app.jni;

public class implJNI {
  public final static native void ImageClassifier_Init(long jarg1, ImageClassifier jarg1_, String jarg2, String jarg3);
  public final static native void ImageClassifier_Predict(long jarg1, ImageClassifier jarg1_, String jarg2);
  public final static native long new_ImageClassifier();
  public final static native void delete_ImageClassifier(long jarg1);

    static {
        System.loadLibrary("label_image");    
    }

}
