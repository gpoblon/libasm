	section .text
	global _ft_bzero

loopbyte:
	sub		rdx, 4
	mov		[rdi + rdx], dword 0
	cmp		rdx, 4
	jge		loopbyte
_ft_bzero:
	push	rbp
	mov		rbp, rsp
	mov		rdx, rsi
;	cmp		rdx, 4
;	jge		loopbyte
	cmp		rdx, 0
	je		end

loop:
	sub		rdx, 1
	mov		[rdi + rdx], byte 0
	cmp		rdx, 0
	jne		loop

end:
	leave
	ret
