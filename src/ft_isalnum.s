section .data
hello:
    .string db "Hello World!", 10
    .len equ $ - hello.string

section .text
    global start
    global _main

start:
    call _main
    ret

_main:
    ret