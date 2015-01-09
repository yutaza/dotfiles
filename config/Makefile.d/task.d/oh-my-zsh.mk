$(OH_MY_ZSH_DIR): $(PLUGINS_ZSH_DIR)
	git clone git://github.com/robbyrussell/oh-my-zsh.git $(OH_MY_ZSH_DIR)

$(OH_MY_ZSH_ENV):
	ln -sf $(OH_MY_ZSH_DIR) $(OH_MY_ZSH_ENV)

.PHONY: oh-my-zsh-distclean
oh-my-zsh-distclean:
	@rm -rf $(OH_MY_ZSH_DIR)
	@rm -rf $(OH_MY_ZSH_ENV)

.PHONY: oh-my-zsh-install
oh-my-zsh-install: $(OH_MY_ZSH_DIR) $(OH_MY_ZSH_ENV)
