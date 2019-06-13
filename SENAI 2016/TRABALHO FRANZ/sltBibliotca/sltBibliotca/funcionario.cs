using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace sltBibliotca
{
    class funcionario
    {
        private string _nome;
        private string _email;
        private string _nomeUsuario;
        private string _senha;

        public string Nome {
            get
            {
                return _nome;
            }
            set
            {
                _nome = value;
            }
        }

        public string Email
        {
            get
            {
                return _email;
            }
            set
            {
                _email = value;
            }
        }

        public string NomeUsuario
        {
            get
            {
                return _nomeUsuario;
            }
            set
            {
                _nomeUsuario = value;
            }
        }

        public string Senha
        {
            get
            {
                return _senha;
            }
            set
            {
                _senha = value;
            }
        }


        public funcionario(string nome, string email, string nomeUsuario, string senha)
        {
            this.Nome = nome;
            this.Email = email;
            this.NomeUsuario = nomeUsuario;
            this.Senha = senha;
        }

        public void InserirFuncionario(funcionario funcionario)
        {
            //incluir funcionario na tabela

            MySqlConnection _conn = new MySqlConnection("server = localhost; user = root; pwd = ''; database = biblioteca");

            string _SQL = "";
            _SQL = _SQL + "INSERT INTO ";
            _SQL = _SQL + "     funcionario ";
            _SQL = _SQL + "     ( ";
            _SQL = _SQL + "     nome ";
            _SQL = _SQL + "     ,email ";
            _SQL = _SQL + "     ,nome_de_usuario ";
            _SQL = _SQL + "     ,senha ";
            _SQL = _SQL + "     ) ";
            _SQL = _SQL + "  VALUES ";
            _SQL = _SQL + "     ( ";
            _SQL = _SQL + "      @nome  ";
            _SQL = _SQL + "      ,@email ";
            _SQL = _SQL + "      ,@nome_de_usuario ";
            _SQL = _SQL + "      ,@senha ";
            _SQL = _SQL + "     ) ";

            MySqlCommand command = new MySqlCommand(_SQL, _conn);

            command.Parameters.AddWithValue("@nome", funcionario.Nome);
            command.Parameters.AddWithValue("@email", funcionario.Email);
            command.Parameters.AddWithValue("@nome_de_usuario", funcionario.NomeUsuario);
            command.Parameters.AddWithValue("@senha", funcionario.Senha);

            try
            {
                _conn.Open();
                int registrosAfetados = command.ExecuteNonQuery();
            }
            catch(MySqlException ex)
            {
                throw new ApplicationException(ex.ToString());
            }
            finally
            {
                _conn.Close();
            }
        }
    }
}
