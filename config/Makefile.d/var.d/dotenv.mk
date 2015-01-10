DOTENV_TARGETS = $(shell find $(DOTENV_DIR)/* -maxdepth 0 | sed 's!^.*/!!')

dotenv_build_target = $(HOME)/.$(strip $(1))
define target_template
    DOTENV_BUILD_TARGETS += $(call dotenv_build_target, $(1))
    DOTENV_DISTCLEAN_TARGETS += dotenv-distclean-$(strip $(1))
endef
$(foreach target, $(DOTENV_TARGETS), $(eval $(call target_template, $(target))))
