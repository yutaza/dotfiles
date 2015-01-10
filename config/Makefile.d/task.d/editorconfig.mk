$(EDITORCONFIG_DIR): $(PLUGINS_VIM_DIR)
	git clone $(EDITORCONFIG_REPO) $@

$(EDITORCONFIG_AUTOLOAD_DIR): $(VIM_AUTOLOAD_DIR)
	$(XLN) $@ $<

$(EDITORCONFIG_PLUGIN_DIR): $(VIM_PLUGIN_DIR)
	$(XLN) $@ $<

#TODO: check update
$(EDITORCONFIG_LAST_BUILD): $(EDITORCONFIG_DIR) $(EDITORCONFIG_VAR_MK) $(EDITORCONFIG_AUTOLOAD_DIR) $(EDITORCONFIG_PLUGIN_DIR)
	$(RM) $@
	$(EDITORCONFIG_GIT_COMMAND) fetch -p
	$(EDITORCONFIG_GIT_COMMAND) reset --hard $(EDITORCONFIG_GIT_TAG)
	touch $@

.PHONY: editorconfig-build
editorconfig-build: $(EDITORCONFIG_LAST_BUILD)

.PHONY: editorconfig-clean
editorconfig-clean:
	$(RM) $(EDITORCONFIG_LAST_BUILD)
	$(RM) $(VIM_AUTOLOAD_DIR)
	$(RM) $(VIM_PLUGIN_DIR)

.PHONY: editorconfig-distclean
editorconfig-distclean:
	$(RM) $(EDITORCONFIG_DIR)

.PHONY: editorconfig-install
editorconfig-install: $(EDITORCONFIG_DIR)

.PHONY: editorconfig-update
editorconfig-update: editorconfig-clean editorconfig-build
