package exercicio01;

import java.util.Scanner;

public class exercicio17 {

	public static void main(String[] args) {
		/*17.Fa�a um Programa que pe�a um n�mero correspondente a um
		determinado ano e em seguida informe se este ano � ou n�o bissexto*/
		
		Scanner scan = new Scanner(System.in);
		
		int ano;
		
		System.out.print("Digite o numero correspondente ao ano: ");
		ano = scan.nextInt();
		
		if (ano % 4 == 0) {
			System.out.println("Ano Bissexto");
		} else {
			System.out.println("Ano n�o � Bissexto");
		}	

	}

}
