.PHONY: $(HOME)/.%
$(HOME)/.%: $(DOTENV_DIR)/%
	$(XLN) $< $@

.PHONY: dotenv-build
dotenv-build: $(DOTENV_BUILD_TARGETS)

.PHONY: dotenv-distclean
dotenv-distclean: $(DOTENV_DISTCLEAN_TARGETS)

.PHONY: dotenv-distclean-%
dotenv-distclean-%:
	$(RM) $(HOME)/.$(subst dotenv-distclean-,,$@)
