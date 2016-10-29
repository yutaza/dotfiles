$(GIT_TIG_DIR):
	git clone $(GIT_TIG_REPO) $@
	make --directory=$(GIT_TIG_DIR) distclean
	make --directory=$(GIT_TIG_DIR) configure
	cd $(GIT_TIG_DIR) && ./configure --prefix=$(GIT_TIG_DIR)
	make --directory=$(GIT_TIG_DIR)
	make install --directory=$(GIT_TIG_DIR)

.PHONY: git-tig-distclean
git-tig-distclean:
	rm -rf $(GIT_TIG_DIR)

.PHONY: git-tig-install
git-tig-install: $(GIT_TIG_DIR)

.PHONY: git-tig-update
git-tig-update: $(GIT_TIG_DIR)
	cd $< && git fetch -p && git pull
	make --directory=$(GIT_TIG_DIR) distclean
	make --directory=$(GIT_TIG_DIR) configure
	cd $(GIT_TIG_DIR) && ./configure --prefix=$(GIT_TIG_DIR)
	make --directory=$(GIT_TIG_DIR)
	make install --directory=$(GIT_TIG_DIR)
