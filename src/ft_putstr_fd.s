%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

	section	.text
	global	_ft_putstr_fd
	extern	_ft_strlen

_ft_putstr_fd:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
	mov		[rbp - 0x8], rsi
	mov		[rbp - 0x10], rdi
	or		rdi, rdi
	jz		end

write:
	call	_ft_strlen
	mov		rsi, [rbp - 0x10]
	mov		rdi, [rbp - 0x8]
	mov		rdx, rax
	mov		eax, MACH_SYSCALL(WRITE)
	syscall

end:
	leave
	ret
