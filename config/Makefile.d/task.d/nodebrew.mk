$(NODEBREW_DIR):
	$(NODEBREW_INSTALL_COMMAND)

.PHONY: nodebrew-distclean
nodebrew-distclean:
	$(RM) $(NODEBREW_DIR)

.PHONY: nodebrew-install
nodebrew-install: $(NODEBREW_DIR)
