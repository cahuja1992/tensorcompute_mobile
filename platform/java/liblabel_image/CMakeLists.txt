cmake_minimum_required(VERSION 3.4.1)

add_library(label_image-lib
            SHARED
            IMPORTED )

set_target_properties(label_image-lib
            PROPERTIES
            IMPORTED_LOCATION
            ${CMAKE_CURRENT_SOURCE_DIR}/libs/${ANDROID_ABI}/liblabel_image.a
            ${CMAKE_CURRENT_SOURCE_DIR}/libs/${ANDROID_ABI}/libbitmap_helper.a
)

# find_library(log-lib log)

# add_library(label_image-jni SHARED
#     ../jni/sns_nlu_visteon_wrap.cpp 
# )

# target_link_libraries(label_image-jni 
#     label_image-lib
#     ${log-lib} 
# )