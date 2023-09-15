NODENV_DIR = ~/.nodenv
NODENV_PLUGIN_DIR = $(NODENV_DIR)/plugins

NODENV = $(NODENV_DIR)/bin/nodenv
NODENV_REPO = git@github.com:nodenv/nodenv.git

NODE_BUILD_DIR = $(NODENV_PLUGIN_DIR)/node-build
NODE_BUILD_REPO = git@github.com:nodenv/node-build.git

INSTALL_TARGETS += nodenv-install
UPDATE_TARGETS += nodenv-update
