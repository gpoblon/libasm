section .text
	global _ft_strlen

_ft_strlen:
	push	rbp
	mov		rbp, rsp
	xor		rax, rax

loop:
	cmp		[rdi + rax], byte 0
	je		end
	inc		rax
	jmp		loop

end:
	leave
	ret
