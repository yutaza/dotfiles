TIG_DIR = $(PLUGINS_GIT_DIR)/tig
TIG_BIN = $(BIN_DIR)/tig
TIG_VAR_BIN = $(TIG_DIR)/bin/tig

TIG_GIT_COMMAND = git -C $(TIG_DIR)
TIG_LAST_BUILD = $(TIG_DIR)/.tig-last-build
TIG_REPO = git://github.com/jonas/tig.git
TIG_TAG_PREFIX = tig-
TIG_TAG_SUFFIX =
TIG_VAR_MK = $(MAKEFILE_VAR_DIR)/tig.mk
TIG_VERSION = latest

ifeq ($(TIG_VERSION), latest)
    TIG_GIT_TAG = origin/HEAD
else
    TIG_GIT_TAG = $(TIG_TAG_PREFIX)$(TIG_VERSION)$(TIG_TAG_SUFFIX)
endif
