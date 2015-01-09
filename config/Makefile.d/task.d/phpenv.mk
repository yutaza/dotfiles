$(PHPENV_DIR):
	git clone $(PHPENV_REPO) $@
	$(PHPENV_DIR)/bin/phpenv-install.sh

.PHONY: phpenv-install
phpenv-install: $(PHPENV_DIR)
