PREFIX ?= /usr/local

install: fakehome fakehome-banish fakehome-changesymlinks
	install -t $(DESTDIR)$(PREFIX)/bin/ -D -m 755 fakehome fakehome-banish fakehome-changesymlinks
