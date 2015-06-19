GOENV_DIR = $(HOME)/.goenv
GOENV_PACKAGES_DIR = $(HOME)/.goenv/packages
GOENV_REPO = git://github.com/wfarr/goenv

DISTCLEAN_TARGETS += goenv-distclean
INSTALL_TARGETS += goenv-install
UPDATE_TARGETS += goenv-update
