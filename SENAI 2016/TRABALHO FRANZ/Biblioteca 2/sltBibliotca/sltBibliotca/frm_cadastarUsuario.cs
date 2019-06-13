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
    public partial class frm_cadastarUsuario : Form
    {
        public frm_cadastarUsuario()
        {
            InitializeComponent();
        }

        public string check;
        public static int _pesquisa;
        private void frm_cadastarUsuario_Load(object sender, EventArgs e)
        {
            cmbEstado.Items.Add("AC");
            cmbEstado.Items.Add("AM");
            cmbEstado.Items.Add("RR");
            cmbEstado.Items.Add("RO");
            cmbEstado.Items.Add("AP");
            cmbEstado.Items.Add("PA");
            cmbEstado.Items.Add("TO");

            cmbEstado.Items.Add("MA");
            cmbEstado.Items.Add("CE");
            cmbEstado.Items.Add("PI");
            cmbEstado.Items.Add("RN");
            cmbEstado.Items.Add("PB");
            cmbEstado.Items.Add("PA");
            cmbEstado.Items.Add("PE");
            cmbEstado.Items.Add("AL");
            cmbEstado.Items.Add("SE");
            cmbEstado.Items.Add("BA");

            cmbEstado.Items.Add("MT");
            cmbEstado.Items.Add("MS");
            cmbEstado.Items.Add("GO");
            cmbEstado.Items.Add("DF");

            cmbEstado.Items.Add("MG");
            cmbEstado.Items.Add("RJ");
            cmbEstado.Items.Add("ES");
            cmbEstado.Items.Add("SP");

            cmbEstado.Items.Add("PR");
            cmbEstado.Items.Add("SC");
            cmbEstado.Items.Add("RS");

            if (_pesquisa > 0)
            {
                string situacao;
                MySqlConnection _Conexao = new MySqlConnection("server = localhost; user = root; pwd = ''; database = biblioteca");

                MySqlDataAdapter _Adapter = new MySqlDataAdapter("Select * from usuario Where id = " + _pesquisa, _Conexao);

                DataSet _DataSet = new DataSet("usuario");

                _Adapter.Fill(_DataSet, "usuario");

                txtCodigo.Text = _DataSet.Tables["usuario"].Rows[0]["id"].ToString();
                txtNome.Text = _DataSet.Tables["usuario"].Rows[0]["nome"].ToString();
                txtEndereco.Text = _DataSet.Tables["usuario"].Rows[0]["endereco"].ToString();
                txtCidade.Text = _DataSet.Tables["usuario"].Rows[0]["cidade"].ToString();
                cmbEstado.Text = _DataSet.Tables["usuario"].Rows[0]["uf"].ToString();
                dtpDataNascimento.Text = _DataSet.Tables["usuario"].Rows[0]["data_nascimento"].ToString();
                mktRG.Text = _DataSet.Tables["usuario"].Rows[0]["rg"].ToString();
                mktCPF.Text = _DataSet.Tables["usuario"].Rows[0]["cpf"].ToString();
                dtpDataCadastro.Text = _DataSet.Tables["usuario"].Rows[0]["data_cadastro"].ToString();
                situacao = _DataSet.Tables["usuario"].Rows[0]["status_conta"].ToString();

                if (situacao == "Ativo")
                {
                    rdbAtivo.Checked = true;
                }
                else
                {
                    rdbInativo.Checked = true;
                }
                _Conexao.Close();
            }
                
            
           
        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void maskedTextBox4_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void btnInserir_Click(object sender, EventArgs e)
        {
            //cadastrar usuarios no banco

            if (txtCodigo.Text.Length > 0)
            {
                MessageBox.Show("Não é possivel incluir. Escolha o botão Atualizar!");
                return;
            }

            MySqlConnection _conn = new MySqlConnection("server = localhost; user = root; pwd = ''; database = biblioteca");


            string _SQL = "";
            _SQL = _SQL + "INSERT INTO ";
            _SQL = _SQL + "     usuario ";
            _SQL = _SQL + "     ( ";
            _SQL = _SQL + "     nome ";
            _SQL = _SQL + "     ,endereco ";
            _SQL = _SQL + "     ,cidade ";
            _SQL = _SQL + "     ,uf ";
            _SQL = _SQL + "     ,data_nascimento ";
            _SQL = _SQL + "     ,rg ";
            _SQL = _SQL + "     ,cpf ";
            _SQL = _SQL + "     ,data_cadastro ";
            _SQL = _SQL + "     ,status_conta ";
            _SQL = _SQL + "     ) ";
            _SQL = _SQL + "  VALUES ";
            _SQL = _SQL + "     ( ";
            _SQL = _SQL + "       @nome  ";
            _SQL = _SQL + "      ,@endereco ";
            _SQL = _SQL + "      ,@cidade ";
            _SQL = _SQL + "      ,@uf ";
            _SQL = _SQL + "      ,@data_nascimento ";
            _SQL = _SQL + "      ,@rg ";
            _SQL = _SQL + "      ,@cpf ";
            _SQL = _SQL + "      ,@data_cadastro ";
            _SQL = _SQL + "      ,@status_conta ";
            _SQL = _SQL + "     ); Select  Last_Insert_ID() ;";

            //converter formato date em ano/mes/dia
            dtpDataCadastro.Format = DateTimePickerFormat.Custom;
            dtpDataCadastro.CustomFormat = "yyyy-MM-dd";

            dtpDataNascimento.Format = DateTimePickerFormat.Custom;
            dtpDataNascimento.CustomFormat = "yyyy-MM-dd";

            // checked de conta ativa ou inativa

            if (rdbAtivo.Checked == true)
            {
                check = "Ativo";

            }
            else if (rdbInativo.Checked == true)
            {
                check = "Inativo";
            }

            if (rdbAtivo.Checked == true || rdbInativo.Checked == true)
            {
                MySqlCommand command = new MySqlCommand(_SQL, _conn);
                command.Parameters.AddWithValue("@nome", txtNome.Text);
                command.Parameters.AddWithValue("@endereco", txtEndereco.Text);
                command.Parameters.AddWithValue("@cidade", txtCidade.Text);
                command.Parameters.AddWithValue("@uf", cmbEstado.Text);
                command.Parameters.AddWithValue("@data_nascimento", dtpDataNascimento.Text);
                command.Parameters.AddWithValue("@rg", mktRG.Text);
                command.Parameters.AddWithValue("@cpf", mktCPF.Text);
                command.Parameters.AddWithValue("@data_cadastro", dtpDataCadastro.Text);
                command.Parameters.AddWithValue("@status_conta", check);
                command.CommandType = CommandType.Text;
                _conn.Open();
                var _id = command.ExecuteScalar();

                txtCodigo.Text = _id.ToString();
                MessageBox.Show("Cadastrado com sucesso!");

                _conn.Close();
            }
            else
            {
                MessageBox.Show("Não é possivel incluir. Escolha o status do usuario!");
                return;
            }
     

        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            txtCodigo.Text = "";
            txtCidade.Text = "";
            txtEndereco.Text = "";
            txtNome.Text = "";
            cmbEstado.Text = "";
            txtNome.Focus();
            mktCPF.Text = "";
            mktRG.Text = "";
            dtpDataNascimento.Value = DateTime.Now;
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnAtualizar_Click(object sender, EventArgs e)
        {
            if (txtCodigo.Text.Length <= 0)
            {
                MessageBox.Show("Não é Possível Alterar. Escolha o Botão Incluir ou Acervo");
                return;
            }

            MySqlConnection _conn = new MySqlConnection("server = localhost; user = root; pwd = ''; database = biblioteca");

            String _SQL = "";
            _SQL = _SQL + "Update ";
            _SQL = _SQL + "    usuario ";
            _SQL = _SQL + "Set ";
            _SQL = _SQL + "    nome  = @nome     ";
            _SQL = _SQL + "   ,endereco   = @endereco ";
            _SQL = _SQL + "   ,cidade   = @cidade   ";
            _SQL = _SQL + "   ,uf   = @uf   ";
            _SQL = _SQL + "   ,data_nascimento      = @data_nascimento      ";
            _SQL = _SQL + "   ,rg   = @rg   ";
            _SQL = _SQL + "   ,cpf  = @cpf     ";
            _SQL = _SQL + "    ,data_cadastro  = @data_cadastro    ";
            _SQL = _SQL + "    ,status_conta  = @status_conta     ";
            _SQL = _SQL + "Where ";
            _SQL = _SQL + "    id = @id ";

            //converter data em ano/mes/dia
            dtpDataCadastro.Format = DateTimePickerFormat.Custom;
            dtpDataCadastro.CustomFormat = "yyyy-MM-dd";

            dtpDataNascimento.Format = DateTimePickerFormat.Custom;
            dtpDataNascimento.CustomFormat = "yyyy-MM-dd";

            //checked de disponibilidade do livro
            if (rdbAtivo.Checked == true)
            {
                check = "Ativo";

            }
            else if (rdbInativo.Checked == true)
            {
                check = "Inativo";
            }

            MySqlCommand command = new MySqlCommand(_SQL, _conn);
            command.Parameters.AddWithValue("@id", txtCodigo.Text);
            command.Parameters.AddWithValue("@nome", txtNome.Text);
            command.Parameters.AddWithValue("@endereco", txtEndereco.Text);
            command.Parameters.AddWithValue("@cidade", txtCidade.Text);
            command.Parameters.AddWithValue("@uf", cmbEstado.Text);
            command.Parameters.AddWithValue("@data_nascimento", dtpDataNascimento.Text);
            command.Parameters.AddWithValue("@rg", mktRG.Text);
            command.Parameters.AddWithValue("@cpf", mktCPF.Text);
            command.Parameters.AddWithValue("@data_cadastro", dtpDataCadastro.Text);
            command.Parameters.AddWithValue("@status_conta", check);
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
    }
}
