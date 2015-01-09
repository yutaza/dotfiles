$(TIG_DIR): $(PLUGINS_GIT_DIR)
	git clone $(TIG_REPO) $@

$(TIG_LAST_BUILD): $(TIG_DIR) $(TIG_VAR_MK)
	@rm -rf $@
	git -C $(TIG_DIR) reset --hard tig-$(TIG_VERSION)
	make --directory=$(TIG_DIR) distclean
	make --directory=$(TIG_DIR) prefix=$(TIG_DIR)
	make --directory=$(TIG_DIR) install prefix=$(TIG_DIR)
	ln -sf $(TIG_DIR)/bin/tig $(BIN_DIR)/tig
	touch $@

.PHONY: tig-build
tig-build: $(TIG_LAST_BUILD)

.PHONY: tig-distclean
tig-distclean:
	@rm -rf $(TIG_DIR)
	@rm -rf $(BIN_DIR)/tig

.PHONY: tig-install
tig-install: $(TIG_DIR)
