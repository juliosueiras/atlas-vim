# For SunOS

ifneq ($(SUNCC),)
CC=$(SUNCC)
CFLAGS+=-errwarn -xc99 -xO3 -native -KPIC
LDFLAGS+=-G
else # gcc
CC=gcc
CFLAGS+=-W -Wall -Wno-unused -Wno-unused-parameter -std=c99 -O2 -fPIC -pedantic
LDFLAGS+=-shared
endif
CPPFLAGS+=-D_XPG6 -D__EXTENSIONS__

TARGET=autoload/vimproc_unix.so
SRC=autoload/proc.c autoload/ptytty.c
INC=autoload/vimstack.c autoload/ptytty.h

all: $(TARGET)

$(TARGET): $(SRC) $(INC)
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $(TARGET) $(SRC) $(LDFLAGS)

clean:
	rm -f $(TARGET)
