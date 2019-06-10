package exemplo1;

public class ContaBanco {
	public int numConta;
	protected String tipo;
	private String dono;
	private float saldo;
	private boolean status;
	
	public ContaBanco() {
		super();
	}

	public ContaBanco(float saldo, boolean status) {
		super();
		this.saldo = saldo;
		this.status = status;
	}
	
	public int getNumConta() {
		return numConta;
	}
	public void setNumConta(int numConta) {
		this.numConta = numConta;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getDono() {
		return dono;
	}
	public void setDono(String dono) {
		this.dono = dono;
	}
	public float getSaldo() {
		return saldo;
	}
	public void setSaldo(float saldo) {
		this.saldo = saldo;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	public void abrirConta() {
		int i = 0;
		i++;
		this.setNumConta(i);
		this.setStatus(true);
		System.out.println("CONTA ABERTA COM SUCESSO");
	}
	
	public void situacaoConta() {
		System.out.println("CONTA NUMERO: " + this.getNumConta());
		System.out.println("DONO: " + this.getDono());
		System.out.println("SALDO: " + this.getSaldo());
		if (this.isStatus() == true) {
			System.out.println("STATUS: ABERTA");
		} else {
			System.out.println("STATUS: FECHADA");
		}
		String tipo = this.getTipo(); 
		
		System.out.println("TIPO: " + tipo);
	}
	
	public void saldoInicial() {
		float saldo = 0;
		String tipo = this.getTipo();
		if (tipo.equals("CC")) {
			saldo = 50.00f;
		} else {
			saldo = 150.00f;
		}
		this.setSaldo(saldo);
	}
	
	public void depositar(float valor) {
		//float saldoAtual = this.getSaldo();
		if (this.isStatus() == true) {
			this.setSaldo(this.getSaldo() + valor);
		} else {
			System.out.println("ERRO. CONTA FECHADA");
		}
	}
	
	public void sacar(float valor) {
		float saldoAtual = this.getSaldo();
		if (this.isStatus() == true) {
			if (valor <= saldoAtual) {
				this.setSaldo(saldoAtual - valor);
			} else {
				System.out.println("ERRO. SALDO INSUFICIENTE");
			}
		} else {
			System.out.println("ERRO. CONTA FECHADA");
		} 
	}
	
	public void fecharConta() {
		if (this.getSaldo() > 0) {
			System.out.println("ERRO. SALDO PRECISA ESTAR ZERO");
		} else if (this.getSaldo() < 0) {
			System.out.println("CONTA EM DÉBITO");
		} else {
			this.setStatus(false);
			System.out.println("CONTA FECHADA COM SUCESSO");
		}
	}
	
	public void pagarMensal() {
		float saldoAtual = this.getSaldo();
		String tipo = this.getTipo();
		if (this.isStatus() == true) {
			if (tipo.equals("CC") && saldoAtual > 12 ) {
				this.setSaldo(saldoAtual - 12);
				System.out.println("MENSALIDADE PAGA COM SUCESSO");
			} else if (tipo.equals("CP") && saldoAtual > 20) {
				this.setSaldo(saldoAtual - 20);
			} else {
				System.out.println("ERRO. SALDO INSUFICIENTE");
			}
		} else {
			System.out.println("ERRO. CONTA FECHADA");
		} 
	}
}
