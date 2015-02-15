ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = OpenMeme
OpenMeme_FILES = Tweak.xm
OpenMeme_FRAMEWORKS = AVFoundation
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
