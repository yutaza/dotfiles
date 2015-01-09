TOP_DIR = $(shell pwd)
BIN_DIR = $(TOP_DIR)/bin
CONFIG_DIR = $(TOP_DIR)/config
DATA_DIR = $(TOP_DIR)/data
DOTENV_DIR = $(TOP_DIR)/dotenv
VAR_DIR = $(TOP_DIR)/var

PLUGINS_DIR = $(VAR_DIR)/plugins

MAKEFILE_DIR = $(CONFIG_DIR)/Makefile.d
MAKEFILE_VAR_DIR = $(MAKEFILE_DIR)/var.d
MAKEFILE_REGISTER_DIR = $(MAKEFILE_DIR)/register.d
MAKEFILE_TASK_DIR = $(MAKEFILE_DIR)/task.d

ALL_TARGETS += build
BUILD_TARGETS += initialize
CLEAN_TARGETS +=
DISTCLEAN_TARGETS += clean
INITIALIZE_TARGETS += install
INSTALL_TARGETS +=
UPDATE_TARGETS +=
