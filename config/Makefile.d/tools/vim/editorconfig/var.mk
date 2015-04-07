EDITORCONFIG_DIR = $(VAR_DIR)/plugins/vim/editorconfig-vim

#FIXME
EDITORCONFIG_AUTOLOAD_DIR = $(EDITORCONFIG_DIR)/autoload
EDITORCONFIG_PLUGIN_DIR = $(EDITORCONFIG_DIR)/plugin

EDITORCONFIG_GIT_COMMAND = git --git-dir=$(EDITORCONFIG_DIR)/.git --work-tree=$(EDITORCONFIG_DIR)
EDITORCONFIG_LAST_BUILD = $(EDITORCONFIG_DIR)/.editorconfig-last-build
EDITORCONFIG_REPO = git://github.com/editorconfig/editorconfig-vim.git
EDITORCONFIG_TAG_PREFIX = v
EDITORCONFIG_TAG_SUFFIX =
EDITORCONFIG_VAR_MK = $(CONFIG_DIR)/Makefile.d/tools/vim/editorconfig/var.mk
EDITORCONFIG_VERSION = latest

ifeq ($(EDITORCONFIG_VERSION), latest)
    EDITORCONFIG_GIT_TAG = origin/HEAD
else
    EDITORCONFIG_GIT_TAG = $(EDITORCONFIG_TAG_PREFIX)$(EDITORCONFIG_VERSION)$(EDITORCONFIG_TAG_SUFFIX)
endif

BUILD_TARGETS += editorconfig-build
CLEAN_TARGETS += editorconfig-clean
DISTCLEAN_TARGETS += editorconfig-distclean
INSTALL_TARGETS += editorconfig-install
UPDATE_TARGETS += editorconfig-update
