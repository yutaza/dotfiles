$(OH_MY_ZSH_DIR):
	git clone $(OH_MY_ZSH_REPO) $@

.PHONY: oh-my-zsh-distclean
oh-my-zsh-distclean:
	rm -rf $(OH_MY_ZSH_DIR)

.PHONY: oh-my-zsh-install
oh-my-zsh-install: $(OH_MY_ZSH_DIR)

.PHONY: oh-my-zsh-update
oh-my-zsh-update: $(OH_MY_ZSH_DIR)
	cd $< && git fetch -p && git pull
