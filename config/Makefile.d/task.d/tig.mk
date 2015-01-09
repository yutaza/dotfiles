
$(PLUGINS_GIT_DIR):
	@mkdir -p $(PLUGINS_GIT_DIR)

$(TIG_DIR): $(PLUGINS_GIT_DIR)
	git clone git://github.com/jonas/tig.git $(TIG_DIR)

$(TIG_LAST_BUILD): $(TIG_DIR) $(TIG_VAR_MK)
	@rm -f $@
	$(TIG_BUILD_COMMAND) tig-$(TIG_VERSION)
	touch $@

.PHONY: tig-build
tig-build: $(TIG_LAST_BUILD)

.PHONY: tig-clean
tig-clean:
	@rm -rf $(TIG_DIR)

.PHONY: tig-install
tig-install: $(TIG_DIR)
