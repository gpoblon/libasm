section .text
    global	_ft_isspace

_ft_isspace:
	xor		rax, rax

	cmp		rdi, 32
	jne		end

	inc		rax

end:
	ret