section .text
	global	_ft_isprint
	extern	_ft_isalnum
	extern	_ft_ispunct
	extern	_ft_isspace

_ft_isprint:
	xor		rax, rax

	cmp		rdi, 32
	jl			end

	cmp		rdi, 126
	jg			end

	inc		rax
	ret

end:
   ret