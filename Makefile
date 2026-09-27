ARCHS = armv7
TARGET = iphone:clang:latest:5.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RobloxServerRedirector
RobloxServerRedirector_FILES = Tweak.xm
RobloxServerRedirector_FRAMEWORKS = Foundation

include $(THEOS_MAKE_PATH)/tweak.mk
