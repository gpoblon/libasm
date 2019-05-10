#ifndef FT_FUNC_H
# define FT_FUNC_H

#include <stdlib.h>
#include <unistd.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int		test_isdigit(int c);
int		test_isalpha(int c);
int		test_isascii(int c);
int		test_isalnum(int c);
int		test_isprint(int c);
int		test_tolower(int c);
int		test_toupper(int c);
int		test_strlen(const char *s);
int		test_strcat(char *dest, const char *src);
int		test_puts(char const *s);
int		test_bzero(void *s, size_t n);

#endif
