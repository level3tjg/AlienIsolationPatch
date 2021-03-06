MODULES = jailed

export TARGET = iphone:clang:latest:13.0

include $(THEOS)/makefiles/common.mk

export ARCHS = arm64

TWEAK_NAME = Isolation

$(TWEAK_NAME)_FILES = Tweak.x fishhook/fishhook.c
$(TWEAK_NAME)_LOGOS_DEFAULT_GENERATOR = internal
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_IPA = Alien_Isolation.ipa
_CODESIGN_IPA = 0

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += GameController
SUBPROJECTS += AVFAudio
include $(THEOS_MAKE_PATH)/aggregate.mk
