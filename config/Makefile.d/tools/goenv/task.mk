$(GOENV_DIR):
	git clone $(GOENV_REPO) $@
	mkdir -p $(GOENV_PACKAGES_DIR)/bin

.PHONY: goenv-distclean
goenv-distclean:
	rm -rf $(GOENV_DIR)

.PHONY: goenv-install
goenv-install: $(GOENV_DIR)

.PHONY: goenv-update
goenv-update: $(GOENV_DIR)
	cd $< && git fetch -p && git pull
