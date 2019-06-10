package exercicio01;

import java.util.Scanner;

public class Exercicio16 {

	public static void main(String[] args) {
		/*16.Faça um programa que calcule as raízes de uma equação do segundo
		grau, na forma ax2 + bx + c. O programa deverá pedir os valores de a,
		b e c e fazer as consistências, informando ao usuário nas seguintes
		situações:
			a. Se o usuário informar o valor de A igual a zero, a equação não é
			do segundo grau e o programa não deve fazer pedir os demais
			valores, sendo encerrado;
			b. Se o delta calculado for negativo, a equação não possui raizes
			reais. Informe ao usuário e encerre o programa;
			c. Se o delta calculado for igual a zero a equação possui apenas
			uma raiz real; informe-a ao usuário;
			d. Se o delta for positivo, a equação possui duas raiz reais;
			informe-as ao usuário; */
		
		Scanner scan = new Scanner(System.in);
		
		int a,b,c;
		double delta, x1, x2;
		
		System.out.print("Digite os valores de a, b e c: ");
		a = scan.nextInt();
		b = scan.nextInt();
		c = scan.nextInt();
		
		if (a > 0) {
			delta = (b^2) - 4 * a * c;
			if (delta < 0) {
				System.out.println("Equacao nao possui raizes reais");
			} else if (delta == 0) {
				x1 = -b + (Math.sqrt(delta)) / (2 * a);
				System.out.println("Equacao possui apenas uma raiz real");
				System.out.println("Raiz = " + x1);
			} else {
				x1 = (-b + (Math.sqrt(delta))) / (2 * a);
				x2 = (-b - (Math.sqrt(delta))) / (2 * a);
				System.out.println("Equacao possui duas raizes reais");
				System.out.println("Raiz 1 = " + Math.round(x1));
				System.out.println("Raiz 2 = " + Math.round(x2));
			}
		} else {
			System.out.println("Nao é uma equacao do segundo grau");
		}

	}

}
