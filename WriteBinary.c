//The program takes one argument - a file and creates a 64-byte random data file,
// xattr creates a test attribute.

#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <sys/xattr.h>

#define XATTR_BINARY_KEY "user.test_binary"
#define XATTR_TEST_VALUE "this is a test binary custom attribute"
#define XATTR_TEST_VALUE_SIZE (sizeof(XATTR_TEST_VALUE) - 1)


int main(int argc, char *argv[]) {
    FILE *path = fopen(argv[1], "wb");
    if (path) {
        srand((unsigned int) time(NULL));
        short num_bytes = 64;
        unsigned char *stream = malloc(num_bytes);
        for (size_t i = 0; i < num_bytes; i++) {
            stream[i] = rand();
            fwrite(&stream[i], 1, 1, path);
            setxattr( argv[1], XATTR_BINARY_KEY, XATTR_TEST_VALUE, XATTR_TEST_VALUE_SIZE, 0);
        }
    } else {
        printf("Specify 1 file.\n");
        return -2;
    }
    fclose(path);
    return 0;
}
