section .text
    global	_ft_isspace

_ft_isspace:
	push	rbp
	mov		rbp, rsp
	xor		rax, rax

	cmp		rdi, 32
	je		success

	cmp		rdi, 9
	jl		end

	cmp		rdi, 13
	jg		end

success:
	inc		rax

end:
	leave
	ret
