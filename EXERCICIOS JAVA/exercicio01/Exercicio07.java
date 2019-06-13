package exercicio01;

import java.util.Scanner;

public class Exercicio07 {

	public static void main(String[] args) {
		/*7. Faça um Programa que leia três números e mostre o maior e o menor
		deles.*/
		
		Scanner scan = new Scanner(System.in);
		int num1, num2, num3, maior, menor;
		
		System.out.println("Digite tres numeros: ");
		num1 = scan.nextInt();
		num2 = scan.nextInt();
		num3 = scan.nextInt();
		
		maior = num1;
		if (num2 >= maior) {
			maior = num2;
			menor = num1;
		} else {
			menor = num2;
		}
		if (num3 >= maior) {
			maior = num3;
		} else if (num3 <= menor) {
			menor = num3;
		}
		
		System.out.println("Maior Numero: " + maior);
		System.out.println("Menor Numero: " + menor);
	}

}
