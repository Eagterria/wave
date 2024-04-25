.PHONY: all clean

LIBS=
CFLAGS=

all: clean test wave

wave: *.c
	$(CC) -DNDEBUG $(CFLAGS) -o $@ $^ $(LIBS)

test: *.c
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)
	./test

clean:
	$(RM) wave
