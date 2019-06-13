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
        public static int _pesquisa;
        
        private void frmCadastroLivro_Load(object sender, EventArgs e)
        {
            if (_pesquisa > 0)
            {
                string situacao;
                MySqlConnection _Conexao = new MySqlConnection("server = localhost; user = root; pwd = ''; database = biblioteca");

                MySqlDataAdapter _Adapter = new MySqlDataAdapter("Select * from livro Where id = " + _pesquisa, _Conexao);

                DataSet _DataSet = new DataSet("livro");

                _Adapter.Fill(_DataSet, "livro");

                txtID.Text = _DataSet.Tables["livro"].Rows[0]["id"].ToString();
                txtTitulo.Text = _DataSet.Tables["livro"].Rows[0]["titulo"].ToString();
                txtAutor.Text = _DataSet.Tables["livro"].Rows[0]["autor"].ToString();
                txtEditora.Text = _DataSet.Tables["livro"].Rows[0]["editora"].ToString();
                txtEdicao.Text = _DataSet.Tables["livro"].Rows[0]["edicao"].ToString();
                txtISBN.Text = _DataSet.Tables["livro"].Rows[0]["isbn"].ToString();
                dtpDataAquisicao.Text = _DataSet.Tables["livro"].Rows[0]["data_aquisicao"].ToString();
                dtpDataPublicacao.Text = _DataSet.Tables["livro"].Rows[0]["data_publicacao"].ToString();
                situacao = _DataSet.Tables["livro"].Rows[0]["status_livro"].ToString();

                if (situacao == "Disponivel")
                {
                    rdbDisponivel.Checked = true;
                }
                else
                {
                    rdbIndisponivel.Checked = true;
                }
                _Conexao.Close();
            }
        }

        private void btnInserir_Click(object sender, EventArgs e)
        {
            //cadastrar livros na tabela
            if (txtID.Text.Length > 0)
            {
                MessageBox.Show("Não é possivel incluir. Escolha o botão Atualizar!");
                return;
            }
            
                MySqlConnection _conn = new MySqlConnection("server = localhost; user = root; pwd = ''; database = biblioteca");
                _conn.Open();

                string _SQL = "";
                _SQL = _SQL + "INSERT INTO ";
                _SQL = _SQL + "     livro ";
                _SQL = _SQL + "     ( ";
                _SQL = _SQL + "     titulo ";
                _SQL = _SQL + "     ,autor ";
                _SQL = _SQL + "     ,data_publicacao ";
                _SQL = _SQL + "     ,editora ";
                _SQL = _SQL + "     ,edicao ";
                _SQL = _SQL + "     ,isbn ";
                _SQL = _SQL + "     ,data_aquisicao ";
                _SQL = _SQL + "     ,status_livro ";
                _SQL = _SQL + "     ) ";
                _SQL = _SQL + "  VALUES ";
                _SQL = _SQL + "     ( ";
                _SQL = _SQL + "      @titulo  ";
                _SQL = _SQL + "      ,@autor ";
                _SQL = _SQL + "      ,@data_publicacao ";
                _SQL = _SQL + "      ,@editora ";
                _SQL = _SQL + "      ,@edicao ";
                _SQL = _SQL + "      ,@isbn ";
                _SQL = _SQL + "      ,@data_aquisicao ";
                _SQL = _SQL + "      ,@status_livro ";
                _SQL = _SQL + "     ); Select  Last_Insert_ID() ;";

                

                //converter data em ano/mes/dia
                dtpDataPublicacao.Format = DateTimePickerFormat.Custom;
                dtpDataPublicacao.CustomFormat = "yyyy-MM-dd";

                dtpDataAquisicao.Format = DateTimePickerFormat.Custom;
                dtpDataAquisicao.CustomFormat = "yyyy-MM-dd";

                //checked de disponibilidade do livro
                if (rdbDisponivel.Checked == true)
                {
                    check = "Disponivel";

                }
                else if (rdbIndisponivel.Checked == true)
                {
                    check = "Indisponivel";
                }
           

            if (rdbDisponivel.Checked == true || rdbIndisponivel.Checked == true)
            {
                MySqlCommand command = new MySqlCommand(_SQL, _conn);
                command.Parameters.AddWithValue("@titulo", txtTitulo.Text);
                command.Parameters.AddWithValue("@autor", txtAutor.Text);
                command.Parameters.AddWithValue("@data_publicacao", dtpDataPublicacao.Text);
                command.Parameters.AddWithValue("@editora", txtEditora.Text);
                command.Parameters.AddWithValue("@edicao", txtEdicao.Text);
                command.Parameters.AddWithValue("@isbn", txtISBN.Text);
                command.Parameters.AddWithValue("@data_aquisicao", dtpDataAquisicao.Text);
                command.Parameters.AddWithValue("@status_livro", check);


                var _id = command.ExecuteScalar();

                txtID.Text = _id.ToString();
                MessageBox.Show("Cadastrado com sucesso!");

                _conn.Close();
            }
            else
            {
                MessageBox.Show("Escolha a situção do livro!");
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
            txtID.Text = "";
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        

        private void btnAtualizar_Click(object sender, EventArgs e)
        {
            if (txtID.Text.Length <= 0)
            {
                MessageBox.Show("Não é Possível Alterar. Escolha o Botão Incluir ou Acervo");
                return;
            }
            
                MySqlConnection _conn = new MySqlConnection("server = localhost; user = root; pwd = ''; database = biblioteca");

                String _SQL = "";
                _SQL = _SQL + "Update ";
                _SQL = _SQL + "    livro ";
                _SQL = _SQL + "Set ";
                _SQL = _SQL + "    titulo  = @titulo     ";
                _SQL = _SQL + "   ,autor   = @autor ";
                _SQL = _SQL + "   ,data_publicacao   = @data_publicacao   ";
                _SQL = _SQL + "   ,editora   = @editora   ";
                _SQL = _SQL + "   ,isbn      = @isbn      ";
                _SQL = _SQL + "   ,data_aquisicao   = @data_aquisicao   ";
                _SQL = _SQL + "   ,status_livro  = @status_livro     ";
                _SQL = _SQL + "Where ";
                _SQL = _SQL + "    id = @id ";

                //converter data em ano/mes/dia
                dtpDataPublicacao.Format = DateTimePickerFormat.Custom;
                dtpDataPublicacao.CustomFormat = "yyyy-MM-dd";

                dtpDataAquisicao.Format = DateTimePickerFormat.Custom;
                dtpDataAquisicao.CustomFormat = "yyyy-MM-dd";

                //checked de disponibilidade do livro
                if (rdbDisponivel.Checked == true)
                {
                    check = "Disponivel";

                }
                else if (rdbIndisponivel.Checked == true)
                {
                    check = "Indisponivel";
                }

            MySqlCommand command = new MySqlCommand(_SQL, _conn);
                command.Parameters.AddWithValue("@id", txtID.Text);
                command.Parameters.AddWithValue("@titulo", txtTitulo.Text);
                command.Parameters.AddWithValue("@autor", txtAutor.Text);
                command.Parameters.AddWithValue("@data_publicacao", dtpDataPublicacao.Text);
                command.Parameters.AddWithValue("@editora", txtEditora.Text);
                command.Parameters.AddWithValue("@edicao", txtEdicao.Text);
                command.Parameters.AddWithValue("@isbn", txtISBN.Text);
                command.Parameters.AddWithValue("@data_aquisicao", dtpDataAquisicao.Text);
                command.Parameters.AddWithValue("@status_livro", check);
                command.CommandType = CommandType.Text;
                _conn.Open();

                try
                {
                    int i = command.ExecuteNonQuery();
                    if (i > 0)
                    {
                        MessageBox.Show("Registro Alterado com Sucesso!");
                        _pesquisa = 0;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("ERRO: " + ex.ToString());
                }
                finally
                {
                    _conn.Close();
                }
            
            

            
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
