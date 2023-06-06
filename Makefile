

CC:=gcc -Os -Wall -Wno-unused-value -static -s


cpfilter: cpconv.c charmaps.h
	${CC} -o cpconv cpconv.c
