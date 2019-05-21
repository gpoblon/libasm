#include "inc/tests.h"

typedef struct	s_function_array
{
	const char	*name;
	int			(*fun)();
}				t_farr;

static t_farr const	fun_arr[] = {
		{ "IS_ASCII", &test_isascii },
		{ "IS_LOWER", &test_islower },
		{ "IS_UPPER", &test_isupper },
		{ "IS_ALPHA", &test_isalpha },
		{ "IS_DIGIT", &test_isdigit },
		{ "IS_PRINT", &test_isprint },
		{ "IS_ALNUM", &test_isalnum },
		{ NULL, NULL }
	};

static int	iterate_fun_test(void)
{
	unsigned int	i;
	int				err_count = 0;
	int				ret;

	i = 0;
	while (fun_arr[i].name != NULL)
	{
		ret = 0;
		printf("\n\033[35mTEST %s\033[0m\n", fun_arr[i].name);
		if ((ret = fun_arr[i].fun()))
		{
			printf("\t\033[33m%d tests failed\033[0m\n", ret);
			++err_count;
		}
		else
			printf("\t\033[36mall tests passed\033[0m\n");
		i++;
	}
	return (err_count);
}

int			main(int argc, char **argv)
{
	int				err;

	if ((err = iterate_fun_test()))
	{
		printf("\n(./test)\033[31m%d TESTS FAILED\033[0m\n", err);
		return (EXIT_FAILURE);
	}
	return (EXIT_SUCCESS);
}