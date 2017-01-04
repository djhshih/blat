DESTDIR?=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

all:
	mkdir -p ${DESTDIR}/{bin,include,lib}
	cd src/lib && ${MAKE}
	cd src/jkOwnLib && ${MAKE}
	cd src/blat && $(MAKE)
	cd src/gfClient && $(MAKE)
	cd src/gfServer && $(MAKE)
	cd src/hg/pslPretty && $(MAKE)
	cd src/hg/pslReps && $(MAKE)
	cd src/hg/pslSort && $(MAKE)
	cd src/utils/faToTwoBit && $(MAKE)
	cd src/utils/twoBitToFa && $(MAKE)
	cd src/utils/twoBitInfo && $(MAKE)
	if [[ "$(CFLAGS)" != *"-D_STATIC"* ]]; then cd src/webBlat && $(MAKE); fi
	cp -r src/inc/*.h ${DESTDIR}/include
	cp -r src/lib/*/*.a ${DESTDIR}/lib

install:
	# already done during build

clean:
	rm -f src/*/*.o src/*/*/*.o src/lib/*/*.a
