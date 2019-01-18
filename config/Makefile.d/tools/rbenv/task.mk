$(RBENV_DIR):
	git clone $(RBENV_REPO) $@

.PHONY: rbenv-distclean
rbenv-distclean:
	rm -rf $(RBENV_DIR)

.PHONY: rbenv-install
rbenv-install: $(RBENV_DIR)

.PHONY: rbenv-update
rbenv-update: $(RBENV_DIR)
	cd $< && git fetch -p && git pull
