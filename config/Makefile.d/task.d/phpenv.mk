$(VAR_PHPENV_DIR):
	git clone $(PHPENV_REPO) $@
	$(VAR_PHPENV_DIR)/bin/phpenv-install.sh

$(PHP_BUILD_DIR):
	git clone $(PHP_BUILD_REPO) $@

.PHONY: phpenv-distclean
phpenv-distclean:
	@rm -rf $(PHPENV_DIR)
	@rm -rf $(VAR_PHPENV_DIR)

.PHONY: phpenv-install
phpenv-install: $(VAR_PHPENV_DIR) $(PHP_BUILD_DIR)