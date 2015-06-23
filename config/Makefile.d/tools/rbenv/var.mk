RBENV_DIR = $(HOME)/.rbenv
RBENV_INSTALLER = https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer

DISTCLEAN_TARGETS += rbenv-distclean
INSTALL_TARGETS += rbenv-install
UPDATE_TARGETS += rbenv-update
