section .text
    global	_ft_isspace

_ft_isspace:
	push	rbp
	mov		rbp, rsp
	xor		rax, rax

	cmp		rdi, 32
	jne		end

	inc		rax

end:
	leave
	ret
