#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#include <time.h>

// ************** estrutura do cadastro **************** //
struct pessoa{
	int codigo;
	char nome[40], 
	telefone[15],   
	rua[50], 
	numero[10], 
	complemento[10];
};
// ************** menu **************** //
void menu(){
	printf("\t--------- AGENDA ------------");
	printf("\n\t----- versão teste 1.00 -----");
	printf("\n\n\t1 - Inserir um novo contato ");
	printf("\n\t2 - Mostrar todos os cadastros ");
	printf("\n\t0 - Encerrar ");
	printf("\n\tEscolha uma opção: ");		
}

int main(){
	setlocale(LC_ALL,"portuguese");
	int opcao, i, cont;
	pessoa cadastro[5];
	cont = 0;
	i = 0;
	
	menu();
	scanf("%d",&opcao);
	do{
		switch (opcao){
			case 1:
				if(cont > 4) { // verifico se está com todos os cadastros //
					system("cls"); 
					printf("\n\t****** AGENDA LOTADA! ******\n\n");
					system("pause");
					system("cls");	
				} else {
					system("cls"); // se não está, inicia o cadastro //
					cadastro[i].codigo = rand() %10;
					srand (time(NULL));
					printf("Código do cadastro: %d",cadastro[i].codigo);
					printf("\n\nDigite o nome: ");
					fgets(cadastro[i].nome, 40, stdin);
					fflush(stdin);
					printf("\nDigite o telefone: ");
					fgets(cadastro[i].telefone, 15, stdin);  
					fflush(stdin);
					printf("\nEndereço ");
					printf("\nRua: ");
					fflush(stdin);
					fgets(cadastro[i].rua, 50, stdin);
					printf("\nNumero: ");
					fflush(stdin);
			    	fgets(cadastro[i].numero, 10, stdin);
					printf("\nComplemento: ");
					fflush(stdin);
					fgets(cadastro[i].complemento, 10, stdin);
					i++;
					cont++;
					printf("\n\n");
					system("pause");
					system("cls");
				}	
			break;
			case 2:
				if(cont == 0) { // verifico se a agenda está vazia //
				system("cls");
				printf("\n\t******** AGENDA VAZIA!! ********\n\n");
				system("pause");
				system("cls");			
				} else { // se a agenda não está vazia, mostro todos os cadastros //
					system("cls");
					for(i = 0; i < cont; i++){
						printf("\tCÓDIGO %d\n", cadastro[i].codigo);
						printf("\nNome: %s", cadastro[i].nome);
						printf("\nTelefone: %s", cadastro[i].telefone);
						printf("\nEndereço: ");
						printf("\nRua: %s - Num: %s", cadastro[i].rua, cadastro[i].numero);
						printf("\nComplemento: %s\n\n", cadastro[i].complemento);
						printf("\n------------------------------------------------\n\n");
					}
					system("pause");
					system("cls");
				}
			break;
			default:
				system("cls");
				printf("\n\tERRO. Opcão Inválida\n\n");
				system("pause");
				system("cls");	
		}
		menu();
		scanf("%d",&opcao);
	}while(opcao != 0); // se opção for zero, encerra a agenda //
	
	system("cls");
	printf("\n\tAGENDA ENCERRADA!\n\n"); 
	system("pause");

	return(0);	
}

