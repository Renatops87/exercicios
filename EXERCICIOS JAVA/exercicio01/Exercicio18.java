package exercicio01;

import java.util.Scanner;

public class Exercicio18 {

	public static void main(String[] args) {
		/*18.Fa�a um Programa que pe�a um n�mero inteiro e determine se ele �
		par ou impar. Dica: utilize o operador m�dulo (resto da divis�o). */
		
		Scanner scan = new Scanner(System.in);
		
		int num;
		
		System.out.println("Digite um numero inteiro: ");
		num = scan.nextInt();
		
		if (num % 2 == 0) {
			System.out.println("Numero � Par");
		} else {
			System.out.println("Numero � �mpar");
		}
		
	}

}
