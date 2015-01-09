$(EDITORCONFIG_DIR): $(PLUGINS_VIM_DIR)
	git clone $(EDITORCONFIG_REPO) $@

$(EDITORCONFIG_LAST_BUILD): $(EDITORCONFIG_DIR) $(EDITORCONFIG_VAR_MK)
	@rm -rf $@
	git -C $(EDITORCONFIG_DIR) reset --hard v$(EDITORCONFIG_VERSION)
	touch $@

.PHONY: editorconfig-build
editorconfig-build: $(EDITORCONFIG_LAST_BUILD)

.PHONY: editorconfig-distclean
editorconfig-distclean:
	@rm -rf $(EDITORCONFIG_DIR)

.PHONY: editorconfig-install
editorconfig-install: $(EDITORCONFIG_DIR)
