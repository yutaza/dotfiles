$(NODEBREW_DIR):
	wget git.io/nodebrew
	perl nodebrew setup
	$(RM) nodebrew

.PHONY: nodebrew-distclean
nodebrew-distclean:
	$(RM) $(NODEBREW_DIR)

.PHONY: nodebrew-install
nodebrew-install: $(NODEBREW_DIR)
