section .text
	global  _ft_isalpha
	extern  _ft_islower
	extern  _ft_isupper

_ft_isalpha:
	push	rbp
	mov		rbp, rsp
	call	_ft_islower
	cmp		eax, 1
	je		end
	call	_ft_isupper

end:
	leave
	ret
