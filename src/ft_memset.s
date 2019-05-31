section .text
	global _ft_memset

_ft_memset:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
	mov		[rbp - 0x8], rdi
	mov		rcx, rdx
	mov		al, sil
	rep		stosb

end:
	mov		rax, [rbp - 0x8]
	leave
	ret
