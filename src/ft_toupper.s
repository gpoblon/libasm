section .data

section .text
	global  _ft_toupper
	extern  _ft_islower

_ft_toupper:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
	mov		[rbp - 0x8], edi
	call    _ft_islower
	mov     edx, eax
	mov		eax, [rbp - 0x8]
	or		edx, edx
	jz		end
	sub     eax, 32

end:
	leave
	ret
