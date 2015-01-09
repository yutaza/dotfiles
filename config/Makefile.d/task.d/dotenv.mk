.PHONY: dotenv-build
dotenv-build:
	for env in $(DOTENV_DIR)/*; do \
	    dotenv=.$$(basename $$env); \
	    homedotenv=$(HOME)/$$dotenv; \
	    $(XLN) $$env $$homedotenv; \
	done
	$(XLN) $(TOP_DIR) $(DOTFILES_DIR); \

.PHONY: dotenv-distclean
dotenv-distclean:
	for env in $(DOTENV_DIR)/*; do \
	    dotenv=.$$(basename $$env); \
	    $(RM) $(HOME)/$$dotenv; \
	done
	$(RM) $(DOTFILES_DIR)
