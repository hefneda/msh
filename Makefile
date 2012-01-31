.PHONY: all test clean
CC=gcc
CFLAGS=-Wall
OBJECTS=msh.o

all: $(OBJECTS) test
	$(CC) $(CFLAGS) -o msh src/main.c msh.o

test: $(OBJECTS)
	$(CC) $(CFLAGS) -o test_msh msh.o test/test.c -I"src/"
	./test_msh

msh.o:
	$(CC) $(CFLAGS) -c src/msh.h src/msh.c

clean:
	rm $(OBJECTS) msh test_msh