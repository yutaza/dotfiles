
$(DOTENV_ZSHRC_LOCAL):
	mkdir -p $@

$(DOTENV_ZPROFILE_LOCAL):
	mkdir -p $@

$(HOME)/.%: $(DOTENV_DIR)/%
	ln -s $< $@

.PHONY: dotenv-install
dotenv-install: $(DOTENV_INSTALL_TARGETS) $(DOTENV_ZSHRC_LOCAL) $(DOTENV_ZPROFILE_LOCAL)

.PHONY: dotenv-distclean
dotenv-distclean: $(DOTENV_DISTCLEAN_TARGETS)
	rm -rf $(DOTENV_ZSHRC_LOCAL)
	rm -rf $(DOTENV_ZPROFILE_LOCAL)

.PHONY: dotenv-distclean-%
dotenv-distclean-%:
	rm -rf $(HOME)/.$(subst dotenv-distclean-,,$@)
