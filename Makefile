
ifdef MISC
	#my local settings
	OPT = "-DDEFAULT_CP=0"
endif

CC:=gcc -Os -Wall -Wno-unused-value -static -s ${OPT}


cpconv: cpconv.c charmaps.h
	${CC} -o cpconv cpconv.c


install: cpconv
	install cpconv /usr/local/bin


