	section	.text
	global	_ft_strcat

_ft_strcat:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
	mov		[rbp - 0x8], rdi

iter_first:
	cmp		[rdi], byte 0
	je		copy_sec
	inc		rdi
	jmp		iter_first

copy_sec:
	cmp		[rsi], byte 0
	je		end
	mov		rbx, [rsi]
	mov		[rdi], rbx
	inc		rdi
	inc		rsi
	jmp		copy_sec

end:
	mov		[rdi], byte 0
	mov		rax, [rbp - 0x8]
	leave
	ret
