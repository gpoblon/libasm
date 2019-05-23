section .data

section .text
	global _ft_puts

_ft_puts:
	push	rbp
	mov		rbp, rsp

end:
	leave
	ret
