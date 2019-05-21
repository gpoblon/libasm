#include "inc/libfts.h"
#include "inc/tests.h"

int	test_isdigit(int c)
{
	printf("\n\t\033[36mTEST isdigit\033[0m\n\tc = |%d|\n", c);
	if (ft_isdigit(c) != isdigit(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_isalpha(int c)
{
	printf("\n\t\033[36mTEST isalpha\033[0m\n");
	if (ft_isalpha(c) != isalpha(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_isascii(int c)
{
	printf("\n\t\033[36mTEST isascii\033[0m\n");
	if (ft_isascii(c) != isascii(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_isalnum(int c)
{
	printf("\n\t\033[36mTEST isalnum\033[0m\n");
	if (ft_isalnum(c) != isalnum(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_isprint(int c)
{
	printf("\n\t\033[36mTEST isprint\033[0m\n");
	if (ft_isprint(c) != isprint(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_tolower(int c)
{
	printf("\n\t\033[36mTEST tolower\033[0m\n");
	if (ft_tolower(c) != tolower(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_toupper(int c)
{
	printf("\n\t\033[36mTEST toupper\033[0m\n");
	if (ft_toupper(c) != toupper(c))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_puts(char const *s)
{
	printf("\n\t\033[36mTEST puts\033[0m\n");
	if (puts(s) != ft_puts(s))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_strlen(const char *s)
{
	printf("\n\t\033[36mTEST strlen\033[0m\n");
	if (strlen(s) != ft_strlen(s))
		return (EXIT_FAILURE);
	return (EXIT_SUCCESS);
}

int	test_strcat(char *dest, const char *src)
{
	printf("\n\t\033[36mTEST strcat\033[0m\n");
	return (EXIT_SUCCESS);
}

int	test_bzero(void *s, size_t n)
{
	printf("\n\t\033[36mTEST bzero\033[0m\n");
	return (EXIT_SUCCESS);
}

int	err_print(char *s)
{
	write(1, s, strlen(s));
	write(1, "\n", 1);
	return (EXIT_FAILURE);
}
