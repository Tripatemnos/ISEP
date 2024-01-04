#include <stdio.h>
#include "validacoes.h"

int main(){

unsigned int arr1[] = {0x03FC5702, 0x0BB89C04, 0x00C8FF06, 0x0AF0E008, 0x0EF0F00A};
unsigned int n = sizeof(arr1)/sizeof(arr1[0]);
unsigned int arr2[5]= {0};

unsigned int* passadores = arr1;
unsigned int* fechados = arr2;

int nPassadores = fechar_passadores(passadores, n, fechados);
printf("Numero de passadores por fechar: %d\n", nPassadores);


for (int i = 0; i < (sizeof(arr2)/sizeof(arr2[0]) );i++ ){
	printf("Elemento : %d\n",arr2[i]);
	
}
return 0;
}
