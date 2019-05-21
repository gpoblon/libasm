#include "inc/tests.h"

static void	test_test(int c)
{
    int a, b, ret;
    
	printf("\n\t\033[33mHAVE FUN WITH FT_TEST\033[0m\n");

	printf("returned value=|%d|\n", ret);
}

int		main(int argc, char **argv)
{
	unsigned int	c;
	char			*str;
	unsigned int	str_len;
	int				err;

	if (argc != 3)
		return (err_print("\n(./test)USAGE ERROR: [c] [str]"));
	c = (unsigned int)argv[1][0];
	str_len = strlen(argv[2]);
	str = (char *)malloc(sizeof(char) * str_len);
	str = argv[2];
	// test_test(c);
	err += test_isdigit(c);
	// err += test_isalpha(c);
	err += test_isascii(c);
	// err += test_isalnum(c);
	// err += test_isprint(c);
	// err += test_tolower(c);
	// err += test_toupper(c);
	// err += test_strlen(str);
	// err += test_strcat(str, "CATTED");
	// err += test_puts(str);
	// err += test_bzero((void*)str, strlen(argv[1]));
	if (err)
	{
		printf ("\n(./test)\033[33m%d TESTS FAILED\033[0m\n", err);
		return (EXIT_FAILURE);
	}
	return (EXIT_SUCCESS);
}
