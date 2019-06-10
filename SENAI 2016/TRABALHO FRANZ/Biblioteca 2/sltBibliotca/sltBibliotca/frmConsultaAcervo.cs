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
    public partial class frmConsultaAcervo : Form
    {
        public frmConsultaAcervo()
        {
            InitializeComponent();
        }
        public string _conn = "server = localhost; user = root; pwd = ''; database = biblioteca";

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            //verificar se as opções foram selecionadas e pesquisa digitada
            if (rbtTodos.Checked == false && txtPesquisa.Text.Equals(""))
            {
                MessageBox.Show("Selecione uma das opções de pesquisa.");
                return;
            }

            else if (rbtTodos.Checked == true)
            {
               //Pesquisa todos os livros

               MySqlConnection _conexao = new MySqlConnection(_conn);

               MySqlDataAdapter _Adapter = new MySqlDataAdapter("Select * from livro", _conexao);

               DataSet _DataSet = new DataSet("livro");

               _Adapter.Fill(_DataSet, "livro");

               dtgPesquisa.DataSource = _DataSet.Tables["livro"];

               _conexao.Close();
            }

            else if (rbtCodigo.Checked==true)
            {
                //Pesquisa por id

                MySqlConnection _conexao = new MySqlConnection(_conn);

                MySqlDataAdapter _Adapter = new MySqlDataAdapter("Select * from livro where id like '" + txtPesquisa.Text + "%'" , _conexao);

                DataSet _DataSet = new DataSet("livro");

                _Adapter.Fill(_DataSet, "livro");

                dtgPesquisa.DataSource = _DataSet.Tables["livro"];

                _conexao.Close();
            }

            else if (rbtTitulo.Checked==true)
            {
                //Pesquisa por titulo

                MySqlConnection _conexao = new MySqlConnection(_conn);

                MySqlDataAdapter _Adapter = new MySqlDataAdapter("Select * from livro where titulo like '" + txtPesquisa.Text + "%'", _conexao);

                DataSet _DataSet = new DataSet("livro");

                _Adapter.Fill(_DataSet, "livro");

                dtgPesquisa.DataSource = _DataSet.Tables["livro"];

                _conexao.Close();
            }

            else if (rbtISBN.Checked==true)
            {
                //Pesquisa por isbn

                MySqlConnection _conexao = new MySqlConnection(_conn);

                MySqlDataAdapter _Adapter = new MySqlDataAdapter("Select * from livro where isbn like '" + txtPesquisa.Text + "%'", _conexao);

                DataSet _DataSet = new DataSet("livro");

                _Adapter.Fill(_DataSet, "livro");

                dtgPesquisa.DataSource = _DataSet.Tables["livro"];

                _conexao.Close();
            }
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnAlterar_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt16(dtgPesquisa.Rows[dtgPesquisa.CurrentCell.RowIndex].Cells[0].Value) > 0)
            {
                frmCadastroLivro._pesquisa = Convert.ToInt16(dtgPesquisa.Rows[dtgPesquisa.CurrentCell.RowIndex].Cells[0].Value);
                this.Close();
                
            }
            frmCadastroLivro cad = new frmCadastroLivro();
            cad.ShowDialog();
        }

        private void dtgPesquisa_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //if (Convert.ToInt16(dtgPesquisa.Rows[e.RowIndex].Cells[0].Value) > 0)
            //{
            //    frmCadastroLivro._pesquisa = Convert.ToInt16(dtgPesquisa.Rows[e.RowIndex].Cells[0].Value);
            //    this.Close();
            //}
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            MySqlConnection _conexao = new MySqlConnection(_conn);
            _conexao.Open();

            String _SQL = "";
            _SQL = _SQL + "Delete From ";
            _SQL = _SQL + "    livro ";
            _SQL = _SQL + "Where ";
            _SQL = _SQL + "    id = @id ";


            MySqlCommand _Command = new MySqlCommand(_SQL, _conexao);
            _Command.Parameters.AddWithValue("@id", Convert.ToInt16(dtgPesquisa.Rows[dtgPesquisa.CurrentCell.RowIndex].Cells[0].Value));
            dtgPesquisa.Rows.RemoveAt(dtgPesquisa.CurrentRow.Index);

            _Command.ExecuteNonQuery();

            MessageBox.Show("Dados Excluidos com Sucesso !!");
        }
    }
}
