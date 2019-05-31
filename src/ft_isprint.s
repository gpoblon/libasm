section .text
	global	_ft_isprint

_ft_isprint:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax

	cmp		edi, 32
	jl		end

	cmp		edi, 126
	jg		end

success:
	inc		eax

end:
	leave
	ret
