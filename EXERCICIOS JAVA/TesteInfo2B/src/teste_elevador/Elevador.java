package teste_elevador;

public class Elevador {
	
	public static void main(String[] args) {
	
		double peso[] = new double[16];
		double total_peso = 0;
		
		GerarPessoas pessoas = new GerarPessoas();
		pessoas.gerarPessoa();
		
		int qtdPessoas = pessoas.qtdPessoas;
	
		System.out.println("Qtd de Pessoas: " + qtdPessoas);
		System.out.println();
	
		for(int i = 1; i <= qtdPessoas; i++) {
			peso[i] = 3 + Math.random() * 149;
			System.out.println("Peso da pessoa " + i + ": " + peso[i]);
		}
	
		for(int i = 1; i <= qtdPessoas; i++) {
			total_peso += peso[i];
		}
	
		System.out.println();
		System.out.println("Peso Total: " + total_peso);
	
		if (qtdPessoas == 0) {
			System.out.println("ELEVADOR PARADO");
		}
		else if(total_peso < 1050.0) {
			System.out.println("ELEVADOR EM MOVIMENTO");
		} else {
			System.out.println("PESO ACIMA DO PERMITIDO. ELEVADOR PARADO");
		}
	
	}
}
