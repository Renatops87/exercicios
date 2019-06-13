package exerciciorepita;

import javax.swing.JOptionPane;

public class ExercicioRepita {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n, contNumImpar = 0, cont = 0, contNumPar = 0, totval, soma = 0, media = 0, maiorQueCem = 0;
		do {
			n = Integer.parseInt(JOptionPane.showInputDialog(null, "<html>Informe um numero: <br><em>(valor 0 interrompe)</em></html>"));
			if (n != 0) {
				if (n % 2 == 0) {
					contNumPar++;
				} else {
					contNumImpar++;
				}
			}
			if(n > 100) {
				maiorQueCem++;
			}
			soma += n;
			cont++;
		} while (n != 0);
		
		totval = cont - 1;
		media = soma / totval;
		
		JOptionPane.showMessageDialog(null, "<html>Resultado final <br>------------" + "<br>Total de Valores: " + totval + "<br>Total de Pares: " + contNumPar + 
				"<br>Total de Ímpares: " + contNumImpar + "<br>Acima de 100: " + maiorQueCem + "<br>Média dos Valores: " + media + "</html>");
	}

}
