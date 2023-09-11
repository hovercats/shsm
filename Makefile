PREFIX=/usr/local
BINDIR=${PREFIX}/bin
MANDIR=${PREFIX}/share/man

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	mkdir -p ${DESTDIR}${PREFIX}/share/man/man1
	chmod 755 shsm
	chmod 655 shsm.1
	cp -f shsm ${DESTDIR}${PREFIX}/bin
	cp -f shsm.1 ${DESTDIR}${PREFIX}/share/man/man1

uninstall:
	rm -rf ${DESTDIR}${PREFIX}/bin/shsm
	rm -rf ${DESTDIR}${PREFIX}/share/man/man1/shsm.1
