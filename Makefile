
PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

APP_NAME=frequalizer

APP_BUILD_DIR=$(PWD)
APP_SRC_DIR=$(PWD)/external/Frequalizer

APP_SHARED_CODE_LIBS="frequalizer_artefacts/lib$(APP_NAME)_SharedCode.a Resources/libfrequalizer_binary.a"

METADATA_GENERATOR_EXTRA_LDFLAGS=-lGL

APP_ICON=$(APP_SRC_DIR)/Resources/Logo-FF.png

PATCH_FILE=$(PWD)/aap-juce-support.patch
PATCH_DEPTH=1

# Upstream fetches JUCE via CMake FetchContent; aap-juce-support.patch
# rewrites that to CPMAddPackage, which applies all the JUCE patches as part
# of the population (into CPM_SOURCE_CACHE, passed by app/build.gradle).
BUILD_USES_FETCHCONTENT=1


include $(AAP_JUCE_DIR)/Makefile.cmake-common
