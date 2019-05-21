section .text
    global	_ft_islower

_ft_islower:
	xor		rax, rax

	cmp		rdi, 97
	jl		end

	cmp		rdi, 122
	jg		end

	inc		rax

end:
	ret