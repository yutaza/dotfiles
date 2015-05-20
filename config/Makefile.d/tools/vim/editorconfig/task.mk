$(VIM_EDITORCONFIG_DIR):
	git clone $(VIM_EDITORCONFIG_REPO) $@

$(VIM_EDITORCONFIG_AUTOLOAD_DIR): $(VIM_AUTOLOAD_DIR)
	$(XLN) $@ $<

$(VIM_EDITORCONFIG_PLUGIN_DIR): $(VIM_PLUGIN_DIR)
	$(XLN) $@ $<

$(VIM_EDITORCONFIG_LAST_BUILD): $(VIM_EDITORCONFIG_DIR) $(VIM_EDITORCONFIG_VAR_MK) $(VIM_EDITORCONFIG_AUTOLOAD_DIR) $(VIM_EDITORCONFIG_PLUGIN_DIR)
	rm -rf $@
	$(VIM_EDITORCONFIG_GIT_COMMAND) fetch -p
	$(VIM_EDITORCONFIG_GIT_COMMAND) reset --hard $(VIM_EDITORCONFIG_GIT_TAG)
	touch $@

.PHONY: vim_editorconfig-build
vim_editorconfig-build: $(VIM_EDITORCONFIG_LAST_BUILD)

.PHONY: vim_editorconfig-clean
vim_editorconfig-clean:
	rm -rf $(VIM_EDITORCONFIG_LAST_BUILD)

.PHONY: vim_editorconfig-distclean
vim_editorconfig-distclean:
	rm -rf $(VIM_EDITORCONFIG_DIR)

.PHONY: vim_editorconfig-install
vim_editorconfig-install: $(VIM_EDITORCONFIG_DIR)

.PHONY: vim_editorconfig-update
vim_editorconfig-update: vim_editorconfig-clean vim_editorconfig-build
