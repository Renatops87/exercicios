package exercicio01;

import java.util.Scanner;

public class Exercicio19 {

	public static void main(String[] args) {
		/*19.Fa�a um Programa que leia 2 n�meros e em seguida pergunte ao
		usu�rio qual opera��o ele deseja realizar. O resultado da opera��o
		deve ser acompanhado de uma frase que diga se o n�mero �:
		a. par ou �mpar;
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
		System.out.println("Qual opera��o deseja realizar: ");
		System.out.println("1 - Somar");
		System.out.println("2 - Subtrair");
		System.out.println("3 - Multiplicar");
		System.out.println("4 - Dividir");
		System.out.print  ("Digite a op��o: ");
		opcao = scan.nextInt();
		
		switch(opcao) {
			case 1: 
				resultado = numero1 + numero2;
				operacao = "Soma";
			break;
			case 2: 
				resultado = numero1 - numero2;
				operacao = "Subtra��o";
			break;
			case 3: 
				resultado = numero1 * numero2;
				operacao = "Multiplica��o";
			break;
			case 4: 
				resultado = numero1 / numero2;
				operacao = "Divis�o";
			default: 
				System.out.println("Op��o Inv�lida!!");
		}
		
		System.out.println("");
		System.out.println("Resultado da opera�ao de " + operacao + " de " + numero1 + " com o numero " + numero2 + " = " + resultado);
		
		if (resultado % 2 == 0) {
			System.out.println("� um n�mero Par");
		} else {
			System.out.println("� um n�mero Impar");
		}
		
		if (resultado > 0) {
			System.out.println("� Positivo");
		} else {
			System.out.println("� Negativo");
		}
		
	}

}
