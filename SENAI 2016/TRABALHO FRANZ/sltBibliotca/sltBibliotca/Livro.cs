using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace sltBibliotca
{
    class Livro
    {
        private string _Titulo;
        private string _Autor;
        private DateTime _DataPublicacao;
        private string _Editora;
        private string _Edicao;
        private string _Isbn;
        private DateTime _DataAquisicao;
        private string _StatusLivro;

        public string Titulo
        {
            get { return _Titulo; }
            set { _Titulo = value; }
        }

        public string Autor
        {
            get { return _Autor; }
            set { _Autor = value; }
        }

        public DateTime DataPublicacao
        {
            get { return _DataPublicacao; }
            set { _DataPublicacao = value; }
        }

        public string Editora
        {
            get { return _Editora; }
            set { _Editora = value; }
        }

        public string Edicao
        {
            get { return _Edicao; }
            set { _Edicao = value; }
        }

        public string Isbn
        {
            get { return _Isbn; }
            set { _Isbn = value; }
        }

        public DateTime DataAquisicao
        {
            get { return _DataAquisicao; }
            set { _DataAquisicao = value; }
        }

        public string StatusLivro
        {
            get { return _StatusLivro; }
            set { _StatusLivro = value; }
        }

        public Livro(string titulo, string autor, DateTime dataPublicacao, string editora, string edicao, string isbn, DateTime dataAquisicao, string statusLivro)
        {

            this.Titulo = titulo;
            this.Autor = autor;
            this.DataPublicacao = dataPublicacao;
            this.Editora = editora;
            this.Edicao = edicao;
            this.Isbn = isbn;
            this.DataAquisicao = dataAquisicao;
            this.StatusLivro = statusLivro;
            
        }

        public void CadastrarLivro(Livro livro)
        {
            //cadastrar livros na tabela

            MySqlConnection _conn = new MySqlConnection("server = localhost; user = root; pwd = ''; database = biblioteca");

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
            _SQL = _SQL + "     ) Select Last_Insert_ID(); ";

            MySqlCommand command = new MySqlCommand(_SQL, _conn);

            command.Parameters.AddWithValue("@titulo", livro.Titulo);
            command.Parameters.AddWithValue("@autor", livro.Autor);
            command.Parameters.AddWithValue("@data_publicacao", livro.DataPublicacao);
            command.Parameters.AddWithValue("@editora", livro.Editora);
            command.Parameters.AddWithValue("@edicao", livro.Edicao);
            command.Parameters.AddWithValue("@isbn", livro.Isbn);
            command.Parameters.AddWithValue("@data_aquisicao", livro.DataAquisicao);
            command.Parameters.AddWithValue("@status_livro", livro.StatusLivro);

            try
            {
                _conn.Open();
                int registrosAfetados = command.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                throw new ApplicationException(ex.ToString());
            }
            finally
            {
                _conn.Close();
            }
        }

        public void AtualizarLivro(Livro livro)
        {
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

            MySqlCommand command = new MySqlCommand(_SQL, _conn);

            
            command.Parameters.AddWithValue("@titulo", livro.Titulo);
            command.Parameters.AddWithValue("@autor", livro.Autor);
            command.Parameters.AddWithValue("@data_publicacao", livro.DataPublicacao);
            command.Parameters.AddWithValue("@editora", livro.Editora);
            command.Parameters.AddWithValue("@edicao", livro.Edicao);
            command.Parameters.AddWithValue("@isbn", livro.Isbn);
            command.Parameters.AddWithValue("@data_aquisicao", livro.DataAquisicao);
            command.Parameters.AddWithValue("@status_livro", livro.StatusLivro);

            try
            {
                _conn.Open();
                int registrosAfetados = command.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                throw new ApplicationException(ex.ToString());
            }
            finally
            {
                _conn.Close();
            }
        }

        public void ConsultarLivro(Livro livro)
        {

        }
    }
}
