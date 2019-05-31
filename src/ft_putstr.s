%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

	section	.text
	global	_ft_putstr
	extern	_ft_strlen

_ft_putstr:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
	mov		[rbp - 0x8], rdi
	or		rdi, rdi
	jz		end

write:
	call	_ft_strlen
	mov		rdi, [rbp - 0x8]
	lea		rsi, [rdi]
	mov		rdx, rax
	mov		rdi, STDOUT
	mov		eax, MACH_SYSCALL(WRITE)
	syscall

end:
	leave
	ret
