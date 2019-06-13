package aula07;

import java.util.Random;

public class Luta {
	private Lutador desafiado;
	private Lutador desafiante;
	private int rounds;
	private boolean aprovada;
	
	public void marcarLuta(Lutador l1, Lutador l2) {
		if (l1.getCategoria() == l2.getCategoria() && l1 != l2) {
			this.setAprovada(true);
			this.setDesafiado(l1);
			this.setDesafiante(l2);
		} else {
			this.setAprovada(false);
			this.setDesafiado(null);
			this.setDesafiante(null);
		}
	}
	
	public void lutar() {
		if (this.isAprovada()) {
			this.getDesafiado().apresentar();
			this.getDesafiante().apresentar();
			Random gerador = new Random();
			int vencedor = gerador.nextInt(3);
			switch (vencedor) {
				case 0:
					System.out.println("EMPATE");
					this.getDesafiado().empatarLuta();
					this.getDesafiante().empatarLuta();
					break;
				case 1:
					System.out.println("GANHOU " + this.getDesafiado().getNome());
					this.getDesafiado().ganharLuta();
					break;
				case 2:
					System.out.println("GANHOU " + this.getDesafiante().getNome());
					this.getDesafiante().ganharLuta();
					break;
			}
		} else {
			System.out.println("Luta não pode acontecer");
		}
		
	}

	public Lutador getDesafiado() {
		return desafiado;
	}

	public void setDesafiado(Lutador desafiado) {
		this.desafiado = desafiado;
	}

	public Lutador getDesafiante() {
		return desafiante;
	}

	public void setDesafiante(Lutador desafiante) {
		this.desafiante = desafiante;
	}

	public int getRounds() {
		return rounds;
	}

	public void setRounds(int rounds) {
		this.rounds = rounds;
	}

	public boolean isAprovada() {
		return aprovada;
	}

	public void setAprovada(boolean aprovada) {
		this.aprovada = aprovada;
	}
	
}
