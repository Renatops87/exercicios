#include <locale.h>
#include <strings.h>
#include <stdlib.h>
#include <conio.h>
#include <math.h>
#include <stdio.h> 

using namespace std;
main(){
	setlocale(LC_ALL, "Portuguese");
	//Exercício 3
	int nasc,idade,dias;
	printf("Algoritmo quantidade de dias que vc ja viveu\n");
	printf("Digite o ano que vc nasceu: ");
	scanf("%d",&nasc);
	idade = 2016 - nasc;
	printf("\nSua idade é: %d",idade);
	dias  = idade * 360;
	printf("\nVocê ja viveu %d dias\n",dias);
	system ("PAUSE");
	
	return(0);
}
