package exercicio01;

import java.util.Scanner;

public class Exercicio14 {

	public static void main(String[] args) {
		/*14.Faça um programa que lê as duas notas parciais obtidas por um aluno
		numa disciplina ao longo de um semestre, e calcule a sua média. A
		atribuição de conceitos obedece à tabela abaixo:
			o Média de Aproveitamento Conceito
			o Entre 9.0 e 10.0 A
			o Entre 7.5 e 9.0 B
			o Entre 6.0 e 7.5 C
			o Entre 4.0 e 6.0 D
			o Entre 4.0 e zero E
		O algoritmo deve mostrar na tela as notas, a média, o conceito
		correspondente e a mensagem “APROVADO” se o conceito for
		A, B ou C ou “REPROVADO” se o conceito for D ou E. */
		
		Scanner scan = new Scanner(System.in);
		double nota1, nota2, media;
		String conceito, situacao;
		
		System.out.print("Digite a primeira nota: ");
		nota1 = scan.nextDouble();
		System.out.print("Digite a Segunda nota: ");
		nota2 = scan.nextDouble();
		
		media = (nota1 + nota2) / 2;
		
		if (media < 4.0) {
			conceito = "E";
		} else if (media < 6.0) {
			conceito = "D";
		} else if (media < 7.5) {
			conceito = "C";
		} else if (media < 9.0) {
			conceito = "B";
		} else {
			conceito = "A";
		}
		
		if (conceito.equals("D") || conceito.equals("E")) {
			situacao = "REPROVADO";
		} else {
			situacao = "APROVADO";
		}
		
		System.out.println("Nota 1   = " + nota1);
		System.out.println("Nota 2   = " + nota2);
		System.out.println("Media    = " + media);
		System.out.println("Conceito = " + conceito);
		System.out.println("Situacao = " + situacao);
	}

}
