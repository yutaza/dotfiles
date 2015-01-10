$(PYENV_DIR):
	$(PYENV_INSTALL_COMMAND)

.PHONY: pyenv-distclean
pyenv-distclean:
	$(RM) $(PYENV_DIR)

.PHONY: pyenv-install
pyenv-install: $(PYENV_DIR)
