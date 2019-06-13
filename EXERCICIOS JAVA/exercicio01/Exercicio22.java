package exercicio01;

import java.util.Scanner;

public class Exercicio22 {

	public static void main(String[] args) {
		/*22.Uma fruteira est� vendendo frutas com a seguinte tabela de pre�os:
		 
					       At� 5 Kg           Acima de 5 Kg
				Morango R$ 2,50 por Kg       R$ 2,20 por Kg
			    Ma��    R$ 1,80 por Kg       R$ 1,50 por Kg
			    
			Se o cliente comprar mais de 8 Kg em frutas ou o valor total da
			compra ultrapassar R$ 25,00, receber� ainda um desconto de
			10% sobre este total. Escreva um algoritmo para ler a
			quantidade (em Kg) de morangos e a quantidade (em Kg) de
			ma�as adquiridas e escreva o valor a ser pago pelo cliente. */
		
		Scanner scan = new Scanner(System.in);
		double precoMaca, precoMorango, qtdMaca, qtdMorango, totalVendido, totalVendidoKg;
		double totalReceber;
		qtdMaca = 0;
		qtdMorango = 0;
		totalReceber = 0;
		
		System.out.println("Quantidade Vendida de ma�� (Kg): ");
		qtdMaca = scan.nextDouble();
		
		System.out.println("Quantidade Vendida de morangos (Kg): ");
		qtdMorango = scan.nextDouble();
		
		if (qtdMaca <= 5) {
			precoMaca = 1.8;
		} else {
			precoMaca = 1.5;
		}
		
		if (qtdMorango <= 5) {
			precoMorango = 2.5;
		} else {
			precoMorango = 2.2;
		}
		
		totalVendidoKg = qtdMaca + qtdMorango;
		totalVendido   = (qtdMaca * precoMaca) + (qtdMorango * precoMorango);
		
		if (totalVendidoKg > 8 || totalVendido > 25) {
			totalReceber = totalVendido - (totalVendido * 0.1);
		} else {
			totalReceber = totalVendido;
		}
		
		System.out.println("");
		System.out.println("Quantidade Vendida (Kg): " + totalVendidoKg);
		System.out.println("Total Vendido (R$): " + totalVendido);
		System.out.println("Valor Total (R$): " + totalReceber);
		

	}

}
