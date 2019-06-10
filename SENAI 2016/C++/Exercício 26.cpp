#include <string.h>
#include <stdlib.h>
#include <conio.h>
#include <math.h>
#include <stdio.h> 
#include <locale.h>
main(){
	setlocale(LC_ALL, "Portuguese");
	//exercicio 26)
	int num, cont = 0, soma = -9999;
	float media;
	printf("Algoritimo soma e tira a media. Digite -99 para finalizar o programa e receber o resultado.\n");
	do{
		printf("Digite o numero (aperte enter para digitar o proximo): ");
		scanf("%d",&num);
		soma = soma + num;
		cont++;
	}while(num != 9999);
	
	cont = cont - 1;
	media = soma / cont;
	printf("Soma dos numeros: %d",soma);
	printf("\nMedia = %.1f",media);
	
	return(0);

	 
	system("PAUSE");
    return 0;
}
