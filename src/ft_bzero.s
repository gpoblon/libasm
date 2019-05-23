section .data

section .text
	global _ft_bzero

_ft_bzero:
	push	rbp
	mov		rbp, rsp

end:
	leave
	ret
