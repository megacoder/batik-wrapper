PREFIX	=/opt
BINDIR	=${PREFIX}/bin

OTHERS	=squiggle

all:	batik

install: batik
	install -d ${BINDIR}
	install -c batik ${BINDIR}/
	cd ${BINDIR} && for x in ${OTHERS}; do				\
		ln -s ./batik $$x;					\
	done

uninstall:
	cd ${BINDIR} && ${RM} batik ${OTHERS}
