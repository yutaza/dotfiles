$(EDITORCONFIG_DIR): $(PLUGINS_VIM_DIR)
	git clone $(EDITORCONFIG_REPO) $@

#TODO: check update
$(EDITORCONFIG_LAST_BUILD): $(EDITORCONFIG_DIR) $(EDITORCONFIG_VAR_MK)
	$(RM) $@
	$(EDITORCONFIG_GIT_COMMAND) fetch -p
	$(EDITORCONFIG_GIT_COMMAND) reset --hard $(EDITORCONFIG_GIT_TAG)
	touch $@

.PHONY: editorconfig-build
editorconfig-build: $(EDITORCONFIG_LAST_BUILD)

.PHONY: editorconfig-clean
editorconfig-clean:
	$(RM) $(EDITORCONFIG_LAST_BUILD)

.PHONY: editorconfig-distclean
editorconfig-distclean:
	$(RM) $(EDITORCONFIG_DIR)

.PHONY: editorconfig-install
editorconfig-install: $(EDITORCONFIG_DIR)

.PHONY: editorconfig-update
editorconfig-update: editorconfig-clean editorconfig-update
