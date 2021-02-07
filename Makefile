CC=gcc
CFLAGS=-c -Wall -Wextra
all:
	$(CC) $(CFLAGS) CheckBinary.c -o checkbinary.o
	$(CC) $(CFLAGS) WriteBinary.c -o writebinary.o
clean:
	rm -rf *.o
checkbinary:
	$(CC) $(CFLAGS) CheckBinary.c -o checkbinary.o
writebinary:
	$(CC) $(CFLAGS) WriteBinary.c -o writebinary.o
