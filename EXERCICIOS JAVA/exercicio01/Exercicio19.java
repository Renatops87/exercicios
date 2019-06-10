package exercicio01;

import java.util.Scanner;

public class Exercicio19 {

	public static void main(String[] args) {
		/*19.Faça um Programa que leia 2 números e em seguida pergunte ao
		usuário qual operação ele deseja realizar. O resultado da operação
		deve ser acompanhado de uma frase que diga se o número é:
		a. par ou ímpar;
		b. positivo ou negativo;*/
		
		Scanner scan = new Scanner(System.in);
		
		int numero1, numero2, resultado, opcao;
		String operacao;
		operacao = "";
		resultado = 0;
		
		System.out.println("Digite o primeiro numero: ");
		numero1 = scan.nextInt();
		
		System.out.println("Digite o segundo numero: ");
		numero2 = scan.nextInt();
		
		System.out.println("");
		System.out.println("Qual operação deseja realizar: ");
		System.out.println("1 - Somar");
		System.out.println("2 - Subtrair");
		System.out.println("3 - Multiplicar");
		System.out.println("4 - Dividir");
		System.out.print  ("Digite a opção: ");
		opcao = scan.nextInt();
		
		switch(opcao) {
			case 1: 
				resultado = numero1 + numero2;
				operacao = "Soma";
			break;
			case 2: 
				resultado = numero1 - numero2;
				operacao = "Subtração";
			break;
			case 3: 
				resultado = numero1 * numero2;
				operacao = "Multiplicação";
			break;
			case 4: 
				resultado = numero1 / numero2;
				operacao = "Divisão";
			default: 
				System.out.println("Opção Inválida!!");
		}
		
		System.out.println("");
		System.out.println("Resultado da operaçao de " + operacao + " de " + numero1 + " com o numero " + numero2 + " = " + resultado);
		
		if (resultado % 2 == 0) {
			System.out.println("É um número Par");
		} else {
			System.out.println("É um número Impar");
		}
		
		if (resultado > 0) {
			System.out.println("É Positivo");
		} else {
			System.out.println("É Negativo");
		}
		
	}

}
