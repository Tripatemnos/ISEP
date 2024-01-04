.section .text

.global fechar_passadores

fechar_passadores:

# %rdi ptr_passador
# %rsi tamanho
# %rdx ptr_fechador
# %rax contagem

movl $0, %eax

loop:
cmpl $0, %esi
je end

push %rdi
push %rsi
push %rax
push %rdx

movl (%rdi), %edi
call validar_pressao

cmp $0, %eax
jne fechar

pop %rdx
pop %rax
pop %rsi
pop %rdi

decl %esi
addq $4, %rdi
jmp loop

fechar:
pop %rdx
pop %rax
pop %rsi
pop %rdi

movl (%rdi), %r8d
orl $0x1, %r8d
movl %r8d, (%rdx)
addl $1, %eax

addq $4, %rdi
addq $4, %rdx
decl %esi

jmp loop

end:
ret
