using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace sltBibliotca
{
    public partial class frmCadastroFuncionario : Form
    {
        public frmCadastroFuncionario()
        {
            InitializeComponent();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnInserir_Click(object sender, EventArgs e)
        {
            if (txtNome.Text.Equals(""))
            {
                MessageBox.Show("Informe o seu nome.");
                return;
            }
            if (txtEmail.Text.Equals(""))
            {
                MessageBox.Show("Informe o seu email.");
                return;
            }
            if (txtUsuario.Text.Length > 10)
            {
                MessageBox.Show("O nome não pode exceder a quantidade de caracteres");
                return;
            }
            if (txtUsuario.Text.Equals(""))
            {
                MessageBox.Show("Informe o nome de usuario");
                return;
            }
            if (txtSenha.Text.Equals(""))
            {
                MessageBox.Show("Informe a senha.");
                return;
            }
            try
            {
                funcionario funcionario = new funcionario(txtNome.Text, txtEmail.Text, txtUsuario.Text, txtSenha.Text);
                funcionario.InserirFuncionario(funcionario);
                MessageBox.Show("Registro salvo com sucesso!");
            }
            catch(Exception c)
            {
                MessageBox.Show(c.ToString());
            }
        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = "";
            txtEmail.Text = "";
            txtSenha.Text = "";
            txtUsuario.Text = "";
            txtNome.Focus();
        }
    }
}
