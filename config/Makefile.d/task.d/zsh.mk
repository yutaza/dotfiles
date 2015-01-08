$(ZSH_DIR):
	@mkdir -p $(ZSH_DIR)

$(OH_MY_ZSH): $(ZSH_DIR)
	git clone git://github.com/robbyrussell/oh-my-zsh.git $(OH_MY_ZSH)

$(DOT_OH_MY_ZSH):
	ln -sf $(OH_MY_ZSH) $(DOT_OH_MY_ZSH)

.PHONY: zsh-clean
zsh-clean:
	@rm -rf $(OH_MY_ZSH)
	@rm -rf $(DOT_OH_MY_ZSH)

.PHONY: zsh-install
zsh-install: $(OH_MY_ZSH) $(DOT_OH_MY_ZSH)

.PHONY: zsh-update
zsh-update: zsh-install
	cd $(OH_MY_ZSH)
	git pull
