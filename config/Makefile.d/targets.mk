ALL_TARGETS += build
BUILD_TARGETS += initialize
CHECK_TARGETS +=
CLEAN_TARGETS +=
DISTCLEAN_TARGETS += clean
INITIALIZE_TARGETS += install
INSTALL_TARGETS +=
TEST_TARGETS +=
UPDATE_TARGETS +=

include $(MAKEFILE_DIR)/install.d/**/var.mk

.PHONY: all
all: $(BUILD_TARGETS)

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

include $(MAKEFILE_DIR)/install.d/**/task.mk
