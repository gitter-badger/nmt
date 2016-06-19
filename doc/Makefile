DOCPATH=$(DESTDIR)/usr/share/doc/nmt
MANPATH=$(DESTDIR)/usr/share/man

all: nmt.1 nmt.html

nmt.1: nmt.md
	rst2man $^ $@

nmt.html: nmt.md
	rst2html $^ $@

install:
	install -D -m 0644 nmt.1 $(MANPATH)/man1/nmt.1
	install -D -m 0644 nmt.html $(DOCPATH)/nmt.html
	gzip -n -9 -f $(MANPATH)/man1/nmt.1
	install -m 0644 -D ../AUTHORS $(DOCPATH)/AUTHORS
	install -m 0644 -D ../LICENSE $(DOCPATH)/copyright
	install -m 0644 -D ../README.md $(DOCPATH)/README.md
	install -m 0644 -D ../Changelog $(DOCPATH)/changelog
	gzip -n -9 -f $(DOCPATH)/changelog

uninstall:
	rm -f $(MANPATH)/man1/nmt.1.gz
	rm -f $(MANPATH)/man1/nmt.html
	rm -f $(DOCPATH)/AUTHORS
	rm -f $(DOCPATH)/copyright
	rm -f $(DOCPATH)/README.md
	rm -f $(DOCPATH)/changelog.gz

clean:


