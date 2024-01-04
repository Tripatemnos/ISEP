teste:  validar_pressao.o fechar_passadores.o main.o
	gcc  validar_pressao.o fechar_passadores.o main.o -o teste

validar_pressao.o:  validar_pressao.s  validar_pressao.h
	gcc -g -Wall -Wextra -fanalyzer -c  validar_pressao.s -o  validar_pressao.o

fechar_passadores.o:  fechar_passadores.s  fechar_passadores.h
	gcc -g -Wall -Wextra -fanalyzer -c  fechar_passadores.s -o  fechar_passadores.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clear:
	rm -f *.o teste

run: teste
	./teste

debugg: teste
	gdb -tui ./teste