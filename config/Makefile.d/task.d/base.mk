.PHONY: build
build: $(BUILD_TARGETS)

.PHONY: clean
clean: $(CLEAN_TARGETS)

.PHONY: distclean
distclean: $(DISTCLEAN_TARGETS)

.PHONY: initialize
build: $(INITIALIZE_TARGETS)

.PHONY: install
install: $(INSTALL_TARGETS)

.PHONY: update
update: $(UPDATE_TARGETS)
