package calculofatorial;

public class Teste {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		char c = 'c';
		int i = 10;
		double d = 10;
		long l = 1;
		String s = "Hello";
		
		// ERRO c = c + i; Tipos incompatíveis
		//CORRETO s += i; String pode receber Int - concatenação
		//ERRO i += s; Inteiro não recebe string
		//ERRO c += s; Char não recebe mais que 1 caractere
		//CORRETO i += l; Se for 1 está correto
	}

}
