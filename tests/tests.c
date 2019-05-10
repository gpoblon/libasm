#include "inc/libfts.h"
#include "inc/tests.h"

int	test_isdigit(int c)
{
	printf("\tTEST isdigit\n");
	if (ft_isdigit(c) != isdigit(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_isalpha(int c)
{
	printf("\tTEST isalpha\n");
	if (ft_isalpha(c) != isalpha(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_isascii(int c)
{
	printf("\tTEST isascii\n");
	if (ft_isascii(c) != isascii(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_isalnum(int c)
{
	printf("\tTEST isalnum\n");
	if (ft_isalnum(c) != isalnum(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_isprint(int c)
{
	printf("\tTEST isprint\n");
	if (ft_isprint(c) != isprint(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_tolower(int c)
{
	printf("\tTEST tolower\n");
	if (ft_tolower(c) != tolower(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_toupper(int c)
{
	printf("\tTEST toupper\n");
	if (ft_toupper(c) != toupper(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_puts(char const *s)
{
	printf("\tTEST puts\n");
	return (EXIT_SUCCESS);
}

int	test_strlen(const char *s)
{
	printf("\tTEST strlen\n");
	return (EXIT_SUCCESS);
}

int	test_strcat(char *dest, const char *src)
{
	printf("\tTEST strcat\n");
	return (EXIT_SUCCESS);
}

int	test_bzero(void *s, size_t n)
{
	printf("\tTEST bzero\n");
	return (EXIT_SUCCESS);
}
