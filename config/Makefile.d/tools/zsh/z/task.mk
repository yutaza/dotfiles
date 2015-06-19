$(Z_ZSH_DIR):
	git clone $(Z_ZSH_REPO) $@

.PHONY: z-zsh-distclean
z-zsh-distclean:
	rm -rf $(Z_ZSH_DIR)

.PHONY: z-zsh-install
z-zsh-install: $(Z_ZSH_DIR)

.PHONY: z-zsh-update
z-zsh-update: $(Z_ZSH_DIR)
	cd $< && git fetch -p && git pull
