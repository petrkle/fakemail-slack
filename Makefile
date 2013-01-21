PRGNAM=fakemail
VERSION=1.10
BUILD=1
PACKAGE=$(PRGNAM)-$(VERSION)-noarch-$(BUILD).txz

$(PACKAGE): fakemail/usr/bin/fakemail fakemail/etc/rc.d/rc.fakemail fakemail/install/*
	cd $(PRGNAM) && makepkg -l y -c y ../$(PACKAGE)

install:
	installpkg $(PACKAGE)

uninstall:
	removepkg $(PACKAGE)

clean:
	rm -f $(PACKAGE)
