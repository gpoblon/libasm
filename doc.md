## ASM
Un programme est constitué d'instructions.
Ces instructions sont connues, listées, et ne peuvent etre inventées.
Bien que lues en langage machine (ensemble d'instructions en binaire), il existe un langage surcouche qui en est très proche, l'assembleur.
L'assembleur possède les memes instructions que le langage machine, mais lisibles (termes "mnémoniques"). L'Assembleur est le programme qui traduit l'assembleur en langage machine en vue de créer par exemple un fichier objet ou un fichier exécutable.
Cependant il existe plusieurs Assembleurs et donc plusieurs syntaxes au langage assembleur (NASM, MASM -Microsoft - GoASM...)

Bon lien de doc: *https://cs.lmu.edu/~ray/notes/nasmtutorial/*

### Compilation
Sur macOs: `nasm -fmacho64 hello.asm && ld hello.o && ./a.out`
Sur linux: `nasm -felf64 hello.asm && ld hello.o && ./a.out`

### Rules
Les instructions ont cette forme: `instruction destination source
`add eax, 2` -> ajoute 2 au registre `eax`
`;` est utilisé pour les commentaires

### Registres
Un registre est une zone de memoire tres rapide, interne au microprocesseur (il y en a une dizaine). Les registres font 16 bits (`ax`) ou 32 bits lorsqu'ils sont *extended* (`eax` `ebx`, `ecx`... 4 octets). Les 16 bits peuvent etre separes en 2 registres de 8 bits (`al` + `ah`)

EAX,AX,AH,AL : *Accumulator register* utilisé pour l'I/O, les claculs, les interruptions, on y met les retours de fonctions de mémoire
EBX,BX,BH,BL : *Base register* utilisé comme un pointeur vers de la mémoire, on y met le retour de certains interrupts
ECX,CX,CH,CL : *Counter register* utilisé comme index de boucles et opérations binaires (shift) et certains interrupts
EDX,DX,DH,DL : *Data register* utilisé pour l'I/Os, arithmetic, certains interrupts.
RDI, RSI, RDX, RCX, R8, R9 sont les registres utilisés pour passer int/ptrs en param de fonctions de la libc, DANS L'ORDRE
la Stack (RSP) doit etre alignée sur 16b quand `call` est appelé (sinon *segfault*)
RAX contient toujours la valeur de retour du `syscall` appelé (ex `sys_write`), qui écrase au passage RCX et R11
La valeur du `syscall` envoyé est toujours contenue dans RAX. Si il est négative, c'est u code d'erreur (`-errno`)

### Sections
Les binaires sont divisés en sections, dont les principales:
- *.data*: variables initialisées (avant la compilation (`const` notamment) ?). Pour mettre une donnée en mémoire :
```
db		'a',0x55            ; store bytes (char constants are ok)
db		'hello',13,10,'$'   ; so are string constants
dw		'a'                 ; 0x61 0x00 (it's just a number)
dw		'abc'               ; 0x61 0x62 0x63 0x00 (string)
dd		0x12345678          ; 0x78 0x56 0x34 0x12
dd		1.234567e20         ; floating-point constant
dq		0x123456789abcdef0  ; eight byte constant
dq		1.234567e20         ; double-precision float
dt		1.234567e20         ; extended-precision float
```
- *.bss*: réserve d'espace mémoire pour toute variable non-initialisée:
```
buffer:         resb    64              ; reserve 64 bytes
wordvar:        resw    1               ; reserve a word
realarray:      resq    10              ; array of ten reals
```
- *.text*: contient notre code 

### Instructions
`mov	x, y`	x ← y
`and	x, y` 	x ← x and y
`or		x, y`	x ← x or y
`xor	x, y` 	x ← x xor y
`add	x, y` 	x ← x + y
`sub	x, y` 	x ← x – y
`inc	x`		x ←  x + 1
`dec	x`		x ←  x – 1
`syscall`		Invoke an operating system routine
`db`			A pseudo-instruction that declares bytes that will be in memory when the program runs

### Jumps


### Syscalls
Semblable a une fonction:
`eax` 			contient le numéro de la tâche à effectuer
`ebx`, `ecx`	etc contiennent les premiers, seconds, etc arguments
`syscall` 		(ou `int 80h` ou `int 0x80`) appelle le kernel via le *kernel interrupt*
`mov`			(instruction) permet de mettre une valeur dans un registre

### Opérandes
`0b1` ou `01b`						binary
`0d1` ou `01d` ou `01`				decimal
`0x1` ou `01h` (always lowercase)	hexadecimal
`0o1` ou `01o`						octal

### Exemples

#### Exemples d'instructions complètes
```
byte_table db 12,15,16,22,..... ; Table of bytes
mov al,[byte_table+2]
mov al,byte_table[2] ; same as the former
```

##### Exemple 1: réaliser un write
```
mov eax, 4
mov ebx, 1
mov ecx, chaine
mov edx, TailleChaine
syscall
```
`eax` contiendra la valeur de retour du syscall.
Le numéro du syscall write est `4`. `sys_write(int fd, char *str);`
Le numéro de la sortie standard est 1 et doit etre le 1e argument
la chaine à écrire doit être le 2nd argument

##### Exemple 2: réaliser un exit
```
mov eax, 1
mov ebx, 0 ; envoie 0 en param a exit, soit pas d'erreur
syscall
```
`eax` contiendra le retour du syscall `1`, soit `sys_exit(int err_code);`

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
syscall

mov eax, 1
mov ebx, 0
syscall
```

# ASM DOC
## Stack
The stack is made of 8octets (if 64b cpu) elements.
The `rsp` reg always points to the last stacked elem.
To add one, call the `pushq` (64b) instruction, to remove the last one, use `popq`

## Projet 42
créer la bibliotheque `libfts.a` en NASM 64bits, donc en syntaxe *Intel* (!= *AT&T*).
Makefile habituel + main de test qui compile avec la bibliotheque
Pas d'ASM inline (= dans des *.c*), utiliser l'ext *.s`*
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
- `ft_strlen`
- `ft_memset`
- `ft_memcpy`
- `ft_strdup` (bien entendu, vous pouvez appeller `malloc`)

Puis
- `void ft_cat(int fd);` qui a le même comportement que la commande `cat`

Puis bonus: ajouter d'autres fonctions de notre choix

Note: le changement de contexte entre l’user-space et lekernel-space coûte cher en performances donc vous serez pénalisés si vous en abusez

