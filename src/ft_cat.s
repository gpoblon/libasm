%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define READ				3
%define BUFF_SIZE			1024
%define WRITE				4

	section	.text
	global	_ft_cat
	global	_ft_puts

_ft_cat:
	push	rbp
	mov		rbp, rsp
	cmp		rdi, -1
	jle		end

read:
	push	rdi
	lea		rsi, [rel buff]
	mov		rdx, BUFF_SIZE
	mov		rax, MACH_SYSCALL(READ)
	syscall

write:
	mov		rdx, rax ; contains the len of the buffer read (read ret)
	push	rdx
	lea		rsi, [rel buff]
	mov		rdi, STDOUT
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	pop		rdx ; put back the read ret in rdx

read_ret_check:
	pop		rdi ; put back the fd in rdi
	cmp		rdx, 0
	jne		read

end:
	leave
	ret

	section	.bss
buff		resb BUFF_SIZE
