	section .text
	global _ft_abs

_ft_abs:
	push	rbp
	mov		rbp, rsp
	mov		eax, edi
	cmp		edi, 0
	jge		end

rev_neg:
	neg eax

end:
	leave
	ret
