using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Windows.Forms;

namespace SampleCRUD
{
    public partial class Form1 : Form
    {
        private Helpers.dbs db;
        private VO.CrudVO cruds;
        private Int32 catchRowIndex;
        public Form1()
        {
            InitializeComponent();
        }

        private void carregaDados()
        {
            db = new Helpers.dbs();
            dataGridView1.DataSource = null;
            dataGridView1.Rows.Clear();
            dataGridView1.Refresh();

            string connectionString = db.getConnectionString();
            string query = "SELECT * FROM inventario";
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                using (MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn))
                {
                    try
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);
                        for (int i = 0; i < dataTable.Rows.Count; i++)
                        {
                            dataGridView1.Rows.Add(dataTable.Rows[i][0], dataTable.Rows[i][1], dataTable.Rows[i][2], Convert.ToDouble(dataTable.Rows[i][3]).ToString("###,###,###,#00.00"));
                        }
                        double sum = 0;
                        for (int i = 0; i < dataGridView1.Rows.Count; ++i)
                        {
                            sum += Convert.ToDouble(dataGridView1.Rows[i].Cells[3].Value);
                        }
                        rdSum.Text = sum.ToString("###,###,###,#00.00");
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error" + ex);
                    }
                }
            } // end using
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            carregaDados();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                cruds = new VO.CrudVO();
                cruds.itemcodigo = textBox2.Text;
                cruds.itemdescricao = textBox3.Text;
                cruds.itempreco = Convert.ToDouble(textBox4.Text);
                cruds.Inserir();
                dataGridView1.Rows.Add(null, textBox2.Text, textBox3.Text, textBox4.Text);
                textBox2.Clear();
                textBox3.Clear();
                textBox4.Clear();
            }
            catch (Exception)
            {
                MessageBox.Show("Ocorreu um erro ao realizar a operação", "Database", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            cruds = new VO.CrudVO();
            try
            {
                cruds.itemcodigo = textBox2.Text;
                cruds.itemdescricao = textBox3.Text;
                cruds.itempreco = Convert.ToDouble(textBox4.Text);
                cruds.itemid = Convert.ToInt32(textBox1.Text);
                cruds.Atualizar();
                dataGridView1[0, catchRowIndex].Value = textBox1.Text;
                dataGridView1[1, catchRowIndex].Value = textBox2.Text;
                dataGridView1[2, catchRowIndex].Value = textBox3.Text;
                dataGridView1[3, catchRowIndex].Value = textBox4.Text;
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
                textBox1.Clear();
                textBox2.Clear();
                textBox3.Clear();
                textBox4.Clear();
            }
            catch (Exception)
            {
                MessageBox.Show("Ocorreu um erro ao realizar a operação", "Database", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            catchRowIndex = dataGridView1.SelectedCells[0].RowIndex;
            foreach (DataGridViewRow row in dataGridView1.SelectedRows)
            {
                textBox1.Text = row.Cells[0].Value.ToString();
                textBox2.Text = row.Cells[1].Value.ToString();
                textBox3.Text = row.Cells[2].Value.ToString();
                textBox4.Text = row.Cells[3].Value.ToString();
            }
            btnUpdate.Enabled = true;
            btnDelete.Enabled = true;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            if (textBox2.Text != "" && textBox3.Text != "" && textBox4.Text != "")
            {
                btnAdd.Enabled = true;
            }
            else
                btnAdd.Enabled = false;
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            if (textBox2.Text != "" && textBox3.Text != "" && textBox4.Text != "")
            {
                btnAdd.Enabled = true;
            }
            else
                btnAdd.Enabled = false;
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
            if (textBox2.Text != "" && textBox3.Text != "" && textBox4.Text != "")
            {
                btnAdd.Enabled = true;
            }
            else
                btnAdd.Enabled = false;
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            cruds = new VO.CrudVO();
            try
            {
                cruds.itemcodigo = textBox2.Text;
                cruds.itemid = Convert.ToInt32(textBox1.Text);
                cruds.Remover();
                dataGridView1.Rows.RemoveAt(catchRowIndex);
                btnUpdate.Enabled = false;
                btnDelete.Enabled = false;
                textBox1.Clear();
                textBox2.Clear();
                textBox3.Clear();
                textBox4.Clear();
            }
            catch (Exception)
            {
                MessageBox.Show("Ocorreu um erro ao realizar a operação", "Database", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();
            textBox2.Focus();
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            carregaDados();
            this.Refresh();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            carregaDados();
        }
    }
}