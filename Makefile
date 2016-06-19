
DESTDIR=$(shell pwd)/.install
export DESTDIR

all:
	$(MAKE) -C doc

install: all
	mkdir -p $(DESTDIR)
	$(MAKE) -C scripts install
	$(MAKE) -C doc install
	@mkdir -p $(DESTDIR)/usr/share/doc/nmt/
	cp -ar examples $(DESTDIR)/usr/share/doc/nmt/
	@$(MAKE) -C $(DESTDIR)/usr/share/doc/nmt/examples clean

deb: install
	mkdir -p $(DESTDIR)/DEBIAN
	cp package/debian/control $(DESTDIR)/DEBIAN/
	dpkg-deb --build $(DESTDIR) nmt.deb

rpm: install
	rm -rf RPMS
	mkdir -p RPMS
	rpmbuild -bb package/rpm/nmt.spec --buildroot=`readlink -e $(DESTDIR)`
	mv `find RPMS -name \*.rpm` .
	rm -rf RPMS


deb-check:
	lintian nmt.deb

clean:
	$(MAKE) -C scripts clean
	$(MAKE) -C doc clean
	rm -f *.rpm *.deb
	rm -rf $(DESTDIR)

test:
	@echo Dummy rule
