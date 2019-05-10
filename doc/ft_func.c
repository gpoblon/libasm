#include "inc/ft_func.h"

int		ftc_isdigit(int c)
{
	if (c >= 48 && c <= 57)
		return (1);
	return (0);
}

int		ftc_isalpha(int c)
{
	if ((c >= 65 && c <= 90) || (c >= 97 && c <= 122))
		return (1);
	return (0);
}

int		ftc_isascii(int c)
{
	if (c >= 0 && c <= 127)
		return (1);
	return (0);
}

int		ftc_isalnum(int c)
{
	if (ftc_isdigit(c) || ftc_isalpha(c))
		return (1);
	return (0);
}

void	ftc_bzero(void *s, size_t n)
{
	while (n--)
		((unsigned char *)s)[n] = '\0';
}

int		ftc_isprint(int c)
{
	if (c == 32 || ftc_isalnum(c) || 
	((c >= 33 && c <= 47) || (c >= 58 && c <= 64) || (c >= 91 && c <= 96)
	|| (c >= 123 && c <= 126)))
		return (1);
	return (0);
}

int		ftc_tolower(int c)
{
	if (c >= 65 && c <= 90)
		return (c + 32);
	return (c);
}

int		ftc_toupper(int c)
{
	if (c >= 97 && c <= 122)
		return (c - 32);
	return (c);
}

void	ftc_puts(char const *s)
{
	if (!s)
		return ;
	while (*s)
		write(1, s++, 1);
	write(1, "\n", 1);
}

size_t	ftc_strlen(const char *s)
{
	size_t	len;

	len = 0;
	while (s[len])
		len++;
	return (len);
}
