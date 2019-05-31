section .text
	global _ft_memcpy

_ft_memcpy:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
	mov		[rbp - 0x8], rdi
	mov		rcx, rdx
	rep		movsb

end:
	mov		rax, [rbp - 0x8]
	leave
	ret
