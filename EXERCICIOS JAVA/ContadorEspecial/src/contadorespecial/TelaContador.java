package contadorespecial;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.border.EmptyBorder;
import javax.swing.JSlider;
import java.awt.Color;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JTextArea;
import javax.swing.JButton;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.ChangeEvent;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.SwingConstants;
import javax.swing.DefaultListModel;
import javax.swing.DropMode;
import javax.swing.JList;

public class TelaContador extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TelaContador frame = new TelaContador();
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
	public TelaContador() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 694, 296);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JSlider sliderIni = new JSlider();
		sliderIni.setValue(0);
		sliderIni.setMaximum(5);
		sliderIni.setBounds(50, 25, 200, 26);
		contentPane.add(sliderIni);
		
		JSlider sliderFim = new JSlider();
		sliderFim.setMinimum(6);
		sliderFim.setValue(6);
		sliderFim.setMaximum(20);
		sliderFim.setBounds(50, 81, 200, 26);
		contentPane.add(sliderFim);
		
		JSlider sliderPass = new JSlider();
		sliderPass.setMinimum(1);
		sliderPass.setMaximum(5);
		sliderPass.setValue(1);
		sliderPass.setBounds(50, 133, 200, 26);
		contentPane.add(sliderPass);
		
		JPanel panel = new JPanel();
		panel.setBackground(Color.WHITE);
		panel.setBounds(348, 25, 180, 219);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JTextArea txtResp = new JTextArea();
		txtResp.setLineWrap(true);
		txtResp.setTabSize(5);
		txtResp.setFont(new Font("Monospaced", Font.PLAIN, 15));
		txtResp.setBounds(20, 0, 17, 219);
		panel.add(txtResp);
		
		JLabel lblNewLabel = new JLabel("In\u00EDcio");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel.setBounds(10, 25, 46, 14);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Fim");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel_1.setBounds(10, 81, 46, 14);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("Passo");
		lblNewLabel_2.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel_2.setBounds(10, 133, 46, 14);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblVlrIni = new JLabel("New label");
		lblVlrIni.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblVlrIni.setBounds(260, 25, 46, 14);
		contentPane.add(lblVlrIni);
		
		JLabel lblVlrFim = new JLabel("New label");
		lblVlrFim.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblVlrFim.setBounds(260, 83, 46, 14);
		contentPane.add(lblVlrFim);
		
		JLabel lblVlrPasso = new JLabel("New label");
		lblVlrPasso.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblVlrPasso.setBounds(260, 133, 46, 14);
		contentPane.add(lblVlrPasso);
		
		JButton btnContar = new JButton("Contar");
		btnContar.setBounds(108, 192, 89, 23);
		contentPane.add(btnContar);
		
		JList listNum = new JList();
		listNum.setVisibleRowCount(50);
		listNum.setBounds(554, 25, 56, 219);
		contentPane.add(listNum);
		
		
		addWindowListener(new WindowAdapter() {
			@Override
			public void windowOpened(WindowEvent arg0) {
				lblVlrIni.setText(Integer.toString(sliderIni.getValue()));
				lblVlrFim.setText(Integer.toString(sliderFim.getValue()));
				lblVlrPasso.setText(Integer.toString(sliderPass.getValue()));
			}
		});
		
		sliderFim.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent e) {
				lblVlrFim.setText(Integer.toString(sliderFim.getValue()));
			}
		});
		
		sliderPass.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent e) {
				lblVlrPasso.setText(Integer.toString(sliderPass.getValue()));
			}
		});
		
		sliderIni.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent arg0) {
				lblVlrIni.setText(Integer.toString(sliderIni.getValue()));
			}
		});
		
		btnContar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				int ini = sliderIni.getValue(); 
				int fim = sliderFim.getValue();
				int pas = sliderPass.getValue();
				int x;
				String cont = "";
				
				DefaultListModel lista = new DefaultListModel();
				
				
				
				for(x = ini; x <= fim; x += pas) {
					cont += x;
					lista.addElement(x);
				}
				txtResp.setText(cont);
				listNum.setModel(lista);
			}
		});
	}
}
