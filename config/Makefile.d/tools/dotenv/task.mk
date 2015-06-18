.PHONY: $(HOME)/.%
$(HOME)/.%: $(DOTENV_DIR)/%
	ln -s $< $@

.PHONY: dotenv-install
dotenv-install: $(DOTENV_INSTALL_TARGETS)

.PHONY: dotenv-distclean
dotenv-distclean: $(DOTENV_DISTCLEAN_TARGETS)

.PHONY: dotenv-distclean-%
dotenv-distclean-%:
	rm -rf $(HOME)/.$(subst dotenv-distclean-,,$@)
