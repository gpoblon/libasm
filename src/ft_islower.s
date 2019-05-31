section .text
    global	_ft_islower

_ft_islower:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax

	cmp		edi, 97
	jl		end

	cmp		edi, 122
	jg		end

success:
	inc		eax
end:
	leave
	ret
