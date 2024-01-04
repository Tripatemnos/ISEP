#include <stdio.h>
#include "validar_pressao.h"
#include "fechar_passadores.h"

int main() {
   unsigned int passadores[5] = {0x03FC5702, 0x0BB89C04, 0x00C8FF06, 0x0AF0E008, 0x0EF0F00A};
   unsigned int fechados[5] = {0, 0, 0, 0, 0};

   unsigned int validar;
   validar = validar_pressao(passadores[0]);
   printf("%d\n", validar);

   for (int i = 0; i < 5; i++) {
             printf("%d\n", passadores[i]);
      }

printf("\n---\n\n");
   int numFechados;
   numFechados = fechar_passadores(passadores, 5, fechados);

   for (int i = 0; i < numFechados; i++) {
          printf("%d\n", fechados[i]);
   }
}
