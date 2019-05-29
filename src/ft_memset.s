section .text
	global _ft_memset

_ft_memset:
	push	rbp
	mov		rbp, rsp
	push	rdi
	mov		rcx, rdx
	mov		al, sil
	rep		stosb

end:
	pop		rax
	leave
	ret
