include $(THEOS)/makefiles/common.mk

THEOS_LIBRARY_PATH = $(THEOS_PROJECT_DIR)/Resources/Frameworks

FRAMEWORK_NAME = GameController

GameController_FILES = GameController.m
GameController_PUBLIC_HEADERS = GameController.h
GameController_CFLAGS = -fobjc-arc
GameController_LDFLAGS = -current_version 1 -compatibility_version 1 -Xlinker -reexport_library ../lib/GameController.framework/GameController.tbd

include $(THEOS_MAKE_PATH)/framework.mk