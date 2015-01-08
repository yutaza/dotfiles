.PHONY: build
build: $(BUILD_TARGETS)

.PHONY: initialize
build: $(INITIALIZE_TARGETS)

.PHONY: install
install: $(INSTALL_TARGETS)
