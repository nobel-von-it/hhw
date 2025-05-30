PREFIX = /usr/local


CC = gcc
LIBS = -lcunit
INCLUDES = -I/usr/include
LDFLAGS = -L/usr/include/CUnit

CFLAGS = -W -Wall -Wextra -O2 -g

SRCS = main.c core.c test.c
OBJS = $(SRCS:.c=.o)

TARGET = hhw

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f ${TARGET} ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/${TARGET}

test: all
	$(CC) $(CFLAGS) $(LDFLAGS) -o test test.c

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all install clean
