	section	.text
	global	_ft_strdup
	extern	_ft_strlen
	extern	_ft_memcpy
	extern	_malloc

_ft_strdup:
	push	rbp
	mov		rbp, rsp
	push	rdi
	call	_ft_strlen
	cmp		rax, 0
	je		end
	mov		rdi, rax
	inc		rdi
	push	rdi
	call	_malloc
	cmp		rax, 0
	je		end
	pop		rdx
	pop		rsi
	mov		rdi, rax
	call	_ft_memcpy

end:
	leave
	ret
