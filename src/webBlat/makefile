include ../inc/common.mk

L += -lm $(SOCKETLIB)
MYLIBDIR = ../lib/${MACHTYPE}
MYLIBS =  ${MYLIBDIR}/jkOwnLib.a ${MYLIBDIR}/jkweb.a

O = webBlat.o
TARGET=${DESTDIR}${BINDIR}/webBlat${EXE}

webBlat: $O ${MYLIBS}
	${CC} ${COPT} -o ${TARGET} $O ${MYLIBS} ${L}
	${STRIP} ${TARGET}

installOsX: webBlat
	cp ${TARGET} /Library/WebServer/CGI-Executables
	cp webBlat.cfg /Library/WebServer/CGI-Executables

installUcsc: webBlat
	cp ${TARGET} /usr/local/apache/cgi-bin-$(USER)
	cp webBlat.cfg /usr/local/apache/cgi-bin-$(USER)

installAlpha: webBlat
	cp ${TARGET} /usr/local/apache/cgi-bin
	cp webBlat.cfg /usr/local/apache/cgi-bin

clean:
	rm -f $O webBlat

