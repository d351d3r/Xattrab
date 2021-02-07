# TestXattr
The first program creates a 64-byte random binary data file and gives it an extended test attribute and its value.

The second program checks the attribute and value

Example:
```
$ ./writebinary <filename>
$ ./checkbinary <filename>
user.test_binary: this is a test binary custom attribute
```
