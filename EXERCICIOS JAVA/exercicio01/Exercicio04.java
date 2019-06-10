package exercicio01;

import java.util.Scanner;

public class Exercicio04 {

	public static void main(String[] args) {
		/*4-Faça um Programa que verifique se uma letra digitada é vogal ou
		consoante. */
		
		String letra;
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Digite uma letra: ");
		letra = scan.next();
		
		switch(letra) {
			case "a":
			case "e":
			case "i":
			case "o":
			case "u": System.out.println("VOGAL"); break;
			default:  System.out.println("CONSOANTE");
		}

	}

}
