section .data

section .text
    global _ft_test

_ft_test:
	add rdi, rdi
	add rdi, 8
    pop rdi
    mov rax, rdi
    ret