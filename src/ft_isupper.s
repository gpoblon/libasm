section .text
    global	_ft_isupper

_ft_isupper:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax

	cmp		edi, 65
	jl		end

	cmp		edi, 90
	jg		end

success:
	inc		eax

end:
	leave
	ret
