%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .text
	global _ft_puts

_ft_puts:
	push	rbp
	mov		rbp, rsp
	xor		rax, rax
	push	rsi
	lea		rsi, [rel rdi]
	mov		rdi, STDOUT
	mov		rax, WRITE
	pop		rdx
	syscall

end:
	leave
	ret
