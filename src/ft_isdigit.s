section .text
    global	_ft_isdigit

_ft_isdigit:
	push	rbp
	mov		rbp, rsp
	xor		rax, rax

	cmp		rdi, 48
	jl		end

	cmp		rdi, 57
	jg		end

	inc		rax

end:
	leave
	ret
