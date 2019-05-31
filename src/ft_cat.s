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
	sub		rsp, 0x10
	or		edi, edi
	jz		end

read:
	mov		[rbp - 0x8], rdi
	lea		rsi, [rel buff]
	mov		rdx, BUFF_SIZE
	mov		rax, MACH_SYSCALL(READ)
	syscall
	jc		error

write:
	mov		rdx, rax ; contains the len of the buffer read (read ret)
	mov		[rbp - 0x10], rdx
	lea		rsi, [rel buff]
	mov		rdi, STDOUT
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc		error
	mov		rdx, [rbp - 0x10] ; put back the read ret in rdx

read_ret_check:
	mov		rdi, [rbp - 0x8] ; put back the fd in rdi
	cmp		rdx, 0
	jne		read
	jmp		end

error:
	mov		eax, -1
end:
	leave
	ret

	section	.bss
buff		resb BUFF_SIZE
