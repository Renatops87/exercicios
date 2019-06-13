package exercicio01;

import java.util.Scanner;

public class Exercicio16 {

	public static void main(String[] args) {
		/*16.Fa�a um programa que calcule as ra�zes de uma equa��o do segundo
		grau, na forma ax2 + bx + c. O programa dever� pedir os valores de a,
		b e c e fazer as consist�ncias, informando ao usu�rio nas seguintes
		situa��es:
			a. Se o usu�rio informar o valor de A igual a zero, a equa��o n�o �
			do segundo grau e o programa n�o deve fazer pedir os demais
			valores, sendo encerrado;
			b. Se o delta calculado for negativo, a equa��o n�o possui raizes
			reais. Informe ao usu�rio e encerre o programa;
			c. Se o delta calculado for igual a zero a equa��o possui apenas
			uma raiz real; informe-a ao usu�rio;
			d. Se o delta for positivo, a equa��o possui duas raiz reais;
			informe-as ao usu�rio; */
		
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
			System.out.println("Nao � uma equacao do segundo grau");
		}

	}

}
