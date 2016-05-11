APP_PLATFORM := android-21
NDK_TOOLCHAIN_VERSION := 4.8
#APP_CPPFLAGS := -O0 -g -frtti -fexceptions -finline-functions -funswitch-loops -fgcse-after-reload -pipe
APP_CPPFLAGS := -O3 -fno-rtti -finline-functions -funswitch-loops -fgcse-after-reload -pipe
#APP_CPPFLAGS := -O0 -pg -fno-omit-frame-pointer -fno-optimize-sibling-calls -frtti -fexceptions -pipe -mfpu=neon
APP_CPPFLAGS += -std=c++11
APP_STL := gnustl_static
#APP_ABI := x86
APP_ABI := armeabi-v7a
#APP_ABI := armeabi-v7a x86
APP_OPTIM := release