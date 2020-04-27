PREFIX ?= /usr/local

install: fakehome fakehome-banish fakehome-changesymlinks
	install -m 755 fakehome $(DESTDIR)$(PREFIX)/bin/
	install -m 755 fakehome-banish $(DESTDIR)$(PREFIX)/bin/
	install -m 755 fakehome-changesymlinks $(DESTDIR)$(PREFIX)/bin/
