package exercicio01;

import java.util.Scanner;

public class Exercicio01 {

	public static void main(String[] args) {
		
		int maior;
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Digite o Primeiro Numero: ");
		int num1 = scan.nextInt();
		System.out.println("Digite o Segundo Numero: ");
		int num2 = scan.nextInt();
		
		if (num1 >= num2) {
			maior = num1;
		} else {
			maior = num2;
		}
		
		System.out.println("Maior numero = " + maior);
	}

}
