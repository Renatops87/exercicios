package exercicio01;

import java.util.Scanner;

public class Exercicio21 {

	public static void main(String[] args) {
		/*21.Um posto está vendendo combustíveis com a seguinte tabela de
		descontos:
		. Álcool:
			a. até 20 litros, desconto de 3% por litro
			b. acima de 20 litros, desconto de 5% por litro
		Gasolina:
			c. até 20 litros, desconto de 4% por litro
			d. acima de 20 litros, desconto de 6% por litro 
		Escreva um
		algoritmo que leia o número de litros vendidos, o tipo de
		combustível (codificado da seguinte forma: A-álcool, G-gasolina), 
		calcule e imprima o valor a ser pago pelo cliente
		sabendo-se que o preço do litro da gasolina é R$ 2,50 o preço
		do litro do álcool é R$ 1,90. */
		
		Scanner scan = new Scanner(System.in);
		double quantidadeVendida, precoAlcool, precoGasolina, total;
		String tipoCombustivel;
		
		precoGasolina = 2.5;
		precoAlcool   = 1.9;
		total = 0;
		
		System.out.println("Digite a qtd. de combustível vendida em litros: ");
		quantidadeVendida = scan.nextDouble();
		
		System.out.println("Digite o tipo de combustível (A = Alcool/ G = Gasolina): ");
		tipoCombustivel = scan.next();
		
		
		if (tipoCombustivel.equalsIgnoreCase("A")) {
			if (quantidadeVendida <= 20) {
				total = quantidadeVendida * (precoAlcool - (precoAlcool * 0.03));
			} else {
				total = quantidadeVendida * (precoAlcool - (precoAlcool * 0.05));
			}
		} else if (tipoCombustivel.equalsIgnoreCase("G")) {
			if (quantidadeVendida <= 20) {
				total = quantidadeVendida * (precoGasolina - (precoGasolina * 0.04));
			} else {
				total = quantidadeVendida * (precoGasolina - (precoGasolina * 0.06));
			}
		}
		
		System.out.println("");
		System.out.println("Valor Total (R$): " + total);
	}
}
