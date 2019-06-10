package exercicio01;

import java.util.Scanner;

public class Exercicio02 {

	public static void main(String[] args) {
		/* 2. Faça um Programa que peça um valor e mostre na tela se o valor é
			  positivo ou negativo */
		
		int valor;
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Digite um numero: ");
		valor = scan.nextInt();
		
		if (valor >= 0) {
			System.out.println("Numero Positivo");
		} else {
			System.out.println("Numero Negativo");
		}

	}

}
