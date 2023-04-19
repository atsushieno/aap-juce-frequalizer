
PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

APP_NAME=frequalizer

APP_BUILD_DIR=$(PWD)
APP_SRC_DIR=$(PWD)/external/Frequalizer
JUCE_DIR=$(PWD)/external/Frequalizer/External/JUCE

APP_SHARED_CODE_LIBS="frequalizer_artefacts/lib$(APP_NAME)_SharedCode.a Resources/libfrequalizer_binary.a"

METADATA_GENERATOR_EXTRA_LDFLAGS=-lGL

PATCH_FILE=$(PWD)/aap-juce-support.patch
PATCH_DEPTH=1

include $(AAP_JUCE_DIR)/Makefile.cmake-common
