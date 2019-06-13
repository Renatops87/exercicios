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
	float valor_vendidos, salario_total, quant_vendidos;
	float salario = 1760.0;
	float porc_por_vend = 0.05;
	int comissao = 50;
	printf("REVENDEDORA DE CARROS PICA-PAU\n");
	printf("Calculo de salário total do vendedor\n");
	printf("Salario dos vendedores: R$ 1760,00\n");
	printf("Digite a quantidade de carros vendidos: ");
	scanf("%f",&quant_vendidos);
	printf("Digite o valor total em reais de carros vendidos: ");
	scanf("%f",&valor_vendidos);
	
	if(quant_vendidos && valor_vendidos != 0){
		quant_vendidos = quant_vendidos * comissao;
		valor_vendidos = valor_vendidos * porc_por_vend;
		salario_total = salario + quant_vendidos + valor_vendidos;
		printf("\nValor da comissão: R$%.2f",quant_vendidos);
		printf("\nMais 5 porcento do valor total de vendas: R$%.2f",valor_vendidos);
		printf("\nTotal do salário do vendedor: R$%.2f\n",salario_total);
	}else {
		printf("Total do salário do vendedor: %.2f\n",salario);
	}
	
	system ("PAUSE");
	
	return(0);
}
