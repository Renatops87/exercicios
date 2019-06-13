package telaequacao;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JSpinner;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.event.ChangeListener;
import javax.swing.event.ChangeEvent;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.SwingConstants;

public class TelaEquacao extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TelaEquacao frame = new TelaEquacao();
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
	public TelaEquacao() {
		setFont(new Font("Arial", Font.PLAIN, 15));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 413, 347);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JSpinner txtA = new JSpinner();
		txtA.setBounds(39, 74, 43, 20);
		contentPane.add(txtA);
		
		JSpinner txtB = new JSpinner();
		txtB.setBounds(124, 74, 43, 20);
		contentPane.add(txtB);
		
		JSpinner txtC = new JSpinner();
		txtC.setBounds(202, 74, 43, 20);
		contentPane.add(txtC);
		
		JLabel lblNewLabel = new JLabel("<html>x<sup>2</sup>+</html>");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 11));
		lblNewLabel.setBounds(92, 72, 34, 20);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("y+");
		lblNewLabel_1.setBounds(177, 77, 26, 14);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("=0");
		lblNewLabel_2.setBounds(255, 77, 46, 14);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("<html>&Delta; = </html>");
		lblNewLabel_3.setFont(new Font("Tahoma", Font.PLAIN, 24));
		lblNewLabel_3.setBounds(39, 113, 43, 37);
		contentPane.add(lblNewLabel_3);
		
		JLabel lblB = new JLabel("<html>B</html>");
		lblB.setForeground(Color.RED);
		lblB.setFont(new Font("Tahoma", Font.PLAIN, 24));
		lblB.setBounds(92, 109, 43, 44);
		contentPane.add(lblB);
		
		JLabel lblNewLabel_5 = new JLabel("<html><sup>2</sup>- 4</html>");
		lblNewLabel_5.setFont(new Font("Tahoma", Font.PLAIN, 24));
		lblNewLabel_5.setBounds(109, 106, 58, 38);
		contentPane.add(lblNewLabel_5);
		
		JLabel lblC = new JLabel("C");
		lblC.setForeground(Color.RED);
		lblC.setFont(new Font("Tahoma", Font.PLAIN, 24));
		lblC.setBounds(222, 113, 58, 37);
		contentPane.add(lblC);
		
		JLabel lblNewLabel_7 = new JLabel("*");
		lblNewLabel_7.setFont(new Font("Tahoma", Font.PLAIN, 24));
		lblNewLabel_7.setBounds(202, 114, 13, 35);
		contentPane.add(lblNewLabel_7);
		
		JLabel lblA = new JLabel("A");
		lblA.setForeground(Color.RED);
		lblA.setFont(new Font("Tahoma", Font.PLAIN, 24));
		lblA.setBounds(177, 113, 26, 37);
		contentPane.add(lblA);
		
		JLabel label = new JLabel("*");
		label.setFont(new Font("Tahoma", Font.PLAIN, 24));
		label.setBounds(158, 113, 13, 35);
		contentPane.add(label);
		
		JButton btnCalc = new JButton("<html>Calcular &Delta</html>");
		btnCalc.setBounds(92, 164, 123, 23);
		contentPane.add(btnCalc);
		
		JPanel panResultado = new JPanel();
		panResultado.setBounds(10, 198, 377, 99);
		contentPane.add(panResultado);
		panResultado.setLayout(null);
		
		JLabel lblNewLabel_4 = new JLabel("<html>Valor de &Delta</html> ");
		lblNewLabel_4.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel_4.setBounds(10, 11, 108, 14);
		panResultado.add(lblNewLabel_4);
		
		JLabel lblNewLabel_6 = new JLabel("Tipo de Ra\u00EDzes");
		lblNewLabel_6.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel_6.setBounds(10, 62, 108, 14);
		panResultado.add(lblNewLabel_6);
		
		JLabel lblDelta = new JLabel("0");
		lblDelta.setHorizontalAlignment(SwingConstants.RIGHT);
		lblDelta.setForeground(Color.BLUE);
		lblDelta.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblDelta.setBounds(288, 11, 79, 14);
		panResultado.add(lblDelta);
		
		JLabel lblRaiz = new JLabel("0");
		lblRaiz.setHorizontalAlignment(SwingConstants.RIGHT);
		lblRaiz.setForeground(Color.BLUE);
		lblRaiz.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblRaiz.setBounds(128, 62, 239, 14);
		panResultado.add(lblRaiz);
		
		// evento para alterar texto quando altera controle giratorio //
		txtA.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent arg0) {
				lblA.setText(txtA.getValue().toString());
			}
		});
		
		txtB.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent e) {
				lblB.setText(txtB.getValue().toString());
			}
		});
		
		txtC.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent e) {
				lblC.setText(txtC.getValue().toString());
			}
		});
		
		addWindowListener(new WindowAdapter() {
			@Override
			public void windowOpened(WindowEvent e) {
				panResultado.setVisible(false);
			}
		});
		
		btnCalc.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int a = Integer.parseInt(txtA.getValue().toString());
				int b = Integer.parseInt(txtB.getValue().toString());
				int c = Integer.parseInt(txtC.getValue().toString());
				
				double d = Math.pow(b, 2) - 4 * a * c;
				lblDelta.setText(String.format("%.1f", d));
				
				if(d < 0) {
					lblRaiz.setText("NÃO EXISTEM RAÍZES REAIS");
				} else {
					lblRaiz.setText("EXISTEM RAÍZES REAIS");
				}
				
				panResultado.setVisible(true);
			}
		});
	}
}
