$(VAR_PHPENV_DIR):
	git clone $(PHPENV_REPO) $@
	$(VAR_PHPENV_DIR)/bin/phpenv-install.sh

.PHONY: phpenv-distclean
phpenv-distclean:
	@rm -rf $(PHPENV_DIR)
	@rm -rf $(VAR_PHPENV_DIR)

.PHONY: phpenv-install
phpenv-install: $(VAR_PHPENV_DIR)
