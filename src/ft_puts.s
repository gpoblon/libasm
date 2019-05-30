%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

	section	.data
null_msg:
	.str:	db	"(null)", 10
	.len:	equ $-null_msg.str
newline:
	.str:	db	10
	.len:	equ $-newline.str

	section	.text
	global	_ft_puts
	extern	_ft_strlen

_ft_puts:
	push	rbp
	mov		rbp, rsp
	push	rsi
	push	rdi
	or		rdi, rdi
	jz		null_err
	lea		rsi, [rdi]
	call	_ft_strlen
	pop		rdi
	mov		rdx, rax
	mov		rdi, STDOUT
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc		error
	lea		rsi, [rel newline.str]
	mov		rdx, newline.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc		error
	jmp		end

null_err:
	lea		rsi, [rel null_msg.str]
	mov		rdx, null_msg.len
	mov		rdi, STDOUT
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc		error
	jmp		error
error:
	mov		eax, -1
end:
	pop		rdx
	leave
	ret
