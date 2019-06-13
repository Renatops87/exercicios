package classes;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JSpinner;
import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JScrollPane;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class TelaVetor extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TelaVetor frame = new TelaVetor();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public TelaVetor() {
		int vetor[] = new int[5];
		DefaultListModel lista = new DefaultListModel();
		int selecionado = 0;
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JSpinner txtNum = new JSpinner();
		txtNum.setBounds(10, 35, 54, 20);
		contentPane.add(txtNum);
		
		JButton btnAdd = new JButton("Adicionar");
		btnAdd.setBounds(101, 34, 89, 23);
		contentPane.add(btnAdd);
		
		JButton btnRemove = new JButton("Remover");
		btnRemove.setBounds(101, 68, 89, 23);
		contentPane.add(btnRemove);
		
		JButton btnOrdem = new JButton("Ordenar");
		btnOrdem.setBounds(101, 102, 89, 23);
		contentPane.add(btnOrdem);
		
		JLabel lblVetor = new JLabel("Vetor");
		lblVetor.setBounds(345, 38, 33, 14);
		contentPane.add(lblVetor);
		
		JLabel lblSelecionado = new JLabel("[0]");
		lblSelecionado.setBounds(388, 38, 46, 14);
		contentPane.add(lblSelecionado);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(265, 81, 159, 169);
		contentPane.add(scrollPane);
		
		JList lstVetor = new JList();
		scrollPane.setViewportView(lstVetor);
		
		btnAdd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				vetor[selecionado] = Integer.parseInt(txtNum.getValue().toString());
				lista.removeAllElements();
				for(int c = 0; c < vetor.length; c++) {
					lista.addElement(vetor[c]);
				}
				lstVetor.setModel(lista);
			}
		});
	}
}
