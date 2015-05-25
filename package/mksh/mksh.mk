################################################################################
#
# mksh
#
################################################################################

MKSH_VERSION = 50f
MKSH_SOURCE = mksh-R$(MKSH_VERSION).tgz
MKSH_SITE = https://www.mirbsd.org/MirOS/dist/mir/mksh/
MKSH_LICENSE = miros license

define MKSH_BUILD_CMDS
	(cd $(@D); CC="$(TARGET_CC)" CFLAGS="$(TARGET_CFLAGS)" sh ./Build.sh)
endef

define MKSH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/mksh $(TARGET_DIR)/bin/mksh	
endef

$(eval $(generic-package))
