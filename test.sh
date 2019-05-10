#!/bin/sh

printf "(test.sh) Compiling libfts...\n"
make 1> /dev/null
printf "(test.sh) Compiling tests...\n"
gcc tests/tests.c tests/main.c -Itests/ -L./ -lfts -o test
printf "(test.sh) Executing tests...\n"
./test $1 $2
ftres=$?
if [ $ftres -eq 139 ]; then
	printf "\n(test.sh)\033[31mSEGMENTATION FAULT !\033[0m\n"
else
	if [ $ftres -eq 1 ]; then
		printf "\n(test.sh)\033[31mTEST(S) FAILED\033[0m\n"
	else
		printf "\n(test.sh)\032[34mALL TESTS PASSED\033[0m\n"
	fi
fi
rm -rf ./test
