TIG_DIR = $(VAR_DIR)/plugins/git/tig

TIG_GIT_COMMAND = git --git-dir=$(TIG_DIR)/.git --work-tree=$(TIG_DIR)
TIG_LAST_BUILD = $(TIG_DIR)/.tig-last-build
TIG_REPO = git://github.com/jonas/tig.git
TIG_TAG_PREFIX = tig-
TIG_TAG_SUFFIX =
TIG_VAR_MK = $(CONFIG_DIR)/Makefile.d/tools/git/tig/var.mk
TIG_VERSION = latest

ifeq ($(TIG_VERSION), latest)
    TIG_GIT_TAG = origin/HEAD
else
    TIG_GIT_TAG = $(TIG_TAG_PREFIX)$(TIG_VERSION)$(TIG_TAG_SUFFIX)
endif

BUILD_TARGETS += tig-build
CLEAN_TARGETS += tig-clean
DISTCLEAN_TARGETS += tig-distclean
INSTALL_TARGETS += tig-install
UPDATE_TARGETS += tig-update
