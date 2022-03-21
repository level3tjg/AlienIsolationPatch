include $(THEOS)/makefiles/common.mk

THEOS_LIBRARY_PATH = $(THEOS_PROJECT_DIR)/Resources/Frameworks

FRAMEWORK_NAME = AVFAudio

AVFAudio_FILES = AVFAudio.m
AVFAudio_PUBLIC_HEADERS = AVFAudio.h
AVFAudio_CFLAGS = -fobjc-arc
AVFAudio_LDFLAGS = -current_version 1 -compatibility_version 1 -Xlinker -reexport_library ../lib/AVFoundation.framework/Frameworks/AVFAudio.framework/AVFAudio.tbd

include $(THEOS_MAKE_PATH)/framework.mk
