$(OH_MY_ZSH_DIR):
	git clone $(OH_MY_ZSH_REPO) $@

.PHONY: oh-my-zsh-build
oh-my-zsh-build: $(OH_MY_ZSH_DIR)

.PHONY: oh-my-zsh-distclean
oh-my-zsh-distclean:
	rm -rf $(OH_MY_ZSH_DIR)
