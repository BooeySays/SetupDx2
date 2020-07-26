PREFIX ?= /usr/local
HOMEDIR = ~
DX2DIR = $(DESTDIR)$(HOMEDIR)/.DX2
BINDIR = $(DESTDIR)$(PREFIX)/bin
#MANDIR = $(DESTDIR)$(PREFIX)/share/man/man1
#DOCDIR = $(DESTDIR)$(PREFIX)/share/doc/googler
DX2BIN = $(DESTDIR)$(DX2DIR)/bin
DX2FUNCS = $(DESTDIR)$(DX2DIR)/functions
DX2BAK = $(DESTDIR)$(DX2DIR)/backups
DX2RC = $(DESTDIR)$(DX2DIR)/rc
DX2DATA = $(DESTDIR)$(DX2DIR)/data
DX2GIT = $(DESTDIR)$(DX2DIR)/git
DX2TEMP = $(DESTDIR)$(DX2DIR)/temp
DX2ALIASES = $(DESTDIR)$(DX2DIR)/aliases



.PHONY: install uninstall disable-self-upgrade

install:
	install -m755 -d $(DX2DIR)
	install -m755 -d $(DX2BIN)
	install -m755 dx2googler $(DX2BIN)
	install -m755 Google.com $(DX2BIN)
	install -m755 dx2googler-theme $(DX2BIN)
	install -m755 DX2GooglerHotkey.rc $(DX2RC)

uninstall:
	rm -f $(DX2BIN)/dx2googler
	rm -f $(DX2BIN)/dx2googler-theme
	rm -f $(DX2BIN)/GooglePrompt
	rm -f $(DX2BIN)/Google.com
	rm -f $(DX2RC)/DX2GooglerHotkey.rc

# Disable the self-upgrade mechanism entirely. Intended for packagers.
#
# We assume that sed(1) has the -i option, which is not POSIX but seems common
# enough in modern implementations.
disable-self-upgrade:
	sed -i.bak 's/^ENABLE_SELF_UPGRADE_MECHANISM = True$$/ENABLE_SELF_UPGRADE_MECHANISM = False/' googler
