package aula02;

public class Caneta {
	public String modelo;
	public String cor;
	private float ponta; // private - altera dentro da classe, s� quem pode mexer � a pr�pria classe //
	protected int carga;
	private boolean tampada;
	void status() {
		System.out.println("Modelo: " + this.modelo);
		System.out.println("Uma caneta " + this.cor); //this = auto referencia
		System.out.println("Ponta: " + this.ponta);
		System.out.println("Carga: " + this.carga);
		System.out.println("Est� tampada? " + this.tampada);
	}
	
	public void rabiscar() {
		if (this.tampada == true) {
			System.out.println("Erro! N�o posso rabiscar");
		} else {
			System.out.println("Estou Rabiscando");
		}
	}
	
	public void tampar() {
		this.tampada = true; // this � o nome do objeto que chamou o m�todo. Refer�ncia ao pr�prio objeto que chamou //
	}
	
	public void destampar() {
		this.tampada = false;
	}
}
