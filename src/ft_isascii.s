section .text
    global	_ft_isascii

_ft_isascii:
	xor		rax, rax

	cmp		rdi, 0
	jl		end

	cmp		rdi, 127
	jg		end

	inc		rax
	ret

end:
	ret