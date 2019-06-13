package exercicio01;

import java.util.Scanner;

public class exercicio17 {

	public static void main(String[] args) {
		/*17.Faça um Programa que peça um número correspondente a um
		determinado ano e em seguida informe se este ano é ou não bissexto*/
		
		Scanner scan = new Scanner(System.in);
		
		int ano;
		
		System.out.print("Digite o numero correspondente ao ano: ");
		ano = scan.nextInt();
		
		if (ano % 4 == 0) {
			System.out.println("Ano Bissexto");
		} else {
			System.out.println("Ano não é Bissexto");
		}	

	}

}
