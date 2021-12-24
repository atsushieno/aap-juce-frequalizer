
PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

APP_NAME=Frequalizer

APP_BUILD_DIR=$(PWD)
APP_SRC_DIR=$(PWD)/external/Frequalizer
JUCE_DIR=$(PWD)/external/Frequalizer/External/JUCE

# There are slight case sensitivity glicthes specific to [Ff]requalizer...
APP_SHARED_CODE_LIBS="frequalizer_artefacts/lib$(APP_NAME)_SharedCode.a Resources/libfrequalizer_binary.a"

METADATA_GENERATOR_EXTRA_LDFLAGS=-lGL

PATCH_FILE=aap-support.patch
PATCH_DEPTH=1

include $(AAP_JUCE_DIR)/Makefile.cmake-common
