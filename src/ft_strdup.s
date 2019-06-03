	section	.text
	global	_ft_strdup
	extern	_ft_strlen
	extern	_ft_memcpy
	extern	_malloc

_ft_strdup:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
	mov		[rbp - 0x8], rdi
	call	_ft_strlen
	inc		rax
	mov		[rbp - 0x10], rax
	mov		rdi, rax
	call	_malloc
	or		rax, rax
	jz		end
	mov		rdx, [rbp - 0x10]
	mov		rsi, [rbp - 0x8]
	mov		rdi, rax
	call	_ft_memcpy

end:
	leave
	ret
