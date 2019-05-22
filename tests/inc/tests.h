#ifndef FT_FUNC_H
# define FT_FUNC_H

#include <stdlib.h>
#include <unistd.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int		err_print(char *s);
int		ft_test(int a, int b);

int     test_isalnum(void);
int     test_isalpha(void);
int     test_isascii(void);
int     test_isdigit(void);
int     test_islower(void);
int     test_isupper(void);
int     test_tolower(void);
int     test_toupper(void);
int     test_isprint(void);

int		test_strlen(void);
int		test_strcat(void);
int		test_puts(void);
int		test_bzero(void);

#endif
