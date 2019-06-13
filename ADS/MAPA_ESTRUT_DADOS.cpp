// Aluno: Renato Pereira dos Santos //
// RA: 1812733-5 //

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

//Tamanho da Pilha
#define tamanho 5

//Estrutura do processo
struct processo {
	int id;
	char nome_processo[20];
};

//Estrutura da Pilha
struct tpilha {
	processo dados[tamanho]; // struct
	int base;
	int topo;
};

struct tpilha pilha;
int opcaoMenu;
int verificaPilha;

void menu();
void empilhar();
void desempilhar();
void esvaziar();
void mostrar_pilha();

int main() {
	
	pilha.base = 0;
	pilha.topo = 0;
	opcaoMenu = 1;
	verificaPilha = 1;
	
	while (opcaoMenu != 0) {
		system("cls");
		mostrar_pilha();
		menu();
		scanf("	%d", &opcaoMenu);
		switch(opcaoMenu) {
			case 3: empilhar(); break;
			case 2: desempilhar(); break;
			case 1: esvaziar(); break;
		}	
	}
	
	return(0);	
}

void menu() {
	printf("\n	Escolha uma opcao: \n");
	printf("	3 - Inserir um novo processo;\n");
	printf("	2 - Remover um processo;\n");
	printf("	1 - Esvaziar a pilha de processos;\n");
	printf("	0 - Sair do Programa\n");	
}

//Adicionar um elemento no topo da Pilha
void empilhar(){
	if (pilha.topo == tamanho) {
		printf("\n	PILHA CHEIA. IMPOSSIVEL EMPILHAR PROCESSOS!!\n\n");
		system("pause");
	}
	else {
		printf("\n	Digite o nome do processo: ");
		scanf("%s", &pilha.dados[pilha.topo].nome_processo);
		pilha.dados[pilha.topo].id = pilha.topo;	
		pilha.topo++;
	}
}	

//Desempilhar um elemento do topo da pilha
void desempilhar() {
	if (pilha.base == pilha.topo) {
		printf("\n	PILHA VAZIA. IMPOSSIVEL DESEMPILHAR PROCESSOS!\n\n");
		system("pause");
	}
	else {
		printf("	DESEMPILHADO PROCESSO - %d  |  %s \n\n", pilha.dados[pilha.topo-1].id, pilha.dados[pilha.topo-1].nome_processo);
		system("pause");
		pilha.dados[pilha.topo-1].id = 0;
		pilha.topo--;	
	}
}

//Esvaziar a pilha
void esvaziar() {
	int i;

	if (pilha.base == 0 && pilha.topo == 0) {
		printf("	PILHA VAZIA. IMPOSSIVEL ESVAZIAR PROCESSOS!\n\n");
		system("pause");	
	} else {
		verificaPilha == 1;
		while (pilha.topo > 0) {
			pilha.dados[pilha.topo-1].id = 0;
			pilha.topo--;
		}
	}	
}
	
//Mostrar o conteúdo da Pilha
void mostrar_pilha() {
	int i;

	if (pilha.base == 0 && pilha.topo == 0) {
		printf("	PILHA VAZIA. ADICIONE PROCESSOS!\n\n");	
	} else {
		printf("	PID  |  NOME DO PROCESSO \n");
		for (i = 0; i < tamanho; i++) {
			if (pilha.dados[i].id >= 0) {
				if (i == pilha.base && i == pilha.topo - 1) {
					printf("	  %d  |  %s <- BASE <- TOPO \n", pilha.dados[i].id, pilha.dados[i].nome_processo);	
				} else if (i == pilha.base) {
					printf(" 	  %d  |  %s <- BASE \n", pilha.dados[i].id, pilha.dados[i].nome_processo);	
				} else if (i == pilha.topo - 1) {
					printf("	  %d  |  %s <- TOPO \n", pilha.dados[i].id, pilha.dados[i].nome_processo);	
				} else if (pilha.dados[i].id != 0) {
					printf("	  %d  |  %s \n", pilha.dados[i].id, pilha.dados[i].nome_processo);
				}
			} 
		}
		printf("	\n\n");	
	}	
}
	
	


