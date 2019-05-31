	section .text
	global _ft_bzero

_ft_bzero:
	push	rbp
	mov		rbp, rsp
	mov		rdx, rsi
	cmp		rdx, 4
	jl		zero_check

loopbyte:
	sub		rdx, 4
	mov		dword [rdi + rdx], 0
	cmp		rdx, 4
	jge		loopbyte

zero_check:
	or		rdx, rdx
	jz		end

loop:
	dec		rdx
	mov		[rdi + rdx], byte 0
	or		rdx, rdx
	jnz		loop

end:
	leave
	ret
