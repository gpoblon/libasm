section .text
    global	_ft_isascii

_ft_isascii:
	push	rbp
	mov		rbp, rsp
	xor		rax, rax

	cmp		rdi, 0
	jl		end

	cmp		rdi, 127
	jg		end

success:
	inc		rax

end:
	leave
	ret
