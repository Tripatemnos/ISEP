.section .text

.global validar_pressao

validar_pressao:

# %rdi = passador
# %rsi = limite
# %rax = pressao


movq %rdi, %rax # make a copy of passador
shrq $8, %rdi
andq $0x3FF, %rdi
movl %edi, %esi #limite

shrq $18, %rax #pressao

imull $100, %eax

cltd

idivl %esi

cmp $120, %eax
jg bigger
jl smaller

bigger:
movl $1, %eax
ret

smaller:
movl $0, %eax
ret
