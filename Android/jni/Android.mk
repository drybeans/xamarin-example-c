LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := LibraryTest

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_SRC_FILES := \
	Source.cpp

#LOCAL_CFLAGS := 
#LOCAL_SHARED_LIBRARIES := #
#LOCAL_STATIC_LIBRARIES := liblzma libjsoncpp libpugixml libilbc
#LOCAL_LDLIBS := -llog -ljnigraphics -lGLESv2 -lz

include $(BUILD_SHARED_LIBRARY)