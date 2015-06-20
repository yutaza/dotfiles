DOTENV_ZSHRC_LOCAL = $(HOME)/.zshrc-local
DOTENV_ZPROFILE_LOCAL = $(HOME)/.zprofile-local

DOTENV_TARGETS = $(shell find $(DOTENV_DIR)/* -maxdepth 0 | sed 's!^.*/!!')

dotenv_install_target = $(HOME)/.$(strip $(1))
define target_template
    DOTENV_INSTALL_TARGETS += $(call dotenv_install_target, $(1))
    DOTENV_DISTCLEAN_TARGETS += dotenv-distclean-$(strip $(1))
endef
$(foreach target, $(DOTENV_TARGETS), $(eval $(call target_template, $(target))))

DISTCLEAN_TARGETS += dotenv-distclean
INSTALL_TARGETS += dotenv-install
