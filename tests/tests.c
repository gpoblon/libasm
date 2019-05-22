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

int     test_toupper(void)
{
	int	err_count = 0;
	int	i = -1;

	while (i < 256)
	{
		if (ft_toupper(i) != toupper(i))
		{
			printf("ERR: char: %c (ascii: %d)\n", (char)i, i);
			printf("_ft: %c, sys: %c\n", ft_toupper(i), toupper(i));
			++err_count;
		}
		++i;
	}
	return (err_count);
}

int     test_tolower(void)
{
	int	err_count = 0;
	int	i = -1;

	while (i < 256)
	{
		if (ft_tolower(i) != tolower(i))
		{
			printf("ERR: char: %c (ascii: %d)\n", (char)i, i);
			printf("_ft: %c, sys: %c\n", ft_tolower(i), tolower(i));
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

int     test_strlen(void)
{
	int	err_count = 0;
	char	*s;

	s = (char*)malloc(1 * sizeof(char));
	if (s && ft_strlen(s) != strlen(s) && ++err_count)
		printf("ERR: _ft: %lu, sys: %lu\n", ft_strlen(s), strlen(s));
	if (s)
		free(s);

	s = strdup("c");
	if (s && ft_strlen(s) != strlen(s) && ++err_count)
		printf("ERR: _ft: %lu, sys: %lu\n", ft_strlen(s), strlen(s));
	if (s)
		free(s);

	s = strdup("coucou");
	if (s && ft_strlen(s) != strlen(s) && ++err_count)
		printf("ERR: _ft: %lu, sys: %lu\n", ft_strlen(s), strlen(s));
	if (s)
		free(s);

	s = strdup("clownefoiwbfoiwejr wru0392rw09f 0w4r 2340r wiufw3 rfwd0q-wd w4qp f3f[0943u t034tu34\n\n\0 owiqdjweopifj");
	if (s && ft_strlen(s) != strlen(s) && ++err_count)
		printf("ERR: _ft: %lu, sys: %lu\n", ft_strlen(s), strlen(s));
	if (s)
		free(s);

	return (err_count);
}