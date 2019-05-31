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
size_t			ft_strlen(const char *s);
void			*ft_memset(void *b, int c, size_t len);
void			*ft_memcpy(void *dst, const void *src, size_t n);
char			*ft_strdup(const char *s);

/*
** Part 3
*/
void			ft_cat(int fd);

/*
** Bonus part
*/
int				ft_isupper(int c);
int				ft_islower(int c);
int				ft_isspace(int c);
int				ft_putchar(int c);
void			ft_putstr(const char *s);
void			ft_putstr(const char *s);
void			ft_putstr(const char *s);
int				ft_abs(int i);

#endif
