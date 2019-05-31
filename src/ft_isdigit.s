section .text
    global	_ft_isdigit

_ft_isdigit:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax

	cmp		edi, 48
	jl		end

	cmp		edi, 57
	jg		end

success:
	inc		eax

end:
	leave
	ret
