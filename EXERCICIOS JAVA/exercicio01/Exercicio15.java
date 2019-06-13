package exercicio01;

import java.util.Scanner;

public class Exercicio15 {

	public static void main(String[] args) {
		/*15.Faça um Programa que peça os 3 lados de um triângulo. O programa
		deverá informar se os valores podem ser um triângulo. Indique, caso
		os lados formem um triângulo, se o mesmo é: equilátero, isósceles ou
		escaleno.
			o Dicas:
			o Três lados formam um triângulo quando a soma de quaisquer
				dois lados for maior que o terceiro;
			o Triângulo Equilátero: três lados iguais;
			o Triângulo Isósceles: quaisquer dois lados iguais;
			o Triângulo Escaleno: três lados diferentes;*/
		
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
