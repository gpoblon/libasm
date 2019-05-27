%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section	.data
message: db "rsi: %d", 10
hello:
	.string	db "Hello World!", 10
	.len	equ $ - hello.string


	section	.text
	global	start
	global	_main
	extern	_printf

start:
	call	_main
	ret

_main:
	push	rbp
	mov		rbp, rsp
	mov		rdi, 1
	lea		rsi, [rel hello.string]
	mov		rdx, hello.len
	mov		rax, MACH_SYSCALL(WRITE)
	syscall

end:
	leave
	ret

myprint:
	push	rbp
	mov		rbp, rsp
	push	rdi
	push	rsi
	sub		rsp, 8
	lea		rdi, [rel message]
	call	_printf
	pop		rsi
	pop		rdi
	jmp		end

