package exercicio01;

import java.util.Scanner;

public class Exercicio12 {

	public static void main(String[] args) {
		/*12.Fa�a um programa para o c�lculo de uma folha de pagamento,
		sabendo que os descontos s�o do Imposto de Renda, que depende do sal�rio bruto (conforme tabela abaixo) 
		e 3% para o Sindicato e que o
		FGTS corresponde a 11% do Sal�rio Bruto, mas n�o � descontado (�
		a empresa que deposita). O Sal�rio L�quido corresponde ao Sal�rio
		Bruto menos os descontos. O programa dever� pedir ao usu�rio o
		valor da sua hora e a quantidade de horas trabalhadas no m�s.
		o Desconto do IR:
		o Sal�rio Bruto at� 900 (inclusive) - isento
		o Sal�rio Bruto at� 1500 (inclusive) - desconto de 5%
		o Sal�rio Bruto at� 2500 (inclusive) - desconto de 10%
		o Sal�rio Bruto acima de 2500 - desconto de 20% Imprima na tela
		as informa��es, dispostas conforme o exemplo abaixo. No
		exemplo o valor da hora � 5 e a quantidade de hora � 220.*/
		
		double salarioBruto, salarioLiquido, totalDesconto, valorINSS, valorDescIR, valorFGTS, percentualIR, valorHora;
		int qtdHoras;
		Scanner scan = new Scanner(System.in);
		
		System.out.print("Digite o Valor da Hora: ");
		valorHora= scan.nextDouble();
		System.out.print("Digite a Quantidade de horas trabalhadas: ");
		qtdHoras = scan.nextInt();
		
		salarioBruto = qtdHoras * valorHora;		
		valorINSS    = salarioBruto * 0.1;
		valorFGTS    = salarioBruto * 0.11;
		percentualIR = 0;
		
		if (salarioBruto <= 900) {
			valorDescIR = 0;
		} else if (salarioBruto <= 1500) {
			percentualIR = 5;
			valorDescIR = salarioBruto * (percentualIR / 100);
		} else if (salarioBruto <= 2500) {
			percentualIR = 10;
			valorDescIR = salarioBruto * (percentualIR / 100);
		} else {
			percentualIR = 20;
			valorDescIR = salarioBruto * (percentualIR / 100);
		} 
		
		totalDesconto = valorINSS + valorDescIR;
		salarioLiquido = salarioBruto - totalDesconto;
		
		System.out.println("Salario Bruto: " + "(" + qtdHoras + " * " + valorHora +")" + "   : R$ " + salarioBruto);
		if (valorDescIR == 0) {
			System.out.println("(-) IR  ("+percentualIR+"%)" + "               : ISENTO");
		} else {
			System.out.println("(-) IR  ("+percentualIR+"%)" + "               : R$ " + valorDescIR);
		}
		System.out.println("(-) INSS (10%)               : R$ " + valorINSS);
		System.out.println("FGTS (11%)                   : R$ " + valorFGTS);
		System.out.println("Total de Descontos           : R$ " + totalDesconto);
		System.out.println("Salario Liquido              : R$ " + salarioLiquido);

	}

}
