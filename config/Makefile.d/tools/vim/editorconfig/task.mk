$(VIM_EDITORCONFIG_DIR):
	git clone git://github.com/editorconfig/editorconfig-vim.git $@
	mkdir -p $(VIM_AUTOLOAD_DIR)
	mkdir -p $(VIM_PLUGIN_DIR)
	cp -a $(VIM_EDITORCONFIG_DIR)/autoload/* $(VIM_AUTOLOAD_DIR)
	cp -a $(VIM_EDITORCONFIG_DIR)/plugin/* $(VIM_PLUGIN_DIR)

.PHONY: vim-editorconfig-distclean
vim-editorconfig-distclean:
	rm -rf $(VIM_EDITORCONFIG_DIR)

.PHONY: vim-editorconfig-install
vim-editorconfig-install: $(VIM_EDITORCONFIG_DIR)

.PHONY: vim-editorconfig-update
vim-editorconfig-update: $(VIM_EDITORCONFIG_DIR)
	cd $< && git fetch -p && git pull
	cp -a $(VIM_EDITORCONFIG_DIR)/autoload/* $(VIM_AUTOLOAD_DIR)
	cp -a $(VIM_EDITORCONFIG_DIR)/plugin/* $(VIM_PLUGIN_DIR)
