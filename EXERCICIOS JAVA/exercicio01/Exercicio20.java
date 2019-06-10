package exercicio01;

import java.util.Scanner;

public class Exercicio20 {

	public static void main(String[] args) {
		/*20.Faça um programa que faça 5 perguntas para uma pessoa sobre um
		crime. As perguntas são:
			a. "Telefonou para a vítima?"
			b. "Esteve no local do crime?"
			c. "Mora perto da vítima?"
			d. "Devia para a vítima?"
			e. "Já trabalhou com a vítima?" 
		O programa deve no final emitir
		uma classificação sobre a participação da pessoa no crime. Se
		a pessoa responder positivamente a 2 questões ela deve ser
		classificada como "Suspeita", entre 3 e 4 como "Cúmplice" e 5
		como "Assassino". Caso contrário, ele será classificado como
		"Inocente". */
		
		Scanner scan = new Scanner(System.in);
		String resp, classificacao;
		int positivo;
		positivo = 0;
		
		System.out.println("Telefonou para a vítima? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		} 
		
		System.out.println("Esteve no local do crime? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		} 
		
		System.out.println("Mora perto da vítima? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		} 
		
		System.out.println("Devia para a vítima? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		} 
		
		System.out.println("Já trabalhou com a vítima? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		}
		
		System.out.println("");
		if (positivo == 2) {
			classificacao = "Suspeita";
		} else if (positivo >= 3 && positivo <= 4) {
			classificacao = "Cúmplice";
		} else if (positivo == 5) {
			classificacao = "Assassino";
		} else {
			classificacao = "Inocente";
		}
		
		System.out.println("Resultado: " + classificacao);
		
	}

}
