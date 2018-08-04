include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CleanMessages
CleanMessages_FILES = Tweak.xm
BUNDLE_NAME = CleanMessagesBundle

CleanMessagesBundle_INSTALL_PATH = /Library/Application Support/CleanMessages

include $(THEOS_MAKE_PATH)/bundle.mk
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileSMS"
