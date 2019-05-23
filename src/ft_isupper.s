section .text
    global	_ft_isupper

_ft_isupper:
	push	rbp
	mov		rbp, rsp
	xor		rax, rax

	cmp		rdi, 65
	jl		end

	cmp		rdi, 90
	jg		end

success:
	inc		rax

end:
	leave
	ret
