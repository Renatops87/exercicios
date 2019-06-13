package exercicio01;

import java.util.Scanner;

public class Exercicio20 {

	public static void main(String[] args) {
		/*20.Fa�a um programa que fa�a 5 perguntas para uma pessoa sobre um
		crime. As perguntas s�o:
			a. "Telefonou para a v�tima?"
			b. "Esteve no local do crime?"
			c. "Mora perto da v�tima?"
			d. "Devia para a v�tima?"
			e. "J� trabalhou com a v�tima?" 
		O programa deve no final emitir
		uma classifica��o sobre a participa��o da pessoa no crime. Se
		a pessoa responder positivamente a 2 quest�es ela deve ser
		classificada como "Suspeita", entre 3 e 4 como "C�mplice" e 5
		como "Assassino". Caso contr�rio, ele ser� classificado como
		"Inocente". */
		
		Scanner scan = new Scanner(System.in);
		String resp, classificacao;
		int positivo;
		positivo = 0;
		
		System.out.println("Telefonou para a v�tima? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		} 
		
		System.out.println("Esteve no local do crime? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		} 
		
		System.out.println("Mora perto da v�tima? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		} 
		
		System.out.println("Devia para a v�tima? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		} 
		
		System.out.println("J� trabalhou com a v�tima? (S/N)");
		resp = scan.next();
		
		if (resp.equalsIgnoreCase("S")) {
			positivo++;
		}
		
		System.out.println("");
		if (positivo == 2) {
			classificacao = "Suspeita";
		} else if (positivo >= 3 && positivo <= 4) {
			classificacao = "C�mplice";
		} else if (positivo == 5) {
			classificacao = "Assassino";
		} else {
			classificacao = "Inocente";
		}
		
		System.out.println("Resultado: " + classificacao);
		
	}

}
