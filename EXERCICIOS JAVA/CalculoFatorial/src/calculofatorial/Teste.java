package calculofatorial;

public class Teste {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		char c = 'c';
		int i = 10;
		double d = 10;
		long l = 1;
		String s = "Hello";
		
		// ERRO c = c + i; Tipos incompat�veis
		//CORRETO s += i; String pode receber Int - concatena��o
		//ERRO i += s; Inteiro n�o recebe string
		//ERRO c += s; Char n�o recebe mais que 1 caractere
		//CORRETO i += l; Se for 1 est� correto
	}

}
