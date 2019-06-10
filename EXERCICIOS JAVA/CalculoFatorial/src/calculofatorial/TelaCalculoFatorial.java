package calculofatorial;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JSpinner;
import java.awt.Font;
import java.awt.Color;
import javax.swing.ImageIcon;
import javax.swing.SpinnerNumberModel;
import javax.swing.event.ChangeListener;
import javax.swing.event.ChangeEvent;

public class TelaCalculoFatorial extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TelaCalculoFatorial frame = new TelaCalculoFatorial();
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
	public TelaCalculoFatorial() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 510, 354);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setIcon(new ImageIcon("C:\\Users\\Thor\\Dropbox\\Curso JAVA b\u00E1sico\\iconfinder_factorial_1772627 (1).png"));
		lblNewLabel.setBounds(154, 35, 162, 155);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("! =");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 24));
		lblNewLabel_1.setBounds(103, 250, 41, 26);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblRes = new JLabel("1");
		lblRes.setForeground(Color.RED);
		lblRes.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblRes.setBounds(337, 253, 147, 25);
		contentPane.add(lblRes);
		
		JSpinner spiNum = new JSpinner();
		spiNum.setModel(new SpinnerNumberModel(0, 0, 12, 1));
		spiNum.setFont(new Font("Tahoma", Font.BOLD, 24));
		spiNum.setBounds(36, 240, 57, 48);
		contentPane.add(spiNum);
		
		JLabel lblConta = new JLabel("1");
		lblConta.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblConta.setBounds(144, 253, 182, 25);
		contentPane.add(lblConta);
		
		spiNum.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent arg0) {
				int num = (Integer) spiNum.getValue(); //Integer.parseInt(spiNum.getValue().toString())
				int cont = num;
				int fat = 1;
				String contagem = "";
				while (cont >= 1) {
						if (cont == num) {
							contagem += cont;
						} else {
							contagem += " * " + cont;
						}
						fat *= cont;
						cont--;
					}
				lblConta.setText(contagem);
				lblRes.setText(Integer.toString(fat));
			}
		});
	}
}
