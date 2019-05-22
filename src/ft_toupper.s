section .data

section .text
	global  _ft_toupper
	extern  _ft_islower

_ft_toupper:
	push    rdi
	call    _ft_islower
	mov     rbx, rax
	pop     rax
	cmp		rbx, 0
	je      end
	sub     rax, 32

end:
	ret
