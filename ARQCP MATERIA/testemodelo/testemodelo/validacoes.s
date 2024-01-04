.section .text
.global validar_pressao

validar_pressao: 
movl $0, %eax
movl %edi, %eax


shrl $8, %edi
andl $0b00000000000000000000001111111111, %edi ## limite no edi
shrl $18, %eax
andl $0b00000000000000000011111111111111, %eax ## pressao atual no eax
movl $100, %ecx
imull %ecx, %eax
cltd
divl %edi 

cmpl $120, %eax
jg maior
movl $0, %eax
jmp end

maior: 
movl $1, %eax

end:
ret
