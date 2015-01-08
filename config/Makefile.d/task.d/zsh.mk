
$(ZSH_DIR):
	@mkdir -p $(ZSH_DIR)

$(OH_MY_ZSH): $(ZSH_DIR)
	git clone git://github.com/robbyrussell/oh-my-zsh.git $(ZSH_DIR)/oh-my-zsh

.PHONY: zsh-clean
zsh-clean:
	@rm -rf $(ZSH_DIR)

.PHONY: zsh-install
zsh-install: $(OH_MY_ZSH)
