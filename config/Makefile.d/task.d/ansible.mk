$(ANSIBLE_DIR):
	git clone $(ANSIBLE_REPO) $@

#TODO: check update
$(ANSIBLE_LAST_BUILD): $(ANSIBLE_DIR) $(ANSIBLE_VAR_MK)
	$(RM) $@
	$(ANSIBLE_GIT_COMMAND) fetch -p
	$(ANSIBLE_GIT_COMMAND) reset --hard $(ANSIBLE_GIT_TAG)
	touch $@

.PHONY: ansible-build
ansible-build: $(ANSIBLE_LAST_BUILD)

.PHONY: ansible-clean
ansible-clean:
	$(RM) $(ANSIBLE_LAST_BUILD)

.PHONY: ansible-distclean
ansible-distclean:
	$(RM) $(ANSIBLE_DIR)

.PHONY: ansible-install
ansible-install: $(ANSIBLE_DIR)

.PHONY: ansible-update
ansible-update: ansible-clean ansible-build
