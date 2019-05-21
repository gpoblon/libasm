section .text
	global	_ft_isprint
	extern	_ft_isalnum
	extern	_ft_ispunct
	extern	_ft_isspace

_ft_isprint:
   call		_ft_isalnum
	cmp		rax, 1
	je			end

	call		_ft_ispunct
	cmp		rax, 1
	je			end

	call		_ft_isspace

end:
   ret