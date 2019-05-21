#include "../inc/libfts.h"
#include "inc/tests.h"

int	err_print(char *s)
{
	write(1, s, strlen(s));
	write(1, "\n", 1);
	return (EXIT_FAILURE);
}

int     test_isalnum(void)
{
	int	err_count = 0;
	int	i = -1;

	while (i < 256)
	{
		if (ft_isalnum(i) != isalnum(i))
		{
			printf("ERR: char: %c (ascii: %d)\n", (char)i, i);
			++err_count;
		}
		++i;
	}
	return (err_count);
}

int     test_isalpha(void)
{
	int	err_count = 0;
	int	i = -1;

	while (i < 256)
	{
		if (ft_isalpha(i) != isalpha(i))
		{
			printf("ERR: char: %c (ascii: %d)\n", (char)i, i);
			++err_count;
		}
		++i;
	}
	return (err_count);
}

int     test_isascii(void)
{
	int	err_count = 0;
	int	i = -1;

	while (i < 256)
	{
		if (ft_isascii(i) != isascii(i))
		{
			printf("ERR: char: %c (ascii: %d)\n", (char)i, i);
			++err_count;
		}
		++i;
	}
	return (err_count);
}

int     test_isdigit(void)
{
	int	err_count = 0;
	int	i = -1;

	while (i < 256)
	{
		if (ft_isdigit(i) != isdigit(i))
		{
			printf("my->%d\t", ft_isdigit(i));
			printf("ERR: char: %c (ascii: %d)\n", (char)i, i);
			++err_count;
		}
		++i;
	}
	return (err_count);
}

int     test_islower(void)
{
	int	err_count = 0;
	int	i = -1;

	while (i < 256)
	{
		if (ft_islower(i) != islower(i))
		{
			printf("ERR: char: %c (ascii: %d)\n", (char)i, i);
			++err_count;
		}
		++i;
	}
	return (err_count);
}

int     test_isupper(void)
{
	int	err_count = 0;
	int	i = -1;

	while (i < 256)
	{
		if (ft_isupper(i) != isupper(i))
		{
			printf("ERR: char: %c (ascii: %d)\n", (char)i, i);
			++err_count;
		}
		++i;
	}
	return (err_count);
}

int     test_isprint(void)
{
	int	err_count = 0;
	int	i = -1;

	while (i < 256)
	{
		if (ft_isprint(i) != isprint(i))
		{
			printf("ERR: char: %c (ascii: %d)\n", (char)i, i);
			++err_count;
		}
		++i;
	}
	return (err_count);
}