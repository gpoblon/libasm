Un programme est constitué d'instructions.
Ces instructions sont connues, listées, et ne peuvent etre inventées.
Bien que lues en langage machine (ensemble d'instructions en binaire), il existe un langage surcouche qui en est très proche, l'assembleur.
L'assembleur possède les memes instructions que le langage machine, mais lisibles (termes "mnémoniques"). L'Assembleur est le programme qui traduit l'assembleur en langage machine en vue de créer par exemple un fichier objet ou un fichier exécutable.
Cependant il existe plusieurs Assembleurs et donc plusieurs syntaxes au langage assembleur (NASM, MASM -Microsoft - GoASM...)

## Projet 42
créer la bibliotheque `libft.a` en NASM 64bits en syntaxe *Intel* (!= *AT&T*).
Makefile habituel + main de test qui compile avec la bibliotheque
Pas d'ASM inline: faire des `.s`
! calling convention

### Functions:
- `ft_bzero`
- `ft_strcat`
- `ft_isalpha`
- `ft_isdigit`
- `ft_isalnum`
- `ft_isascii`
- `ft_isprint`
- `ft_toupper`
- `ft_tolower`
- `ft_puts` (bien entendu, vous pouvez appeller le syscall `write`)

Puis en utilisant les *Instruction Repeat String operations* (https://software.intel.com/en-us/articles/intel-sdm)):
- `strlen`
- `memset`
- `memcpy`
- `strdup` (bien entendu, vous pouvez appeller `malloc`)

Puis
- `void ft_cat(int fd);` qui a le même comportement que la commande `cat`

Puis bonus: ajouter d'autres fonctions de notre choix

Note: le changement de contexte entre l’user-space et lekernel-space coûte cher en performances donc vous serez pénalisés si vous en abusez
