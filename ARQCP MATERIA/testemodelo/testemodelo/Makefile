#Makefile exmodelo

exmodelo: main.o fechar.o validacoes.o 
		gcc main.o fechar.o validacoes.o  -z noexecstack -o exmodelo
		
main.o: main.c validacoes.h
		gcc -c main.c -o main.o
		
fechar.o: fechar.s
		gcc -c fechar.s -o fechar.o	
			
validacoes.o: validacoes.s
		gcc -c validacoes.s -o validacoes.o


		
run: exmodelo
		./exmodelo
		
clean: 
		rm *.o exmodelo
