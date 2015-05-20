$(VIM_AUTOLOAD_DIR):
	mkdir -p $@

$(VIM_PLUGIN_DIR):
	mkdir -p $@

.PHONY: vim-distclean
vim-distclean:
	rm -rf $(VIM_AUTOLOAD_DIR)
	rm -rf $(VIM_PLUGIN_DIR)
