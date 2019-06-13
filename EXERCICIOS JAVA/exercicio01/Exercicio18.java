package exercicio01;

import java.util.Scanner;

public class Exercicio18 {

	public static void main(String[] args) {
		/*18.Faça um Programa que peça um número inteiro e determine se ele é
		par ou impar. Dica: utilize o operador módulo (resto da divisão). */
		
		Scanner scan = new Scanner(System.in);
		
		int num;
		
		System.out.println("Digite um numero inteiro: ");
		num = scan.nextInt();
		
		if (num % 2 == 0) {
			System.out.println("Numero é Par");
		} else {
			System.out.println("Numero é ímpar");
		}
		
	}

}
