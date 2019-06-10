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
    public partial class frmInicio : Form
    {
        public frmInicio()
        {
            InitializeComponent();
        }

        private void btnCadastroLivros_Click(object sender, EventArgs e)
        {
            frmCadastroLivro cadastrarlivro = new frmCadastroLivro();
            cadastrarlivro.ShowDialog();
        }

        private void frmInicio_Load(object sender, EventArgs e)
        {
            frmLogin login = new frmLogin();
            login.ShowDialog();
        }

        private void btnCadastroUser_Click(object sender, EventArgs e)
        {
            frm_cadastarUsuario user = new frm_cadastarUsuario();
            user.ShowDialog();
        }

        private void cadastrarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmCadastroFuncionario funcionario = new frmCadastroFuncionario();
            funcionario.ShowDialog();
        }

        private void btnConsultaAcervo_Click(object sender, EventArgs e)
        {
            frmConsultaAcervo acervo = new frmConsultaAcervo();
            acervo.ShowDialog();
        }

        private void btnUsuarios_Click(object sender, EventArgs e)
        {
            frmConsultarUsuarios consulta = new frmConsultarUsuarios();
            consulta.ShowDialog();
        }

        private void btnEmprestimo_Click(object sender, EventArgs e)
        {
            frmEmprestimo_Reserva emp = new frmEmprestimo_Reserva();
            emp.ShowDialog();
        }
    }
}
