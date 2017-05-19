export THEOS_DEVICE_IP = 192.168.2.2
ARCHS = armv7 arm64
TARGET=iphone:latest:5.1


include $(THEOS)/makefiles/common.mk




TWEAK_NAME = wechatJailBreak
wechatJailBreak_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
