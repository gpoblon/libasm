section .text
	global  _ft_isalpha
	extern  _ft_islower
	extern  _ft_isupper

_ft_isalpha:
	call	_ft_islower
	cmp		rax, 1
	je		end

	call	_ft_isupper
	ret

end:
   ret