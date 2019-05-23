section .text
    global	_ft_islower

_ft_islower:
	push	rbp
	mov		rbp, rsp
	xor		rax, rax

	cmp		rdi, 97
	jl		end

	cmp		rdi, 122
	jg		end

	inc		rax

end:
	leave
	ret
