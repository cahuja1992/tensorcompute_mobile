.PHONY: clean apk-clean apk

ARCHS := $(shell grep 'ABI_FILTERS' libsns-nlu-visteon/gradle.properties | cut -d'=' -f2 | sed -e 's/;/ /g')

clean: 
	rm -rf *.java jni/sns_nlu_visteon_wrap.cpp

jar-clean:
	./gradlew clean

libsns-nlu-visteon/libs/%/libsns-nlu-visteon.so:
	-mkdir libsns-nlu-visteon/libs/$*/
	cp ../../build/$*/libsns-nlu-visteon.so libsns-nlu-visteon/libs/$*/

jar: jar-clean bindings $(patsubst %,libsns-nlu-visteon/libs/%/libsns-nlu-visteon.so,$(ARCHS))
	./gradlew build

bindings: clean
	swig -c++ -java -package com.visteon.sns.nlu -outdir libsns-nlu-visteon/src/main/java/com/visteon/sns/nlu/ -o jni/sns_nlu_visteon_wrap.cpp jni/sns-nlu-visteon.i
