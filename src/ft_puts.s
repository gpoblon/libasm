%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4
%define NEWLINE				10
%define NULL				0

	section	.data
null_msg:	db	"(null)", NEWLINE, NULL

	section	.text
	global	_ft_puts
	extern	_ft_putchar
	extern	_ft_putstr

_ft_puts:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 0x10
	or		rdi, rdi
	jz		null_err
	call	_ft_putstr
	or		eax, eax
	jz		end
	mov		rdi, NEWLINE
	call	_ft_putchar
	jmp		end

null_err:
	lea		rdi, [rel null_msg]
	call	_ft_putstr
	cmp		eax, 0
	jge		end
error:
	mov		eax, -1
end:
	leave
	ret
