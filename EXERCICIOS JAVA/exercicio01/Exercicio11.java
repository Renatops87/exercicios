package exercicio01;

import java.util.Scanner;

public class Exercicio11 {

	public static void main(String[] args) {
		/*11.As Organizações Tabajara resolveram dar um aumento de salário aos
		seus colaboradores e lhe contraram para desenvolver o programa que
		calculará os reajustes.
		o Faça um programa que recebe o salário de um colaborador e o
		reajuste segundo o seguinte critério, baseado no salário atual:
		o salários até R$ 280,00 (incluindo) : aumento de 20%
		o salários entre R$ 280,00 e R$ 700,00 : aumento de 15%
		o salários entre R$ 700,00 e R$ 1500,00 : aumento de 10%
		o salários de R$ 1500,00 em diante : aumento de 5% Após o
		aumento ser realizado, informe na tela:
		o o salário antes do reajuste;
		o o percentual de aumento aplicado;
		o o valor do aumento;
		o o novo salário, após o aumento.*/
		
		double salario, percentualAumento, valorAumento, novoSalario;
		Scanner scan = new Scanner(System.in);
		
		System.out.print("Digite o salario do colaborador: ");
		salario = scan.nextDouble();
		
		if (salario <= 280) {
			percentualAumento = 20;
			valorAumento = salario * (percentualAumento / 100);
			novoSalario  = salario + valorAumento; 
		} else if (salario < 700) {
			percentualAumento = 15;
			valorAumento = salario * (percentualAumento / 100);
			novoSalario  = salario + valorAumento; 
		} else if (salario < 1500) {
			percentualAumento = 10;
			valorAumento = salario * (percentualAumento / 100);
			novoSalario  = salario + valorAumento; 
		} else {
			percentualAumento = 5;
			valorAumento = salario * (percentualAumento / 100);
			novoSalario  = salario + valorAumento; 
		}
		
		System.out.println("Salario Atual: "    + salario);
		System.out.println("% de Aumento: "     + percentualAumento);
		System.out.println("Valor do Aumento: " + valorAumento);
		System.out.println("Novo Salario: "     + novoSalario);
	}

}
