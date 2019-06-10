package teste_elevador;

import java.util.Random;

public class GerarPessoas {
	
	public int qtdPessoas;
	
	public void gerarPessoa() {
		Random gerador = new Random();
		int qtdPessoas = gerador.nextInt(16);
		this.qtdPessoas = qtdPessoas;
	}
}
