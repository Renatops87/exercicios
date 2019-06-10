/*Imagine que voc� � um freelancer desenvolvedor de sistemas e que possui uma ampla carteira de clientes. 
Como voc� n�o gosta dos sistemas de agenda eletr�nica existentes, 
voc� decide que ir� criar sua pr�pria aplica��o de registro e manuten��o de clientes. 
Inicialmente, voc� dever� programar uma agenda em vers�o beta (vers�o de teste), 
que permite armazenar o cadastro de, no m�ximo, 5 (cinco) clientes por vez.

A aplica��o dever� armazenar, para cada cliente:
A) Um c�digo �nico, gerado automaticamente pelo sistema;
B) Seu nome;
C) Seu telefone;
D) Seu endere�o (rua, n�mero, complemento);

O programa dever� apresentar um menu de op��es ao usu�rio:

1 � Inserir um novo cadastro: ao selecionar essa op��o, o usu�rio dever� ser capaz de informar todos os dados de um cliente. 
A saber, seu nome, telefone e endere�o. Caso o programa j� tenha armazenado o n�mero m�ximo de clientes (cinco), 
dever� ser exibida a mensagem �Agenda lotada!�. 
O c�digo de um cadastro deve ser preenchido automaticamente pelo sistema e o usu�rio n�o deve ter a op��o de alterar esse c�digo;

2 � Mostrar todos os cadastros: ao selecionar essa op��o, o programa dever� imprimir, na tela, 
para cada cliente, seu c�digo, seu nome, seu telefone e seu endere�o. 
Essa op��o dever� mostrar na tela apenas os dados dos clientes que foram cadastrados. 
Caso seja impressa alguma informa��o sobressalente, ou faltem informa��es, 
ser� considerado um erro de programa��o. Caso nenhum cliente tenha sido cadastrado antes de selecionar essa op��o, 
o programa dever� exibir a mensagem �Agenda vazia!�.;

0 � Encerrar: ao selecionar essa op��o, o programa se encerra.

Caso o usu�rio escolha uma op��o que n�o conste no menu, o programa dever� exibir uma mensagem de erro como, por exemplo, 
�Erro: op��o inv�lida!�. Caso contr�rio, o programa n�o dever� imprimir essa mensagem de erro.

A sua atividade MAPA deve ser entregue em um arquivo de c�digo fonte para linguagem C (extens�o .c ou .cpp).
Algumas fun��es que ser�o �teis durante o desenvolvimento do programa:

system(�pause�) � chamada de sistema que �pausa� o programa e o faz aguardar pelo usu�rio;

system(�cls�) � chamada de sistema que limpa os caracteres que foram impressos na tela anteriormente;

fflush(stdin) � limpar o buffer do teclado. Essa fun��o deve sempre ser utilizada ap�s ter utilizado alguma fun��o de 
entrada de dados como o scanf, gets, etc. Isso se d� pois em algumas situa��es o buffer do teclado mant�m �lixo de mem�ria�, 
prejudicando a pr�xima opera��o de entrada do programa. */

#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#include <time.h>

// ************** estrutura do cadastro **************** //
struct pessoa{
	int codigo;
	char nome[30], 
		telefone[15], 
		rua[50], 
		numero[10], 
		complemento[10];
};
// ************** menu **************** //
void menu(){
	printf("\t--------- AGENDA ------------");
	printf("\n\t----- vers�o teste 1.00 -----");
	printf("\n\n\t1 - Inserir um novo contato ");
	printf("\n\t2 - Mostrar todos os cadastros ");
	printf("\n\t0 - Encerrar ");
	printf("\n\tEscolha uma op��o: ");		
}

int main(){
	setlocale(LC_ALL,"portuguese");
	int opcao, i, cont, x;
	pessoa cadastro[5];
	cont = 0;
	
	menu();
	scanf("%d",&opcao);
	while(x != 0);{
		switch (opcao){
		case 1:
			if((cont == 5) || (cont > 5)) { // verifico se est� com todos os cadastros //
					system("cls");
					printf("\n\t****** AGENDA LOTADA! ******\n\n");
					system("pause");
					system("cls");
					menu();
					scanf("%d",&opcao);	
					x = opcao;		
			} 
			for(i = 0; i < 5; i++){
				if((cont == 5) || (cont > 5)) { // verifico se est� com todos os cadastros //
					system("cls");
					printf("\n\t****** AGENDA LOTADA! ******\n\n");
					i++;
					system("pause");
					system("cls");
					menu();
					scanf("%d",&opcao);
					x = opcao;			
				} else { // se n�o est�, inicia o cadastro //
					system("cls");
					cadastro[i].codigo = rand() %10;
					srand (time(NULL));
					printf("C�digo do cadastro: %d",cadastro[i].codigo);
					printf("\n\nDigite o nome: ");
					fflush(stdin);
					gets(cadastro[i].nome);
					printf("\nDigite o telefone: ");
					fflush(stdin);
					gets(cadastro[i].telefone);
					printf("\nEndere�o ");
					printf("\nRua: ");
					fflush(stdin);
					gets(cadastro[i].rua);
					printf("\nNumero: ");
					fflush(stdin);
					gets(cadastro[i].numero);
					printf("\nComplemento: ");
					fflush(stdin);
					gets(cadastro[i].complemento);
					cont++;
				}
			}
		break;
		case 2: 
			if(cont == 0) { // verifico se a agenda est� vazia //
				system("cls");
				printf("\n\t ****** AGENDA VAZIA!! *******\n\n");
				system("pause");
				system("cls");	
				menu();
				scanf("%d",&opcao);
				x = opcao;		
			} else { // se a agenda n�o est� vazia, mostro todos os cadastros //
				system("cls");
				for(i = 0; i < 5; i++){
					printf("CADASTRO %d", i);
					printf("\nC�digo: %d",cadastro[i].codigo);
					printf("\nNome: %s", cadastro[i].nome);
					printf("\nTelefone: %s", cadastro[i].telefone);
					printf("\nEndere�o: ");
					printf("\nRua: %s - Num: %s", cadastro[i].rua, cadastro[i].numero);
					printf("\nComplemento: %s", cadastro[i].complemento);
				}	
			}
		break;
		case 0:
			system("cls");
			printf("\n\tENCERRANDO AGENDA!\n\n"); 
			system("pause");
			exit(0);
		break;
		default: 
			system("cls");
			printf("\n\tERRO. Opc�o Inv�lida");
		}
	}
	
	return(0);	
}

