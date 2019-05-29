%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

	section .text
	global _ft_putchar

_ft_putchar:
	push	rbp
	mov		rbp, rsp
	push	rdi
	cmp		rdi, 0
	je		end
write:
	lea		rsi, [rsp]
	mov		rdx, 1
	mov		rdi, STDOUT
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	cmp		rax, -1
	je		end
	pop		rax

end:
	leave
	ret
