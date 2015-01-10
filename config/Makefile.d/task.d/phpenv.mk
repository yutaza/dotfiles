$(PHPENV_DIR):
	$(PHPENV_INSTALL_COMMAND)

$(PHP_BUILD_DIR):
	git clone $(PHP_BUILD_REPO) $@

.PHONY: phpenv-distclean
phpenv-distclean:
	$(RM) $(PHPENV_DIR)

.PHONY: phpenv-install
phpenv-install: $(PHPENV_DIR) $(PHP_BUILD_DIR)
