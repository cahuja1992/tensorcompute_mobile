%module impl
%{
#include "../../../include/label_image.h"
%}

%include "std_string.i"
%include "typemaps.i"

%include "..//include/label_image.h"


%pragma(java) jniclasscode=%{
    static {
        System.loadLibrary("label_image");    
    }
%}