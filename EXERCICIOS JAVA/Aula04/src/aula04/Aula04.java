package aula04;

public class Aula04 {

	public static void main(String[] args) {
		
		Caneta c1 = new Caneta("BIC","AMARELA",0.4f);
		Caneta c2 = new Caneta("NIC","LARANJA",0.4f);
		
		//c1.setModelo("BIC"); // acesso pelo m�todo acessor
		
		//c1.setPonta(0.5f);
		//c1.ponta = 0.5f acesso direto d� erro porque o atributo � privado
		
		c1.status();
		c2.status();
		
	}

}
