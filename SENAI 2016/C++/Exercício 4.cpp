#include <locale.h>
#include <strings.h>
#include <stdlib.h>
#include <conio.h>
#include <math.h>
#include <stdio.h> 

using namespace std;
main(){
	setlocale(LC_ALL, "Portuguese");
	//Exercício 4
	float a,b,c,soma = 0;
	printf("Algoritmo soma a b > c?\n");
	printf("Digite o valor de A: ");
	scanf("%f",&a);
	printf("Digite o valor de B: ");
	scanf("%f",&b);
	printf("Digite o valor de C: ");
	scanf("%f",&c);
	soma = a + b;
	if(soma > c){
		printf("\nResultado a + b  = %.1f é maior que C.\n",soma);
	}else if (soma < c){
		printf("\nResultado a + b  = %.1f é menor que C.\n",soma);
	}else{
		printf("\nResultado a + b  = %.1f é igual que C.\n",soma);
	}
	
	system ("PAUSE");
	
	return(0);
}
