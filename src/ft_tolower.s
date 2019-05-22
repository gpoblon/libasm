section .text
    global  _ft_tolower
    extern  _ft_isupper

_ft_tolower:
    push    rdi
    call    _ft_isupper
    mov     rbx, rax
    pop     rax
    cmp		rbx, 0
    je      end
    add     rax, 32

end:
	ret