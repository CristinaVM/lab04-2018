#include <stdio.h>

int main(void) {
	hanoi(3, 1, 2, 3);
}

void hanoi(int NumeroDeDiscos, int T_Origen, int T_Destino, int T_Alterna){
	if(NumeroDeDiscos == 1) {
		printf("mueva el disco de la torre "); 
		printf("%i", T_Origen);
		printf(" hacia la torre "); 
		printf("%i", T_Destino); 
		printf("\n");
	} else {
		hanoi(NumeroDeDiscos - 1, T_Origen, T_Alterna, T_Destino);
		hanoi(1, T_Origen, T_Destino, T_Alterna);
		hanoi(NumeroDeDiscos - 1, T_Alterna, T_Destino, T_Origen);
	}
}