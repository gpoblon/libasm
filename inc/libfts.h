#ifndef LIBFTS_H
# define LIBFTS_H

#include <stdlib.h>
#include <unistd.h>

/*
** Part 1
*/
void			ft_bzero(void *s, size_t n);
int				ft_isalnum(int c);
int				ft_isalpha(int c);
int				ft_isascii(int c);
int				ft_isdigit(int c);
int				ft_isprint(int c);
int				ft_tolower(int c);
int				ft_toupper(int c);
int				ft_puts(char const *s);
char			*ft_strcat(char *dest, const char *src);

/*
** bonuses
*/
int				ft_isupper(int c);
int				ft_islower(int c);

/*
** Part 2
*/
unsigned long	ft_strlen(const char *s);

#endif
