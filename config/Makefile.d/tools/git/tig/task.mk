$(TIG_DIR):
	git clone $(TIG_REPO) $@

$(TIG_LAST_BUILD): $(TIG_DIR) $(TIG_VAR_MK)
	rm -rf $@
	$(TIG_GIT_COMMAND) fetch -p
	$(TIG_GIT_COMMAND) reset --hard $(TIG_GIT_TAG)
	make --directory=$(TIG_DIR) distclean
	make --directory=$(TIG_DIR) prefix=$(TIG_DIR)
	make --directory=$(TIG_DIR) install prefix=$(TIG_DIR)
	touch $@

.PHONY: tig-build
tig-build: $(TIG_LAST_BUILD)

.PHONY: tig-clean
tig-clean:
	rm -rf $(TIG_LAST_BUILD)

.PHONY: tig-distclean
tig-distclean:
	rm -rf $(TIG_DIR)

.PHONY: tig-install
tig-install: $(TIG_DIR)

.PHONY: tig-update
tig-update: tig-clean tig-build
