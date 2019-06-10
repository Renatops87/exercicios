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
    public partial class frmLogin : Form
    {
        public static int id_logado;
        public static string user;
        public frmLogin()
        {
            InitializeComponent();
        }
        private bool Logado = false;

        private void frmLogin_Load(object sender, EventArgs e)
        {

        }
        bool VerificaLogin()
        {
            bool result = false;
            string conexao = ("server=localhost;user=root;pwd='';database=biblioteca");
            using (MySqlConnection con = new MySqlConnection())
            {
                con.ConnectionString = conexao;

                try
                {
                    MySqlCommand cmd = new MySqlCommand("select * from funcionario where nome_de_usuario = '" + txtUsuario.Text + "' and senha = '" +txtSenha.Text + "'; ", con);
                    con.Open();
                    MySqlDataReader dados = cmd.ExecuteReader();
                    if (dados.Read())
                    {
                        id_logado = Convert.ToInt16(dados[0].ToString());
                        user = dados[3].ToString();
                        dados.Close();

                       
                    }
                 
                        MySqlDataReader dados1 = cmd.ExecuteReader();
                        result = dados1.HasRows;
                    
                   
                   
                }
                catch (MySqlException e)
                {
                    throw new Exception(e.Message);
                }
                finally
                {
                    con.Close();
                }
            }
            return result;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            bool result = VerificaLogin();

            Logado = result;

            if (result)
            {
                
                MessageBox.Show("Seja bem vindo!");

                this.Close();
            }
            else
            {
                MessageBox.Show("Usuário ou senha incorreto!");
            }
        }

        private void frmLogin_FormClosed(object sender, FormClosedEventArgs e)
        {
            if(Logado)
            {
                this.Close();
            }
            else
            {
                Application.Exit();
            }
        }
    }
}
