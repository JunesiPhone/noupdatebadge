export THEOS_DEVICE_IP=192.168.1.7
TARGET = iphone:10.1:10.1
ARCHS = armv7 arm64
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoUpdateBadge
NoUpdateBadge_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Preferences"
