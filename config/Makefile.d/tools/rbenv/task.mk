$(RBENV_DIR):
	curl $(RBENV_INSTALLER) | bash

.PHONY: rbenv-distclean
rbenv-distclean:
	rm -rf $(RBENV_DIR)

.PHONY: rbenv-install
rbenv-install: $(RBENV_DIR)

.PHONY: rbenv-update
rbenv-update: $(RBENV_DIR)
	rbenv update
