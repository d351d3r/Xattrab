CC=gcc
CFLAGS= -Wall -Wextra

checkbinary:
	$(CC) $(CFLAGS) CheckBinary.c -o checkbinary
writebinary:
	$(CC) $(CFLAGS) WriteBinary.c -o writebinary
all:
	$(CC) $(CFLAGS) CheckBinary.c -o checkbinary
	$(CC) $(CFLAGS) WriteBinary.c -o writebinary
clean:
	rm -rf *.o
