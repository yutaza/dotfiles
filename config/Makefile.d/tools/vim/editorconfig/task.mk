$(EDITORCONFIG_DIR):
	git clone $(EDITORCONFIG_REPO) $@

$(EDITORCONFIG_AUTOLOAD_DIR): $(VIM_AUTOLOAD_DIR)
	$(XLN) $@ $<

$(EDITORCONFIG_PLUGIN_DIR): $(VIM_PLUGIN_DIR)
	$(XLN) $@ $<

$(EDITORCONFIG_LAST_BUILD): $(EDITORCONFIG_DIR) $(EDITORCONFIG_VAR_MK) $(EDITORCONFIG_AUTOLOAD_DIR) $(EDITORCONFIG_PLUGIN_DIR)
	rm -rf $@
	$(EDITORCONFIG_GIT_COMMAND) fetch -p
	$(EDITORCONFIG_GIT_COMMAND) reset --hard $(EDITORCONFIG_GIT_TAG)
	touch $@

.PHONY: editorconfig-build
editorconfig-build: $(EDITORCONFIG_LAST_BUILD)

.PHONY: editorconfig-clean
editorconfig-clean:
	rm -rf $(EDITORCONFIG_LAST_BUILD)

.PHONY: editorconfig-distclean
editorconfig-distclean:
	rm -rf $(EDITORCONFIG_DIR)

.PHONY: editorconfig-install
editorconfig-install: $(EDITORCONFIG_DIR)

.PHONY: editorconfig-update
editorconfig-update: editorconfig-clean editorconfig-build
