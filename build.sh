#/bin/bash

ndk_path="/opt/android-ndk/"
platform=$1
abi_version=$2

rm -rf *

if [ "$platform" = "android" ]; then
cmake -DCMAKE_TOOLCHAIN_FILE=${ndk_path}/build/cmake/android.toolchain.cmake  \
        -DANDROID_ABI=${abi_version}  -DANDROID_PLATFORM=25  -DTARGET_PLATFORM=${platform} -DNDK_PATH=${ndk_path} ..
make
else
    cmake -DANDROID_ABI=${abi_version} -DTARGET_PLATFORM=${platform} ..
    make
fi