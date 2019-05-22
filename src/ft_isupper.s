section .text
    global	_ft_isupper

_ft_isupper:
	xor		rax, rax

	cmp		rdi, 65
	jl		end

	cmp		rdi, 90
	jg		end

	inc		rax
	ret

end:
	ret