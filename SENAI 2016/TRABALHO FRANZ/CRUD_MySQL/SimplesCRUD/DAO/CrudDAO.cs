using System;
using MySql.Data.MySqlClient;

namespace SampleCRUD.DAO
{
    class CrudDAO
    {
        private Helpers.dbs db;
        private MySqlConnection con;

        public CrudDAO()
        {

        }

        public void InserirDados(String itemcodigo, String itemdescricao, Double itempreco)
        {
            con = new MySqlConnection();
            db = new Helpers.dbs();
            con.ConnectionString = db.getConnectionString();
            String query = "INSERT INTO inventario (itemcodigo, itemdescricao, itempreco) VALUES";
            query += "(?itemcodigo, ?itemdescricao, ?itempreco)";
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd.Parameters.AddWithValue("?itemcodigo", itemcodigo);
                cmd.Parameters.AddWithValue("?itemdescricao", itemdescricao);
                cmd.Parameters.AddWithValue("?itempreco", itempreco);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            finally
            {
                con.Close();
            }
        }
        public void AtualizarDados(String itemcodigo, String itemdescricao, Double itempreco, Int32 itemid)
        {
            con = new MySqlConnection();
            db = new Helpers.dbs();
            con.ConnectionString = db.getConnectionString();
            String query = "UPDATE inventario SET itemcodigo = ?itemcodigo, itemdescricao = ?itemdescricao, itempreco = ?itempreco";
            query += " WHERE itemid = ?itemid";
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd.Parameters.AddWithValue("?itemcodigo", itemcodigo);
                cmd.Parameters.AddWithValue("?itemdescricao", itemdescricao);
                cmd.Parameters.AddWithValue("?itempreco", itempreco);
                cmd.Parameters.AddWithValue("?itemid", itemid);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            finally
            {
                con.Close();
            }
        }
        public void RemoverDados(String itemcodigo, Int32 itemid)
        {
            con = new MySqlConnection();
            db = new Helpers.dbs();
            con.ConnectionString = db.getConnectionString();
            String query = "DELETE FROM inventario ";
            query += "WHERE itemcodigo = ?itemcodigo AND itemid = ?itemid";
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd.Parameters.AddWithValue("?itemcodigo", itemcodigo);
                cmd.Parameters.AddWithValue("?itemid", itemid);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            finally
            {
                con.Close();
            }
        }
    }
}