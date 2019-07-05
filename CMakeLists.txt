cmake_minimum_required(VERSION 3.6 FATAL_ERROR)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/")

add_executable(image_classifier
    src/main.cpp
)

# find_library(log-lib log)

target_link_libraries(image_classifier 
  ${CMAKE_CURRENT_SOURCE_DIR}/libs/${ANDROID_ABI}/${TARGET_PLATFORM}/liblabel_image.so
  ${CMAKE_CURRENT_SOURCE_DIR}/libs/${ANDROID_ABI}/${TARGET_PLATFORM}/libbitmap_helpers.a
  log
  EGL
  GLESv3
)

target_include_directories(image_classifier PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}/include/  
)



# if (LINUX)
#     INSTALL(TARGETS sns-nlu-visteon DESTINATION ${CMAKE_BINARY_DIR}/x86_64)
# endif (LINUX)

# if (ANDROID)
#     INSTALL(TARGETS sns-nlu-visteon DESTINATION ${CMAKE_BINARY_DIR}/${ANDROID_ABI})
# endif (ANDROID)
