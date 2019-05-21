#!/bin/sh

printf "(test.sh) Compiling libfts...\n"
make 1> /dev/null
printf "(test.sh) Compiling tests...\n"
gcc tests/tests.c tests/main.c -Itests/ -L./ -lfts -o test
printf "(test.sh) Executing tests...\n"
./test