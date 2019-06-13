package exercicio01;

import java.util.Scanner;

public class Exercicio10 {

	public static void main(String[] args) {
		/*10.Faça um Programa que pergunte em que turno você estuda. Peça
		para digitar M-matutino ou V-Vespertino ou N- Noturno. Imprima a
		mensagem "Bom Dia!", "Boa Tarde!" ou "Boa Noite!" ou "Valor
		Inválido!", conforme o caso. */
		
		Scanner scan = new Scanner(System.in);
		String op;
		
		System.out.println("Digite o seu turno (M/V/N): ");
		op = scan.next();
		
		switch(op) {
			case "M": System.out.println("Bom Dia!");   break;
			case "V": System.out.println("Boa Tarde!"); break;
			case "N": System.out.println("Boa Noite!"); break;
			default:  System.out.println("Valor Invalido!");
		}

	}

}
