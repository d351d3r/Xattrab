CC=gcc
CFLAGS= -Wall

checkbinary:
	$(CC) $(CFLAGS) CheckBinary.c -o checkbinary
writebinary:
	$(CC) $(CFLAGS) WriteBinary.c -o writebinary
all:
	$(CC) $(CFLAGS) CheckBinary.c -o checkbinary
	$(CC) $(CFLAGS) WriteBinary.c -o writebinary
clean:
	rm -rf *.o
