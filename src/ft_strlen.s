section .text
	global _ft_strlen

_ft_strlen:
	push	rbp
	mov		rbp, rsp

	xor		al, al
	mov		rcx, 0xffffffff
	repnz	scasb
	mov		rax, 0xfffffffe
	sub		rax, rcx

end:
	leave
	ret
