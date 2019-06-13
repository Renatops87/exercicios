package exemplo1;

import java.util.Scanner;

public class ContaBancaria {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		char decisao;
		char op;
		String tipo;
		String nome;
		float valor = 0;
		
		System.out.print("Deseja Criar uma conta S/N? ");
		decisao = sc.next().charAt(0);
		System.out.println();
		
		if (decisao == 'S') {
			ContaBanco conta = new ContaBanco(0.00f, false);
			conta.situacaoConta();
			
			System.out.println();
			System.out.println("A = Abrir Conta ");
			System.out.println("D = Depósito ");
			System.out.println("E = Saque ");
			System.out.println("F = Status ");
			System.out.println("G = Fechar Conta ");
			System.out.println("P = Pagar Mensalidade ");
			System.out.println("H = Sair ");
			System.out.println("Digite uma opção: ");
			op = sc.next().charAt(0);
			System.out.println();
			
			while(op != 'H') {
				
				if (op == 'A') {
					conta.abrirConta();
					System.out.println();
					System.out.print("Digite o nome: ");
					nome = sc.next();
					conta.setDono(nome);
					System.out.print("Digite o tipo da conta (CC / CP): ");
					tipo = sc.next();
					conta.setTipo(tipo);
					conta.saldoInicial();
					conta.situacaoConta();
					System.out.println();
				}
				
				if (op == 'D') {
					if (conta.isStatus() == true) {
						System.out.println();
						System.out.print("Digite o valor do depósito: ");
						valor = sc.nextFloat();
						conta.depositar(valor);
						System.out.println();
					} else {
						conta.depositar(valor);
					}
				}
				
				else if (op == 'E') {
					if (conta.isStatus() == true) {
						System.out.println();
						System.out.print("Digite o valor de Saque: ");
						valor = sc.nextFloat();
						conta.sacar(valor);
						System.out.println();
					} else {
						conta.sacar(valor);
					}
					
				}
				
				else if (op == 'F') {
					conta.situacaoConta();
				} 
				
				else if (op == 'G') {
					conta.fecharConta();
				}
				
				else if (op == 'P') {
					conta.pagarMensal();;
				}
				
				else {
					System.out.print("Opção Errada!!");
				}
				
				System.out.println();
				System.out.println("D = Depósito ");
				System.out.println("E = Saque ");
				System.out.println("F = Status ");
				System.out.println("G = Fechar Conta ");
				System.out.println("P = Pagar Mensalidade ");
				System.out.println("H = Sair ");
				System.out.println("Digite uma opção: ");
				op = sc.next().charAt(0);
				System.out.println();
			}
			
			System.out.println();
			System.out.println("SAIUU");
		}
		
	}

}
