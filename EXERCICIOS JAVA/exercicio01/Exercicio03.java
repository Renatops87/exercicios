package exercicio01;

import java.util.Scanner;

public class Exercicio03 {

	public static void main(String[] args) {
		/*3. Faça um Programa que verifique se uma letra digitada é "F" ou "M".
		Conforme a letra escrever: F - Feminino, M - Masculino, Sexo Inválido */
		
		Scanner scan = new Scanner(System.in);
		String op;
		
		System.out.println("Digite o sexo (M/F): ");
		op = scan.next();
		
		if(op.equalsIgnoreCase("m")) {
			System.out.println("Masculino");
		} else if (op.equalsIgnoreCase("f")) {
			System.out.println("Feminino");
		} else {
			System.out.println("Sexo Invalido");
		}
	}

}
