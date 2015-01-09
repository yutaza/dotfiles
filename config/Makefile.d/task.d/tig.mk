$(TIG_DIR): $(PLUGINS_GIT_DIR)
	git clone git://github.com/jonas/tig.git $(TIG_DIR)

$(TIG_LAST_BUILD): $(TIG_DIR) $(TIG_VAR_MK)
	@rm -f $@
	$(TIG_BUILD_COMMAND) tig-$(TIG_VERSION)
	touch $@

.PHONY: tig-build
tig-build: $(TIG_LAST_BUILD)

.PHONY: tig-distclean
tig-distclean:
	@rm -rf $(TIG_DIR)
	@rm -rf $(BIN_DIR)/tig

.PHONY: tig-install
tig-install: $(TIG_DIR)
