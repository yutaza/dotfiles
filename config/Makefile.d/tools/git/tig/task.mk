$(TIG_DIR):
	git clone $(TIG_REPO) $@
	make --directory=$(TIG_DIR) distclean
	make --directory=$(TIG_DIR) configure
	cd $(TIG_DIR) && ./configure --prefix=$(TIG_DIR)
	make --directory=$(TIG_DIR)
	make --directory=$(TIG_DIR)

.PHONY: tig-distclean
tig-distclean:
	rm -rf $(TIG_DIR)

.PHONY: tig-install
tig-install: $(TIG_DIR)

.PHONY: tig-update
tig-update: $(TIG_DIR)
	cd $< && git fetch -p && git pull
	make --directory=$(TIG_DIR) distclean
	make --directory=$(TIG_DIR) configure
	cd $(TIG_DIR) && ./configure --prefix=$(TIG_DIR)
	make --directory=$(TIG_DIR)
	make --directory=$(TIG_DIR)
