#include <locale.h>
#include <strings.h>
#include <stdlib.h>
#include <conio.h>
#include <math.h>
#include <stdio.h> 

using namespace std;
main(){
	setlocale(LC_ALL, "Portuguese");
	//Exercício 2
	float n;
	printf("Algoritmo F1, F2 OU F3\n");
	printf("Digite um valor para N (numero real ou inteiro): ");
	scanf("%f",&n);
	if (n <= 10){
		printf("\nF1\n");
	}
	if (n > 10 && n <= 100){
		printf("\nF2\n");
	}
	if (n > 100){
		printf("\nF3\n");
	}
	system("PAUSE");
	
	return(0);
}
