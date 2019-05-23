section .text
	global _ft_strlen

_ft_strlen:
	push	rbp
	mov		rbp, rsp
	push	rbx
	push	rcx

	xor		al, al
	mov		rbx, rdi
	mov		rcx, 0xffffffff

	repne	scasb

	sub		rdi, rbx
	mov		rax, rdi

end:
	pop		rcx
	pop		rbx
	leave
	ret
