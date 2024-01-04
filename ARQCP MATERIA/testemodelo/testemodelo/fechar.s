.section .text
.global fechar_passadores

fechar_passadores:
		#rdi passadores
		#esi numero de elemnentos
		#rdx fechados
  
  movl $0, %r8d   # contador
  
  loop:
  cmpl $0, %esi
  je end
  movl (%rdi), %r9d
  pushq %rdi
  movl %r9d, %edi
  
  pushq %r9
  pushq %r8
  pushq %rcx
  pushq %rdx
  
  call validar_pressao
  
  popq %rdx
  popq %rcx
  popq %r8
  popq %r9
  popq %rdi
  
  cmpl $1, %eax
  je ultrapassou
  
  addq $4, %rdi
  addq $4, %rdx
  decl %esi
  jmp loop
  
  
  ultrapassou:
  xorl $0b00000000000000000000000000000001, %r9d   #deixar todos os bits iguais e trocar apenas o primeiro
  movl %r9d, (%rdx)
  
  addq $4, %rdi  ## proximo elemento
  addq $4, %rdx	 ## proximo elemento
  decl %esi		 ## decl ao numero de elementos
  incl %r8d		 ## incl ao contador
  jmp loop
  
  end:
  movl %r8d, %eax   # mover o numero de passadores a fechar para eax 
  ret
