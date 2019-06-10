package exercicio01;

import java.util.Scanner;

public class Exercicio11 {

	public static void main(String[] args) {
		/*11.As Organiza��es Tabajara resolveram dar um aumento de sal�rio aos
		seus colaboradores e lhe contraram para desenvolver o programa que
		calcular� os reajustes.
		o Fa�a um programa que recebe o sal�rio de um colaborador e o
		reajuste segundo o seguinte crit�rio, baseado no sal�rio atual:
		o sal�rios at� R$ 280,00 (incluindo) : aumento de 20%
		o sal�rios entre R$ 280,00 e R$ 700,00 : aumento de 15%
		o sal�rios entre R$ 700,00 e R$ 1500,00 : aumento de 10%
		o sal�rios de R$ 1500,00 em diante : aumento de 5% Ap�s o
		aumento ser realizado, informe na tela:
		o o sal�rio antes do reajuste;
		o o percentual de aumento aplicado;
		o o valor do aumento;
		o o novo sal�rio, ap�s o aumento.*/
		
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
