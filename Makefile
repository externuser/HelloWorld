CC=clang
CFLAGS=
LDFLAGS=
EXEC=hello
SRC= $(wildcard src/*.c)
OBJ= $(SRC:.c=.o)

all: $(EXEC)

hello: $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

#main.o: hello.h

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)
