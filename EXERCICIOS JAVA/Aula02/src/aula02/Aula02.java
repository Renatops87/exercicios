package aula02;

public class Aula02 {

	public static void main(String[] args) {
		
		// objeto instanciado //
		Caneta c1 = new Caneta(); 
		
		// Atributos //
		c1.cor = "Azul";
		// c1.ponta = 0.5f;
		c1.carga = 80;
		c1.tampada = false; // Referência a atributo //
		
		// Métodos //
		c1.status(); // Referência a método //
		c1.tampar();
		c1.rabiscar();
		
		Caneta c2 = new Caneta();
		c2.modelo = "BIC";
		c2.cor = "Preta";
		c2.destampar();
		c2.status();
		c2.rabiscar();
	}

}
