.PHONY: dotenv-build
dotenv-build:
	for env in $(DOTENV_DIR)/*; do \
	    dotenv=.$$(basename $$env); \
	    homedotenv=$(HOME)/$$dotenv; \
	    if [ ! -L $$homedotenv ] ; then \
	        ln -s $$env $$homedotenv; \
	    fi \
	done
	if [ ! -L $(DOTFILES_DIR) ] ; then \
	    ln -s $(TOP_DIR) $(DOTFILES_DIR); \
	fi

.PHONY: dotenv-distclean
dotenv-distclean:
	for env in $(DOTENV_DIR)/*; do \
	    dotenv=.$$(basename $$env); \
	    rm -rf $(HOME)/$$dotenv; \
	done
	rm -rf $(DOTFILES_DIR)
