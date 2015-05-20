$(VIM_EDITORCONFIG_DIR):
	git clone $(VIM_EDITORCONFIG_REPO) $@

$(VIM_EDITORCONFIG_LAST_BUILD): $(VIM_EDITORCONFIG_DIR) $(VIM_EDITORCONFIG_VAR_MK) $(VIM_AUTOLOAD_DIR) $(VIM_PLUGIN_DIR)
	rm -rf $@
	$(VIM_EDITORCONFIG_GIT_COMMAND) fetch -p
	$(VIM_EDITORCONFIG_GIT_COMMAND) reset --hard $(VIM_EDITORCONFIG_GIT_TAG)
	cp -a $(VIM_EDITORCONFIG_AUTOLOAD_DIR)/* $(VIM_AUTOLOAD_DIR)
	cp -a $(VIM_EDITORCONFIG_PLUGIN_DIR)/* $(VIM_PLUGIN_DIR)
	touch $@

.PHONY: vim-editorconfig-build
vim-editorconfig-build: $(VIM_EDITORCONFIG_LAST_BUILD)

.PHONY: vim-editorconfig-clean
vim-editorconfig-clean:
	rm -rf $(VIM_EDITORCONFIG_LAST_BUILD)

.PHONY: vim-editorconfig-distclean
vim-editorconfig-distclean:
	rm -rf $(VIM_EDITORCONFIG_DIR)

.PHONY: vim-editorconfig-install
vim-editorconfig-install: $(VIM_EDITORCONFIG_DIR)

.PHONY: vim-editorconfig-update
vim-editorconfig-update: vim-editorconfig-clean vim-editorconfig-build
