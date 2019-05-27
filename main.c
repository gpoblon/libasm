#include <string.h>
#include <stdio.h>
#include "inc/libfts.h"

#define SIZE 10
#define CHAR_SET 'x'

int		main()
{
	char	mem[SIZE];

	puts("ft_bzero");
	memset(&mem, CHAR_SET, SIZE);
	ft_bzero(&mem, SIZE);
}
