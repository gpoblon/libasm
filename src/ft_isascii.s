section .text
    global _ft_isascii

_ft_isascii:
	push ebp
	mov ebp, esp

	mov rax, 0

	cmp rdi, 0
	jl end

	cmp rdi, 127
	jg end

	mov rax, 1

end:
	leave
	ret