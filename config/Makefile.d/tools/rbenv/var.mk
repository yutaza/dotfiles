RBENV_DIR = $(HOME)/.rbenv
RBENV_REPO = git://github.com/rbenv/rbenv
RBENV_BUILD_DIR = $(RBENV_DIR)/plugins/ruby-build
RBENV_BUILD_REPO = git://github.com/rbenv/ruby-build

DISTCLEAN_TARGETS += rbenv-distclean
INSTALL_TARGETS += rbenv-install
UPDATE_TARGETS += rbenv-update
