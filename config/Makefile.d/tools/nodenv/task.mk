$(NODENV_DIR):
	git clone $(NODENV_REPO) $@

$(NODE_BUILD_DIR):
	git clone $(NODE_BUILD_REPO) $@

.PHONY: nodenv-install
nodenv-install: $(NODENV_DIR) $(NODE_BUILD_DIR)

.PHONY: ndenv-update
nodenv-update:
	cd $(NODENV_DIR) && git fetch -p && git pull
	cd $(NODE_BUILD_DIR) && git fetch -p && git pull
