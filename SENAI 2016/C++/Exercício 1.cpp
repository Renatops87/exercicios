#include <locale.h>
#include <strings.h>
#include <stdlib.h>
#include <conio.h>
#include <math.h>
#include <stdio.h> 

using namespace std;
main(){
	setlocale(LC_ALL, "Portuguese");
	//Exercício 1
	int a, b, aux;
	printf("Algoritmo troca de valor\n");
	printf("Digite um número inteiro para A: ");
	scanf("%d",&a);
	printf("Digite um número inteiro para B: ");
	scanf("%d",&b);
	aux = a;
	a = b;
	b = aux;
	printf("\nO valor de A agora é %d e de B é %d\n",a,b);
	
	system("PAUSE");
	
	return(0);
}
