all:
	@echo Unnecessary. Execute "'sudo make install'" directly.

install:
	@sh tools/install.sh --verbose

uninstall:
	@sh tools/uninstall.sh --verbose

.PHONY: all install uninstall
