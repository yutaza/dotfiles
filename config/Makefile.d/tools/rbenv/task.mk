$(RBENV_DIR):
	git clone $(RBENV_REPO) $@

$(RBENV_BUILD_DIR):
	git clone $(RBENV_BUILD_REPO) $@

.PHONY: rbenv-distclean
rbenv-distclean:
	rm -rf $(RBENV_DIR)

.PHONY: rbenv-install
rbenv-install: $(RBENV_DIR) $(RBENV_BUILD_DIR)

.PHONY: rbenv-update
rbenv-update: $(RBENV_DIR) $(RBENV_BUILD_DIR)
	cd $(RBENV_DIR) && git fetch -p && git pull
	cd $(RBENV_BUILD_DIR) && git fetch -p && git pull
