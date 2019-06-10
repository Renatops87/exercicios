using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace sltBibliotca
{
    public partial class frmCadastroLivro : Form
    {
        public frmCadastroLivro()
        {
            InitializeComponent();
        }
        public string check;
        public string _id;

        private void frmCadastroLivro_Load(object sender, EventArgs e)
        {

        }

        private void btnInserir_Click(object sender, EventArgs e)
        {
            try
            {

                //checked de disponibilidade do livro
                if (rdbDisponivel.Checked == true)
                {
                    check = "Disponivel";

                }
                else if (rdbIndisponivel.Checked == true)
                {
                    check = "Indisponivel";
                }

                //converter data em ano/mes/dia
                dtpDataPublicacao.Format = DateTimePickerFormat.Custom;
                dtpDataPublicacao.CustomFormat = "yyyy-MM-dd";

                dtpDataAquisicao.Format = DateTimePickerFormat.Custom;
                dtpDataAquisicao.CustomFormat = "yyyy-MM-dd";

                Livro livro = new Livro(txtTitulo.Text, txtAutor.Text, dtpDataPublicacao.Value, txtEditora.Text, txtEdicao.Text, txtISBN.Text, dtpDataAquisicao.Value, check.ToString());
                livro.CadastrarLivro(livro);
                MessageBox.Show("Registro salvo com sucesso!");
            }

            catch (Exception c)
            {
                MessageBox.Show(c.ToString());
            }
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            txtTitulo.Text = "";
            txtAutor.Text = "";
            txtEditora.Text = "";
            txtEdicao.Text = "";
            txtISBN.Text = "";
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnAtualizar_Click(object sender, EventArgs e)
        {
            try
            {
               
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
