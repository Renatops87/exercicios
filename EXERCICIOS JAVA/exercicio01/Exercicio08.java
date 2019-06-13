package exercicio01;

import java.util.Scanner;

public class Exercicio08 {

	public static void main(String[] args) {
		/*8. Faça um programa que pergunte o preço de três produtos e informe
			 qual produto você deve comprar, sabendo que a decisão é sempre
			 pelo mais barato. */
		
		Scanner scan = new Scanner(System.in);
		double preco1, preco2, preco3, menorPreco;
		String produto;
		
		System.out.println("Digite tres Precos: ");
		preco1 = scan.nextDouble();
		preco2 = scan.nextDouble();
		preco3 = scan.nextDouble();
		
		menorPreco = preco1;
		produto = "Produto 1";
		if (preco2 <= menorPreco) {
			menorPreco = preco2;
			produto = "Produto 2";
		} 
		if (preco3 <= menorPreco) {
			menorPreco = preco3;
			produto = "Produto 3";
		} 
		
		System.out.println("Voce deve comprar: " + produto);

	}

}
