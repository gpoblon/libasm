section .text
    global  _ft_tolower
    extern  _ft_isupper

_ft_tolower:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
    mov		[rbp - 0x8], edi
    call    _ft_isupper
    mov     ebx, eax
	mov		eax, [rbp - 0x8]
	or		ebx, ebx
	jz		end
    add     eax, 32

end:
	leave
	ret
