TARGET := iphone:clang:latest:11.0
INSTALL_TARGET_PROCESSES = YouTubeMusic
ARCHS = arm64
PACKAGE_VERSION = 1.0.2

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMABConfig

$(TWEAK_NAME)_FILES = Settings.x Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -DTWEAK_VERSION=$(PACKAGE_VERSION)
$(TWEAK_NAME)_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
