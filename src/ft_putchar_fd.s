%define MACH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

	section .text
	global _ft_putchar_fd

_ft_putchar_fd:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
	cmp		esi, 0
	jl		error

set_char:
	mov		dl, dil
	xor		rdi, rdi
	mov		dil, dl
	mov		[rbp - 0x8], rdi

write:
	mov		rdi, rsi
	lea		rsi, [rbp - 0x8]
	mov		rdx, 1
	mov		eax, MACH_SYSCALL(WRITE)
	syscall
	jc		error
	mov		eax, [rbp - 0x8]
	jmp		end

error:
	mov		eax, -1

end:
	leave
	ret
