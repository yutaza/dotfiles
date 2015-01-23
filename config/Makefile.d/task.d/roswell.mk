$(ROSWELL_DIR): $(VAR_DIR)
	git clone $(ROSWELL_REPO) $@

#TODO: check update
$(ROSWELL_LAST_BUILD): $(ROSWELL_DIR) $(ROSWELL_VAR_MK)
	$(RM) $@
	$(ROSWELL_GIT_COMMAND) fetch -p
	$(ROSWELL_GIT_COMMAND) reset --hard $(ROSWELL_GIT_TAG)
	cd $(ROSWELL_DIR); ./bootstrap
	cd $(ROSWELL_DIR); ./configure --prefix=$(ROSWELL_DOT_DIR)
	make --directory=$(ROSWELL_DIR)
	make --directory=$(ROSWELL_DIR) install
	touch $@

.PHONY: roswell-build
roswell-build: $(ROSWELL_LAST_BUILD)

.PHONY: roswell-clean
roswell-clean:
	$(RM) $(ROSWELL_LAST_BUILD)

.PHONY: roswell-distclean
roswell-distclean:
	$(RM) $(ROSWELL_DIR)
	$(RM) $(ROSWELL_DOT_DIR)

.PHONY: roswell-install
roswell-install: $(ROSWELL_DIR)

.PHONY: roswell-update
roswell-update: roswell-clean roswell-build
