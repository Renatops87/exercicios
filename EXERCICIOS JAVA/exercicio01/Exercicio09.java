package exercicio01;

import java.util.Scanner;

public class Exercicio09 {

	public static void main(String[] args) {
		/*9. Faça um Programa que leia três números e mostre-os em ordem
		decrescente. */
		
		Scanner scan = new Scanner(System.in);
		int num1, num2, num3, maior, menor, inter;
		
		System.out.println("Digite tres numeros: ");
		num1 = scan.nextInt();
		num2 = scan.nextInt();
		num3 = scan.nextInt();
		
		maior = num1; 
		menor = num1; 
		inter = num1; 
		
		if (num2 >= maior && num2 >= num3) {
			maior = num2;
		} else if (num2 <= menor && num2 <= num3) {
			menor = num2;
		} else {
			inter = num2;
		}
		
		if (num3 >= maior) {
			maior = num3;
		} else if (num3 <= menor) {
			menor = num3;
		} else {
			inter = num3;
		}
		
		System.out.println("Maior Numero: " + maior + " " + inter + " " + menor);
	}

}
