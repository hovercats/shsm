PREFIX=/usr/local

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	chmod 755 shsm
	cp -f shsm ${DESTDIR}${PREFIX}/bin

uninstall:
	rm -rf ${DESTDIR}${PREFIX}/bin/shsm
