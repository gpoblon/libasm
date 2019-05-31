section .text
    global  _ft_tolower
    extern  _ft_isupper

_ft_tolower:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
    mov		[rbp - 0x8], edi
    call    _ft_isupper
    mov     edx, eax
	mov		eax, [rbp - 0x8]
	or		edx, edx
	jz		end
    add     eax, 32

end:
	leave
	ret
