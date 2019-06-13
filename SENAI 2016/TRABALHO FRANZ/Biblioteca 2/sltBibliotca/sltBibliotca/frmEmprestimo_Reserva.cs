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
    public partial class frmEmprestimo_Reserva : Form
    {
        public string _conn = "server = localhost; user = root; pwd = ''; database = biblioteca";
        public static int id_user;
        public static int pesquisaUser;
        public DateTime hoje;
        public DateTime entrega;

        public frmEmprestimo_Reserva()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbTipo.SelectedIndex == 0)
            {
                DateTime hoje = DateTime.Now;
                DateTime entrega = hoje.AddDays(7);
                dtpDataEntrega.Value = hoje;
                dtpDataEntrega.Value = entrega;
            }
            if (cmbTipo.SelectedIndex == 1)
            {
                dtpDataReserva.Enabled = true;
            }
            
            if (cmbTipo.SelectedIndex == 2)
            {
                rdbCodigo.Enabled = false;
                rdbCodLivro.Enabled = false;
                rdbNome.Enabled = false;
                rdbTitulo.Enabled = false;
            }
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void rdbNome_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        private void btnConfirmarCod_Click(object sender, EventArgs e)
        {
           

        }

        private void toolStripButton4_Click(object sender, EventArgs e)
        {
            limpaTela();
        }

        private void frmEmprestimo_Reserva_Load(object sender, EventArgs e)
        {
            cmbTipo.Items.Add("Emprestimo");
            cmbTipo.Items.Add("Reserva");
            cmbTipo.Items.Add("Devolução");

            dtpDataReserva.Enabled = false;
            dtpDataEntrega.Enabled = false;
            dtpDataEntrega.Enabled = false;

            txtIdLogado.Text = frmLogin.id_logado.ToString();
            txtUser.Text = frmLogin.user;

            pesquisaUser = 0;

            if (pesquisaUser > 0)
            {
                cmbTipo.SelectedIndex = 2;

                rdbCodigo.Enabled = false;
                rdbCodLivro.Enabled = false;
                rdbNome.Enabled = false;
                rdbTitulo.Enabled = false;

                MySqlConnection _conexao = new MySqlConnection(_conn);
                _conexao.Open();

                string _SQL = "select ";
                _SQL = _SQL + "   dev.id_usuario ";
                _SQL = _SQL + "   ,usuario.nome ";
                _SQL = _SQL + "   ,dev.id_livro ";
                _SQL = _SQL + "   ,livro.titulo ";
                _SQL = _SQL + "   ,dev.data_emprestimo ";
                _SQL = _SQL + "   ,dev.data_devolucao ";
                _SQL = _SQL + "from emprestimo_reserva as dev ";
                _SQL = _SQL + " inner join usuario on ";
                _SQL = _SQL + "   dev.id_usuario = usuario.id ";
                _SQL = _SQL + " inner join livro on ";
                _SQL = _SQL + "   dev.id_livro = livro.id ";
                _SQL = _SQL + "Where dev.id_usuario = " + pesquisaUser;

                MySqlDataAdapter _Adapter = new MySqlDataAdapter( _SQL, _conexao);

                DataSet _DataSet = new DataSet("devolucao");

                _Adapter.Fill(_DataSet, "devolucao");

                txtCodigo.Text = _DataSet.Tables["devolucao"].Rows[0]["id_usuario"].ToString();
                txtUsuario.Text = _DataSet.Tables["devolucao"].Rows[0]["nome"].ToString();
                txtCodLivro.Text = _DataSet.Tables["devolucao"].Rows[0]["id_livro"].ToString();
                txtTitulo.Text = _DataSet.Tables["devolucao"].Rows[0]["titulo"].ToString();
                dtpDataEmprestimo.Text = _DataSet.Tables["devolucao"].Rows[0]["data_emprestimo"].ToString();
                dtpDataEntrega.Text = _DataSet.Tables["devolucao"].Rows[0]["data_devolucao"].ToString();

            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {
            
        }

        private void btnConfirmarLivro_Click(object sender, EventArgs e)
        {
          
           
        }

        private void btnConfirmarEmprestimo_Click(object sender, EventArgs e)
        {
            MySqlConnection _conexao = new MySqlConnection(_conn);
            _conexao.Open();

            if (cmbTipo.SelectedIndex == 0)
            {
                //emprestar livro
                string situacao = "EMPRESTADO";
                
                string _SQL = "insert into emprestimo_reserva";
                _SQL = _SQL + "  ( ";
                _SQL = _SQL + "   id_usuario ";
                _SQL = _SQL + "   ,id_livro ";
                _SQL = _SQL + "   ,data_emprestimo ";
                _SQL = _SQL + "   ,data_devolucao";
                _SQL = _SQL + "   ,tipo ";
                _SQL = _SQL + "  ) ";
                _SQL = _SQL + "values ";
                _SQL = _SQL + "  ( ";
                _SQL = _SQL + "   @id_usuario ";
                _SQL = _SQL + "   ,@id_livro ";
                _SQL = _SQL + "   ,@data_emprestimo ";
                _SQL = _SQL + "   ,@data_devolucao ";
                _SQL = _SQL + "   ,@tipo ";
                _SQL = _SQL + "  ); ";

                dtpDataEmprestimo.Format = DateTimePickerFormat.Custom;
                dtpDataEmprestimo.CustomFormat = "yyyy-MM-dd";

                dtpDataEntrega.Format = DateTimePickerFormat.Custom;
                dtpDataEntrega.CustomFormat = "yyyy-MM-dd";

                MySqlCommand _command = new MySqlCommand(_SQL, _conexao);
                _command.Parameters.AddWithValue("@id_usuario", id_user);
                _command.Parameters.AddWithValue("@id_livro", txtCodLivro.Text);
                _command.Parameters.AddWithValue("@data_emprestimo", dtpDataEmprestimo.Text);
                _command.Parameters.AddWithValue("@data_devolucao", dtpDataEntrega.Text);
                _command.Parameters.AddWithValue("@tipo", cmbTipo.SelectedItem.ToString());
                _command.CommandType = CommandType.Text;
                _command.ExecuteNonQuery();

                string _SQL2 = "update livro set situacao_livro  = @situacao_livro where id = '" + Convert.ToInt16(txtCodLivro.Text) + "';";
                MySqlCommand command = new MySqlCommand(_SQL2, _conexao);
                command.Parameters.AddWithValue("@situacao_livro", situacao);
                command.ExecuteNonQuery();
                MessageBox.Show("Emprestado com sucesso!");

                dtpDataEntrega.Value = hoje;
                dtpDataEntrega.Value = entrega;
                limpaTela();

            }
            else if (cmbTipo.SelectedIndex == 2)
            {
                //verficar se a entrega foi na data certa e confirmar entrega
                string situacao = "LIVRE";
                string tipo = "DEVOLVIDO";

                DateTime dataentrega = dtpDataEntrega.Value;
                DateTime hoje = DateTime.Now;

                int comparaDia = DateTime.Compare(hoje, dataentrega);

                if (comparaDia < 0 || comparaDia == 0)
                {
                   
                    string _SQL2 = "update emprestimo_reserva set tipo = @tipo where id_livro = '" + Convert.ToInt16(txtCodLivro.Text) + "';";
                    MySqlCommand command2 = new MySqlCommand(_SQL2, _conexao);
                    command2.Parameters.AddWithValue("@tipo", tipo);
                    command2.ExecuteNonQuery();

                    string _SQL = "update livro set situacao_livro = @situacao_livro where id = '" + Convert.ToInt16(txtCodLivro.Text) + "';";
                   
                    MySqlCommand command = new MySqlCommand(_SQL, _conexao);
                    
                    command.Parameters.AddWithValue("@situacao_livro", situacao);
                   
                    command.ExecuteNonQuery();
                    MessageBox.Show("Devolução Ok!");
                    limpaTela();
                }
                else
                {
                    //verficar se teve atraso na entrega, aplicar multa e confirmar entrega
                    int dias_atraso = Convert.ToInt16(dataentrega.Subtract(hoje).TotalDays);
                    if (dias_atraso < 0)
                    {
                        dias_atraso = dias_atraso * -1;
                    }
                    double multa =  (1.50 * Convert.ToDouble(dias_atraso));

                    string _SQL2 = "update emprestimo_reserva set tipo = @tipo, multa = @multa, data_entrega_atraso = @data_entrega_atraso, qtde_dias_atraso = @qtde_dias_atraso where id_livro = '" + Convert.ToInt16(txtCodLivro.Text) + "';";
                    MySqlCommand command2 = new MySqlCommand(_SQL2, _conexao);
                    command2.Parameters.AddWithValue("@tipo", tipo);
                    command2.Parameters.AddWithValue("@multa", multa);
                    command2.Parameters.AddWithValue("@data_entrega_atraso", hoje);
                    command2.Parameters.AddWithValue("@qtde_dias_atraso", dias_atraso);
                    command2.ExecuteNonQuery();
                   
                    string _SQL = "update livro set situacao_livro= @situacao_livro where id = '" + Convert.ToInt16(txtCodLivro.Text) + "';";
                    MySqlCommand command = new MySqlCommand(_SQL, _conexao);
                    command.Parameters.AddWithValue("@situacao_livro", situacao);
                    command.ExecuteNonQuery();

                    MessageBox.Show("Devolução Ok. Mas com Atraso! Multa = " + multa.ToString());
                    limpaTela();
                }
            }
            else if (cmbTipo.SelectedIndex == 1)
            {
                
                MessageBox.Show("Use o botão Confirmar Reserva");

            }
            else
            {
                MessageBox.Show("Escolha uma opção: Entrega, Reserva ou Devolução");
            }
        }

        private void btnBuscaDev_Click(object sender, EventArgs e)
        {
            MySqlConnection _conexao = new MySqlConnection(_conn);
            _conexao.Open();

            string _SQL = "Select usuario.id, usuario.nome, livro.id, livro.titulo, dev.data_emprestimo, dev.data_devolucao, multa from livro inner join emprestimo_reserva as dev on livro.id = dev.id_livro " +
                "inner join usuario on nome = '" + txtNomeDev.Text + "' and dev.tipo like '%EMP%';";

            MySqlDataAdapter _Adapter = new MySqlDataAdapter(_SQL, _conexao);

            DataSet _DataSet = new DataSet("livro");

            _Adapter.Fill(_DataSet, "livro");

            dtgDev.DataSource = _DataSet.Tables["livro"];

            _conexao.Close();
        }

        private void dtgDev_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (Convert.ToInt16(dtgDev.Rows[e.RowIndex].Cells[0].Value) > 0)
            {
                pesquisaUser = Convert.ToInt16(dtgDev.Rows[e.RowIndex].Cells[0].Value);
                this.Close();

            }
            
            frmEmprestimo_Reserva tela = new frmEmprestimo_Reserva();
            tela.ShowDialog();
        }

        private void btnConfirmarCod_Click_1(object sender, EventArgs e)
        {

            if (rdbCodigo.Checked == true)
            {

                MySqlConnection _conexao = new MySqlConnection(_conn);

                string _SQL = "Select nome from usuario";
                _SQL = _SQL + "  Where id=@id";

                MySqlCommand _command = new MySqlCommand(_SQL, _conexao);

                _command.Parameters.AddWithValue("@id", txtCodigo.Text);
                _command.CommandType = CommandType.Text;
                MySqlDataReader reader;
                _conexao.Open();

                reader = _command.ExecuteReader();
                if (reader.Read())
                {
                    txtUsuario.Text = reader[0].ToString();
                    id_user = Convert.ToInt16(txtCodigo.Text);
                }
                else
                {
                    MessageBox.Show("Id digitado está incorreto ou não está cadastrado");
                }
                _conexao.Close();
            }

            else if (rdbNome.Checked == true)
            {

                MySqlConnection _conexao = new MySqlConnection(_conn);

                string _SQL = "Select id from usuario";
                _SQL = _SQL + "  Where nome=@nome";

                MySqlCommand _command = new MySqlCommand(_SQL, _conexao);

                _command.Parameters.AddWithValue("@nome", txtUsuario.Text);
                _command.CommandType = CommandType.Text;
                MySqlDataReader reader;
                _conexao.Open();

                reader = _command.ExecuteReader();
                if (reader.Read())
                {
                    txtUsuario.Text = reader[0].ToString();
                }
                else
                {
                    MessageBox.Show("Nome digitado está incorreto ou usuario não está cadastrado");
                }
                _conexao.Close();
            }
            else
            {
                MessageBox.Show("Escolha uma opção de pesquisa!");
            }
        }

        private void btnConfirmarLivro_Click_1(object sender, EventArgs e)
        {
            int _idusuarioreserva = 0;
            int _idlivroreservado = 0;
            bool verificarReserva = false;

            MySqlConnection _conexao = new MySqlConnection(_conn);
            _conexao.Open();

            if (rdbCodLivro.Checked == true)
            {

                string _SQL = "Select l.id,l.titulo,l.status_livro,l.situacao_livro from livro as l";
                _SQL = _SQL + "  Where l.id = @id";
                MySqlCommand _command = new MySqlCommand(_SQL, _conexao);
                _command.Parameters.AddWithValue("@id", txtCodLivro.Text);
                _command.CommandType = CommandType.Text;
                MySqlDataReader reader;
                reader = _command.ExecuteReader();
                
                if (reader.Read())
                {
                    
                    if (reader[3].ToString() == "EMPRESTADO" || reader[2].ToString() == "Indisponivel")
                    {
                        MessageBox.Show("Livro não está disponível para emprestimo");
                        return;
                    }
                    else if (reader[3].ToString() == "RESERVADO")
                    {
                        reader.Close();
                        string _SQL2 = "select id_usuario from emprestimo_reserva where tipo = 'RESERVADO';";
                        MySqlCommand _command2 = new MySqlCommand(_SQL2, _conexao);
                        _command2.CommandType = CommandType.Text;
                        MySqlDataReader reader2;
                        reader2 = _command.ExecuteReader();
                        verificarReserva = reader2.HasRows;
                        //string _SQL2 = "select * from emprestimo_reserva where id_usuario = '" + txtCodigo.Text + "' and tipo = 'RESERVADO';";
                        //MySqlDataAdapter adapt = new MySqlDataAdapter(_SQL2, _conexao);
                        //DataSet _DataSet = new DataSet("reserva");
                        //adapt.Fill(_DataSet, "reserva");
                        //_idusuarioreserva = Convert.ToInt16(_DataSet.Tables["reserva"].Rows[0]["id_usuario"]);
                        //_idlivroreservado = Convert.ToInt16(_DataSet.Tables["reserva"].Rows[0]["id_livro"]);

                        if (reader2.Read())
                        {
                            if (Convert.ToInt16(reader2[0]) == Convert.ToInt16(txtCodigo.Text))
                            {
                                reader2.Close();
                                reader = _command.ExecuteReader();
                                if (reader.Read())
                                {
                                    txtTitulo.Text = reader[1].ToString();
                                }
                            }
                            else
                            {
                                MessageBox.Show("Livro está reservado");
                                return;
                            }
                        }
                       
                    }
                    else
                    {
                        txtTitulo.Text = reader[1].ToString();
                    }
                }
                else
                {
                    MessageBox.Show("Id digitado está incorreto ou não está cadastrado");
                }
                _conexao.Close();
            }

            else if (rdbTitulo.Checked == true)
            {
               
                string _SQL = "Select l.id,l.titulo,l.status_livro,l.situacao_livro from livro as l";
                _SQL = _SQL + "  Where titulo=@titulo";
                MySqlCommand _command = new MySqlCommand(_SQL, _conexao);
                _command.Parameters.AddWithValue("@id", txtCodLivro.Text);
                _command.CommandType = CommandType.Text;
                MySqlDataReader reader;

                reader = _command.ExecuteReader();
                if (reader.Read())
                {
                    
                    if (reader[3].ToString() == "EMPRESTADO" || reader[2].ToString() == "Indisponivel")
                    {
                        MessageBox.Show("Livro não está disponível para emprestimo");
                        return;

                    }else if (reader[3].ToString() == "RESERVADO" && _idusuarioreserva != Convert.ToInt16(txtCodigo.Text))
                    {
                        MessageBox.Show("Livro está reservado");
                        return;
                    }
                    else
                    {
                        txtCodLivro.Text = reader[0].ToString();
                    }
                }
                else
                {
                    MessageBox.Show("Nome digitado está incorreto ou usuario não está cadastrado");
                }
                _conexao.Close();
            }
            else
            {
                MessageBox.Show("Escolha uma opção de pesquisa!");
            }
        }

        private void btnConfirmarReserva_Click(object sender, EventArgs e)
        {
            string situacao = "RESERVADO";
            string tipo = "RESERVADO";

            MySqlConnection _conexao = new MySqlConnection(_conn);
            _conexao.Open();

            if (cmbTipo.SelectedIndex == 1)
            {
                string _SQL2 = "insert into emprestimo_reserva (id_usuario, id_livro, data_reserva, tipo) ";
                _SQL2 = _SQL2 + " values (@id_usuario, @id_livro, @data_reserva, @tipo) ";

                dtpDataReserva.Format = DateTimePickerFormat.Custom;
                dtpDataReserva.CustomFormat = "yyyy-MM-dd";

                MySqlCommand command2 = new MySqlCommand(_SQL2, _conexao);
                command2.Parameters.AddWithValue("@id_usuario", txtCodigo.Text);
                command2.Parameters.AddWithValue("@id_livro", txtCodLivro.Text);
                command2.Parameters.AddWithValue("@data_reserva", dtpDataReserva.ToString());
                command2.Parameters.AddWithValue("@tipo", tipo);
                command2.CommandType = CommandType.Text;
                command2.ExecuteNonQuery();

                string _SQL = "update livro set situacao_livro = @situacao_livro where id = '" + Convert.ToInt16(txtCodLivro.Text) + "';";

                MySqlCommand command = new MySqlCommand(_SQL, _conexao);
                command.Parameters.AddWithValue("@situacao_livro", situacao);
                command.ExecuteNonQuery();

                MessageBox.Show("Reservado com sucesso");
                limpaTela();
            }
            else
            {
                MessageBox.Show("Escolha outra opção de pesquisa!");
            }
        }
        private void limpaTela()
        {
            txtCodigo.Text = "";
            txtUsuario.Text = "";
            txtCodLivro.Text = "";
            txtTitulo.Text = "";
            txtCodLivro.Text = "";
            cmbTipo.SelectedIndex = -1;
            rdbCodigo.Checked = false;
            rdbCodLivro.Checked = false;
            rdbNome.Checked = false;
            rdbTitulo.Checked = false;
        }
    }
   
}
