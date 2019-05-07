## ASM
Un programme est constitué d'instructions.
Ces instructions sont connues, listées, et ne peuvent etre inventées.
Bien que lues en langage machine (ensemble d'instructions en binaire), il existe un langage surcouche qui en est très proche, l'assembleur.
L'assembleur possède les memes instructions que le langage machine, mais lisibles (termes "mnémoniques"). L'Assembleur est le programme qui traduit l'assembleur en langage machine en vue de créer par exemple un fichier objet ou un fichier exécutable.
Cependant il existe plusieurs Assembleurs et donc plusieurs syntaxes au langage assembleur (NASM, MASM -Microsoft - GoASM...)

### Rules
Les instructions ont cette forme: `instruction destination source
`add eax, 2` -> ajoute 2 au registre `eax`
`;` est utilisé pour les commentaires

### Registres
Un registre est une zone de memoire tres rapide, interne au microprocesseur (il y en a une dizaine). Les registres font 16 bits (`ax`) ou 32 bits lorsqu'ils sont *extended* (`eax` `ebx`, `ecx`... 4 octets). Les 16 bits peuvent etre separes en 2 registres de 8 bits (`al` + `ah`)

### Sections
Les binaires sont divisés en sections, dont les principales:
- *.data*: variables initialisées (avant la compilation (`const` notamment) ?)
- *.bss*: données non-initialisées. réserve d'espace mémoire pour une variable
- *.text*: contient notre code 

### Syscalls
Semblable a une fonction:
`eax` contient le numéro de la tâche à effectuer
`ebx`, `ecx` etc contiennent les premiers, seconds, etc arguments
`int 80h` appelle le kernel via le *kernel interrupt*
`mov` (instruction) permet de mettre une valeur dans un registre

### Exemples
##### Exemple 1: réaliser un write
```
mov eax, 4
mov ebx, 1
mov ecx, chaine
mov edx, TailleChaine
int 80h
```
`eax` contiendra la valeur de retour du syscall.
Le numéro du syscall write est `4`. `write(int fd, char *str);`
Le numéro de la sortie standard est 1 et doit etre le 1e argument
la chaine à écrire doit être le 2nd argument

##### Exemple 2: réaliser un exit
```
mov eax, 1
mov ebx, 0 ; envoie 0 en param a exit, soit pas d'erreur
int 80h
```
`eax` contiendra le retour du syscall `1`, soit `exit(int err_code);`

##### Exemple 3: réaliser un *Hello World*
```
section .data
chaine: db "hello world !", 10, 13
tailleChaine: equ $-chaine

section .text
global _start

_start:
mov eax, 4
mov ebx, 1
mov ecx, chaine
mov edx, tailleChaine
int 80h

mov eax, 1
mov ebx, 0
int 80h
```

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
