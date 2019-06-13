package verificatriangulo;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JSlider;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JButton;
import javax.swing.SwingConstants;
import java.awt.Color;
import java.awt.SystemColor;
import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.ChangeEvent;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class TelaVerificaTriangulo extends JFrame {

	private JPanel panel1;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TelaVerificaTriangulo frame = new TelaVerificaTriangulo();
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
	public TelaVerificaTriangulo() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 522, 382);
		panel1 = new JPanel();
		panel1.setForeground(SystemColor.textHighlight);
		panel1.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(panel1);
		panel1.setLayout(null);
		
		JSlider sldA = new JSlider();
		sldA.setValue(0);
		sldA.setMaximum(20);
		sldA.setBounds(104, 33, 200, 26);
		panel1.add(sldA);
		
		JSlider sldB = new JSlider();
		sldB.setMaximum(20);
		sldB.setValue(0);
		sldB.setBounds(104, 95, 200, 26);
		panel1.add(sldB);
		
		JSlider sldC = new JSlider();
		sldC.setMaximum(20);
		sldC.setValue(0);
		sldC.setBounds(104, 155, 200, 26);
		panel1.add(sldC);
		
		JLabel lblSegmentoA = new JLabel("<html>Segmento <strong>a</strong></html>");
		lblSegmentoA.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblSegmentoA.setBounds(10, 33, 84, 26);
		panel1.add(lblSegmentoA);
		
		JLabel lblNewLabel = new JLabel("<html>Segmento <strong>b</strong></html>");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel.setBounds(10, 95, 84, 26);
		panel1.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("<html>Segmento <strong>c</strong></html>");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel_1.setBounds(10, 155, 84, 26);
		panel1.add(lblNewLabel_1);
		
		JButton btnVerificar = new JButton("Verificar");
		btnVerificar.setBounds(384, 88, 101, 33);
		panel1.add(btnVerificar);
		
		JPanel panelRes = new JPanel();
		panelRes.setBounds(36, 206, 420, 126);
		panel1.add(panelRes);
		panelRes.setLayout(null);
		
		JLabel lblRes = new JLabel("--");
		lblRes.setForeground(Color.BLUE);
		lblRes.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblRes.setHorizontalAlignment(SwingConstants.CENTER);
		lblRes.setBounds(10, 26, 400, 24);
		panelRes.add(lblRes);
		
		JLabel lblTipo = new JLabel("--");
		lblTipo.setForeground(Color.RED);
		lblTipo.setHorizontalAlignment(SwingConstants.CENTER);
		lblTipo.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblTipo.setBounds(10, 80, 400, 24);
		panelRes.add(lblTipo);
		
		JLabel lblA = new JLabel("0");
		lblA.setForeground(SystemColor.textHighlight);
		lblA.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblA.setBounds(314, 33, 29, 26);
		panel1.add(lblA);
		
		JLabel lblB = new JLabel("0");
		lblB.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblB.setForeground(SystemColor.textHighlight);
		lblB.setBounds(314, 95, 46, 26);
		panel1.add(lblB);
		
		JLabel lblC = new JLabel("0");
		lblC.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblC.setForeground(SystemColor.textHighlight);
		lblC.setBounds(314, 155, 46, 26);
		panel1.add(lblC);
		
		addWindowListener(new WindowAdapter() {
			@Override
			public void windowOpened(WindowEvent arg0) {
				panelRes.setVisible(false);
			}
		});
		
		sldA.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent arg0) {
				lblA.setText(Integer.toString(sldA.getValue()));
			}
		});
		
		sldB.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent e) {
				lblB.setText(Integer.toString(sldB.getValue()));
			}
		});
		
		sldC.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent e) {
				lblC.setText(Integer.toString(sldC.getValue()));
			}
		});
		
		btnVerificar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				panelRes.setVisible(true);
				int a = sldA.getValue();
				int b = sldB.getValue();
				int c = sldC.getValue();
				
				if ((a+b < c) || (a+c < b) || (b+c < a)){
					lblRes.setText("Não forma um triângulo");
					lblTipo.setText("--");
				} else {
					lblRes.setText("Forma um triângulo");
					if ((a == b) && (a == c)){
							lblTipo.setText("Equilátero");
						} else if ((a != b) && (b != c) && (a != c)) {
							lblTipo.setText("Escaleno");
						} else {
							lblTipo.setText("Isósceles");
						}
				}
			}
		});
		
	}
}
