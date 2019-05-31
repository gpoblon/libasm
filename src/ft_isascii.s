section .text
    global	_ft_isascii

_ft_isascii:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax

	cmp		edi, 0
	jl		end

	cmp		edi, 127
	jg		end

success:
	inc		eax

end:
	leave
	ret
