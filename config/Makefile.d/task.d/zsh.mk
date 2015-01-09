$(OH_MY_ZSH_DIR): $(PLUGINS_ZSH_DIR)
	git clone git://github.com/robbyrussell/oh-my-zsh.git $(OH_MY_ZSH_DIR)

$(OH_MY_ZSH_ENV):
	ln -sf $(OH_MY_ZSH_DIR) $(OH_MY_ZSH_ENV)

.PHONY: zsh-clean
zsh-clean:
	@rm -rf $(OH_MY_ZSH_DIR)
	@rm -rf $(OH_MY_ZSH_ENV)

.PHONY: zsh-install
zsh-install: $(OH_MY_ZSH_DIR) $(OH_MY_ZSH_ENV)
