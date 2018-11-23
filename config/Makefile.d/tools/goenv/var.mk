GOENV_DIR = $(HOME)/.goenv
GOENV_PACKAGES_DIR = $(HOME)/.goenv/packages
GOENV_REPO = git://github.com/syndbg/goenv
GOENV_GO_VERSION = 1.11.2

DISTCLEAN_TARGETS += goenv-distclean
INSTALL_TARGETS += goenv-install
UPDATE_TARGETS += goenv-update
