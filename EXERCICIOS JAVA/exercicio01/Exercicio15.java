package exercicio01;

import java.util.Scanner;

public class Exercicio15 {

	public static void main(String[] args) {
		/*15.Fa�a um Programa que pe�a os 3 lados de um tri�ngulo. O programa
		dever� informar se os valores podem ser um tri�ngulo. Indique, caso
		os lados formem um tri�ngulo, se o mesmo �: equil�tero, is�sceles ou
		escaleno.
			o Dicas:
			o Tr�s lados formam um tri�ngulo quando a soma de quaisquer
				dois lados for maior que o terceiro;
			o Tri�ngulo Equil�tero: tr�s lados iguais;
			o Tri�ngulo Is�sceles: quaisquer dois lados iguais;
			o Tri�ngulo Escaleno: tr�s lados diferentes;*/
		
		Scanner scan = new Scanner(System.in);
		int lado1, lado2, lado3;
		
		System.out.print("Digite os tres lados do triangulo: ");
		lado1 = scan.nextInt();
		lado2 = scan.nextInt();
		lado3 = scan.nextInt();
		
		System.out.println();
		
		if ((lado1 + lado2) > lado3 && (lado1 + lado3) > lado2 && (lado2 + lado3) > lado1) {
			System.out.println("FORMA UM TRIANGULO!");
			if (lado1 == lado2 && lado2 == lado3) {
				System.out.println("EQUILATERO");
			} else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3) {
				System.out.println("ISOSCELES");
			} else {
				System.out.println("ESCALENO");
			}
		} else {
			System.out.println("NAO FORMA UM TRIANGULO!");
		}		
	}

}
