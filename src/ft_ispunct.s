section .text
    global	_ft_ispunct

_ft_ispunct:
	mov		rsi, 33
	mov		rdx, 47
	call	_ft_isbetween
	cmp		rax, 1
	je		end

	mov		rsi, 58
	mov		rdx, 64
	call	_ft_isbetween
	cmp		rax, 1
	je		end

	mov		rsi, 91
	mov		rdx, 96
	call	_ft_isbetween
	cmp		rax, 1
	je		end

	mov		rsi, 123
	mov		rdx, 126
	call	_ft_isbetween

_ft_isbetween:
	xor		rax, rax

	cmp		rdi, 32
	jne		end

	inc		rax

end:
	leave
	ret