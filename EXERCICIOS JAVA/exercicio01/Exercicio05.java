package exercicio01;

import java.util.Scanner;

public class Exercicio05 {

	public static void main(String[] args) {
		/*5. Faça um programa para a leitura de duas notas parciais de um aluno.
		O programa deve calcular a média alcançada por aluno e apresentar:
		o A mensagem "Aprovado", se a média alcançada for maior ou
		igual a sete;
		o A mensagem "Reprovado", se a média for menor do que sete;
		o A mensagem "Aprovado com Distinção", se a média for igual a
		dez.*/
		
		double nota1, nota2, media;
		Scanner scan = new Scanner(System.in);
		
		System.out.print("Digite a primeira nota: ");
		nota1 = scan.nextDouble();
		
		System.out.print("Digite a segunda nota: ");
		nota2 = scan.nextDouble();
		
		media = (nota1 + nota2) / 2;
		System.out.println("Media: " + media);
		
		if (media == 10) {
			System.out.println("Aprovado com Distincao");
		} else if (media >= 7) {
			System.out.println("Aprovado");
		} else {
			System.out.println("Reprovado");
		}
	}

}
