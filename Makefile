PREFIX=/usr/local
BINDIR=${PREFIX}/bin
MANDIR=${PREFIX}/share/man

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	mkdir -p ${DESTDIR}${PREFIX}/share/man/man1
	chmod 755 bin/bare.sh
	chmod 755 bin/svc
	chmod 655 svc.1
	cp -f bin/bare.sh ${DESTDIR}${PREFIX}/bin
	cp -f bin/svc ${DESTDIR}${PREFIX}/bin
	cp -f svc.1 ${DESTDIR}${PREFIX}/share/man/man1

uninstall:
	rm -rf ${DESTDIR}${PREFIX}/bin/svc
	rm -rf ${DESTDIR}${PREFIX}/bin/bare.sh
	rm -rf ${DESTDIR}${PREFIX}/share/man/man1/svc.1
