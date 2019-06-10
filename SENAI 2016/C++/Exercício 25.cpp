#include <string.h>
#include <stdlib.h>
#include <conio.h>
#include <math.h>
#include <stdio.h> 
#include <locale.h>
main(){
	setlocale(LC_ALL, "Portuguese");
	//exercicio 25)
	int num,cont,maior = 0, menor = 999999999;
	float media,soma = 0;
	printf("Média, maior e menor de 10 numeros inteiros\n");
	for(cont = 0; cont < 10; cont++){
		printf("Digite um numero inteiro: ");
		scanf("%d",&num);
		if (num > maior){
			maior = num;
		}
		if (num < menor){
			menor = num;
		}
		soma = soma + num; 
	}
	media = soma/10;
	printf("O numero maior é: %d\n",maior);
	printf("O numero menor é: %d\n",menor);
	printf("A média é: %.1f\n\n",media);
	 
	system("PAUSE");
    return 0;
}
