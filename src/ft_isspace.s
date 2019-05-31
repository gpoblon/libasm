section .text
    global	_ft_isspace

_ft_isspace:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax

	cmp		edi, 32
	je		success

	cmp		edi, 9
	jl		end

	cmp		edi, 13
	jg		end

success:
	inc		eax

end:
	leave
	ret
