$(HOMEBREW_DIR): $(PLUGINS_VIM_DIR)
	git clone $(HOMEBREW_REPO) $@

#TODO: check update
$(HOMEBREW_LAST_BUILD): $(HOMEBREW_DIR) $(HOMEBREW_VAR_MK)
	$(RM) $@
	$(HOMEBREW_GIT_COMMAND) fetch -p
	$(HOMEBREW_GIT_COMMAND) reset --hard $(HOMEBREW_GIT_TAG)
	$(XLN) $(HOMEBREW_VAR_BIN) $(HOMEBREW_BIN)
	touch $@

.PHONY: homebrew-build
homebrew-build: $(HOMEBREW_LAST_BUILD)

.PHONY: homebrew-clean
homebrew-clean:
	$(RM) $(HOMEBREW_LAST_BUILD)
	$(RM) $(HOMEBREW_BIN)

.PHONY: homebrew-distclean
homebrew-distclean:
	$(RM) $(HOMEBREW_DIR)

.PHONY: homebrew-install
homebrew-install: $(HOMEBREW_DIR)

.PHONY: homebrew-update
homebrew-update: homebrew-clean homebrew-build
