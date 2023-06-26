
ifdef MISC
	#local setting
	OPT = "-DDEFAULT_CP=0"
endif

CC:=gcc -Os -Wall -Wno-unused-value -static -s ${OPT}


cpfilter: cpconv.c charmaps.h
	${CC} -o cpconv cpconv.c
