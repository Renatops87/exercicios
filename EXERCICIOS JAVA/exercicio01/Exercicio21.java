package exercicio01;

import java.util.Scanner;

public class Exercicio21 {

	public static void main(String[] args) {
		/*21.Um posto est� vendendo combust�veis com a seguinte tabela de
		descontos:
		. �lcool:
			a. at� 20 litros, desconto de 3% por litro
			b. acima de 20 litros, desconto de 5% por litro
		Gasolina:
			c. at� 20 litros, desconto de 4% por litro
			d. acima de 20 litros, desconto de 6% por litro 
		Escreva um
		algoritmo que leia o n�mero de litros vendidos, o tipo de
		combust�vel (codificado da seguinte forma: A-�lcool, G-gasolina), 
		calcule e imprima o valor a ser pago pelo cliente
		sabendo-se que o pre�o do litro da gasolina � R$ 2,50 o pre�o
		do litro do �lcool � R$ 1,90. */
		
		Scanner scan = new Scanner(System.in);
		double quantidadeVendida, precoAlcool, precoGasolina, total;
		String tipoCombustivel;
		
		precoGasolina = 2.5;
		precoAlcool   = 1.9;
		total = 0;
		
		System.out.println("Digite a qtd. de combust�vel vendida em litros: ");
		quantidadeVendida = scan.nextDouble();
		
		System.out.println("Digite o tipo de combust�vel (A = Alcool/ G = Gasolina): ");
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
