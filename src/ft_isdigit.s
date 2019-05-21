section .text
    global _ft_isdigit

_ft_isdigit:
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