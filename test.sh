#!/bin/sh

make
gcc tests/tests.c tests/main.c -Itests/ -L./ -lfts -o test
./test $1 $2
ftres=$?
if [ $ftres -eq 139 ]; then
	printf "\033[31mSEGMENTATION FAULT !\033[0m\n"
else
	if [ $ftres -eq 1 ]; then
		printf "\033[33mTEST(S) FAILED\033[0m\n"
	else
		printf "\033[34mALL TESTS PASSED\033[0m\n"
	fi
fi
rm -rf ./test
