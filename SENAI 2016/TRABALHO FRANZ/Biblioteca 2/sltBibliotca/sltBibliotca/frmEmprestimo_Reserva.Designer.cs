namespace sltBibliotca
{
    partial class frmEmprestimo_Reserva
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmEmprestimo_Reserva));
            this.label1 = new System.Windows.Forms.Label();
            this.cmbTipo = new System.Windows.Forms.ComboBox();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.btnConfirmarEmprestimo = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnConfirmarReserva = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButton4 = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButton5 = new System.Windows.Forms.ToolStripButton();
            this.label9 = new System.Windows.Forms.Label();
            this.txtIdLogado = new System.Windows.Forms.TextBox();
            this.txtUser = new System.Windows.Forms.TextBox();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dtpDataEntrega = new System.Windows.Forms.DateTimePicker();
            this.dtpDataEmprestimo = new System.Windows.Forms.DateTimePicker();
            this.dtpDataReserva = new System.Windows.Forms.DateTimePicker();
            this.btnConfirmarLivro = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtTitulo = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtCodLivro = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.rdbTitulo = new System.Windows.Forms.RadioButton();
            this.rdbCodLivro = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnConfirmarCod = new System.Windows.Forms.Button();
            this.txtUsuario = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.rdbNome = new System.Windows.Forms.RadioButton();
            this.rdbCodigo = new System.Windows.Forms.RadioButton();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.dtgDev = new System.Windows.Forms.DataGridView();
            this.btnBuscaDev = new System.Windows.Forms.Button();
            this.txtNomeDev = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.toolStrip1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgDev)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 80);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tipo:";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // cmbTipo
            // 
            this.cmbTipo.FormattingEnabled = true;
            this.cmbTipo.Location = new System.Drawing.Point(64, 77);
            this.cmbTipo.Name = "cmbTipo";
            this.cmbTipo.Size = new System.Drawing.Size(163, 24);
            this.cmbTipo.TabIndex = 1;
            this.cmbTipo.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnConfirmarEmprestimo,
            this.toolStripSeparator1,
            this.btnConfirmarReserva,
            this.toolStripSeparator2,
            this.toolStripButton4,
            this.toolStripSeparator4,
            this.toolStripButton5});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Padding = new System.Windows.Forms.Padding(0, 0, 2, 0);
            this.toolStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
            this.toolStrip1.Size = new System.Drawing.Size(659, 55);
            this.toolStrip1.TabIndex = 38;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // btnConfirmarEmprestimo
            // 
            this.btnConfirmarEmprestimo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btnConfirmarEmprestimo.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfirmarEmprestimo.Image = ((System.Drawing.Image)(resources.GetObject("btnConfirmarEmprestimo.Image")));
            this.btnConfirmarEmprestimo.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConfirmarEmprestimo.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.btnConfirmarEmprestimo.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnConfirmarEmprestimo.Name = "btnConfirmarEmprestimo";
            this.btnConfirmarEmprestimo.Size = new System.Drawing.Size(214, 52);
            this.btnConfirmarEmprestimo.Text = "EMPRESTIMO/ DEVOLUÇÃO";
            this.btnConfirmarEmprestimo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnConfirmarEmprestimo.Click += new System.EventHandler(this.btnConfirmarEmprestimo_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 55);
            // 
            // btnConfirmarReserva
            // 
            this.btnConfirmarReserva.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConfirmarReserva.Image = ((System.Drawing.Image)(resources.GetObject("btnConfirmarReserva.Image")));
            this.btnConfirmarReserva.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.btnConfirmarReserva.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnConfirmarReserva.Name = "btnConfirmarReserva";
            this.btnConfirmarReserva.Size = new System.Drawing.Size(182, 52);
            this.btnConfirmarReserva.Text = "CONFIRMAR RESERVA";
            this.btnConfirmarReserva.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnConfirmarReserva.Click += new System.EventHandler(this.btnConfirmarReserva_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(6, 55);
            // 
            // toolStripButton4
            // 
            this.toolStripButton4.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripButton4.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton4.Image")));
            this.toolStripButton4.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.toolStripButton4.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton4.Name = "toolStripButton4";
            this.toolStripButton4.Size = new System.Drawing.Size(102, 52);
            this.toolStripButton4.Text = "LIMPAR";
            this.toolStripButton4.Click += new System.EventHandler(this.toolStripButton4_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(6, 55);
            // 
            // toolStripButton5
            // 
            this.toolStripButton5.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripButton5.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton5.Image")));
            this.toolStripButton5.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.toolStripButton5.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton5.Name = "toolStripButton5";
            this.toolStripButton5.Size = new System.Drawing.Size(86, 52);
            this.toolStripButton5.Text = "SAIR";
            this.toolStripButton5.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(392, 80);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(45, 16);
            this.label9.TabIndex = 7;
            this.label9.Text = "User:";
            // 
            // txtIdLogado
            // 
            this.txtIdLogado.Enabled = false;
            this.txtIdLogado.Location = new System.Drawing.Point(444, 77);
            this.txtIdLogado.Name = "txtIdLogado";
            this.txtIdLogado.Size = new System.Drawing.Size(27, 22);
            this.txtIdLogado.TabIndex = 7;
            // 
            // txtUser
            // 
            this.txtUser.Enabled = false;
            this.txtUser.Location = new System.Drawing.Point(477, 77);
            this.txtUser.Name = "txtUser";
            this.txtUser.Size = new System.Drawing.Size(126, 22);
            this.txtUser.TabIndex = 7;
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(16, 107);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(633, 407);
            this.tabControl1.TabIndex = 39;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.groupBox2);
            this.tabPage1.Controls.Add(this.groupBox1);
            this.tabPage1.Location = new System.Drawing.Point(4, 25);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(625, 378);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Emprestimo/Reserva";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dtpDataEntrega);
            this.groupBox2.Controls.Add(this.dtpDataEmprestimo);
            this.groupBox2.Controls.Add(this.dtpDataReserva);
            this.groupBox2.Controls.Add(this.btnConfirmarLivro);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.txtTitulo);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.txtCodLivro);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.rdbTitulo);
            this.groupBox2.Controls.Add(this.rdbCodLivro);
            this.groupBox2.Location = new System.Drawing.Point(7, 178);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox2.Size = new System.Drawing.Size(615, 197);
            this.groupBox2.TabIndex = 39;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Livro";
            // 
            // dtpDataEntrega
            // 
            this.dtpDataEntrega.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpDataEntrega.Location = new System.Drawing.Point(495, 154);
            this.dtpDataEntrega.Name = "dtpDataEntrega";
            this.dtpDataEntrega.Size = new System.Drawing.Size(113, 22);
            this.dtpDataEntrega.TabIndex = 47;
            // 
            // dtpDataEmprestimo
            // 
            this.dtpDataEmprestimo.Enabled = false;
            this.dtpDataEmprestimo.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpDataEmprestimo.Location = new System.Drawing.Point(167, 154);
            this.dtpDataEmprestimo.Name = "dtpDataEmprestimo";
            this.dtpDataEmprestimo.Size = new System.Drawing.Size(113, 22);
            this.dtpDataEmprestimo.TabIndex = 46;
            // 
            // dtpDataReserva
            // 
            this.dtpDataReserva.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpDataReserva.Location = new System.Drawing.Point(495, 63);
            this.dtpDataReserva.Name = "dtpDataReserva";
            this.dtpDataReserva.Size = new System.Drawing.Size(113, 22);
            this.dtpDataReserva.TabIndex = 7;
            // 
            // btnConfirmarLivro
            // 
            this.btnConfirmarLivro.Image = ((System.Drawing.Image)(resources.GetObject("btnConfirmarLivro.Image")));
            this.btnConfirmarLivro.Location = new System.Drawing.Point(184, 55);
            this.btnConfirmarLivro.Name = "btnConfirmarLivro";
            this.btnConfirmarLivro.Size = new System.Drawing.Size(32, 30);
            this.btnConfirmarLivro.TabIndex = 7;
            this.btnConfirmarLivro.UseVisualStyleBackColor = true;
            this.btnConfirmarLivro.Click += new System.EventHandler(this.btnConfirmarLivro_Click_1);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(364, 65);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(130, 16);
            this.label8.TabIndex = 9;
            this.label8.Text = "Data da Reserva:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(364, 157);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(125, 16);
            this.label7.TabIndex = 8;
            this.label7.Text = "Data da Entrega:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(7, 157);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(153, 16);
            this.label6.TabIndex = 6;
            this.label6.Text = "Data da Emprestimo:";
            // 
            // txtTitulo
            // 
            this.txtTitulo.Location = new System.Drawing.Point(78, 110);
            this.txtTitulo.Name = "txtTitulo";
            this.txtTitulo.Size = new System.Drawing.Size(509, 22);
            this.txtTitulo.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(8, 111);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(51, 16);
            this.label4.TabIndex = 4;
            this.label4.Text = "Titulo:";
            // 
            // txtCodLivro
            // 
            this.txtCodLivro.Location = new System.Drawing.Point(77, 62);
            this.txtCodLivro.Name = "txtCodLivro";
            this.txtCodLivro.Size = new System.Drawing.Size(90, 22);
            this.txtCodLivro.TabIndex = 3;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(8, 65);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(62, 16);
            this.label5.TabIndex = 2;
            this.label5.Text = "Codigo:";
            // 
            // rdbTitulo
            // 
            this.rdbTitulo.AutoSize = true;
            this.rdbTitulo.Location = new System.Drawing.Point(101, 23);
            this.rdbTitulo.Margin = new System.Windows.Forms.Padding(4);
            this.rdbTitulo.Name = "rdbTitulo";
            this.rdbTitulo.Size = new System.Drawing.Size(65, 20);
            this.rdbTitulo.TabIndex = 1;
            this.rdbTitulo.TabStop = true;
            this.rdbTitulo.Text = "Titulo";
            this.rdbTitulo.UseVisualStyleBackColor = true;
            // 
            // rdbCodLivro
            // 
            this.rdbCodLivro.AutoSize = true;
            this.rdbCodLivro.Location = new System.Drawing.Point(8, 23);
            this.rdbCodLivro.Margin = new System.Windows.Forms.Padding(4);
            this.rdbCodLivro.Name = "rdbCodLivro";
            this.rdbCodLivro.Size = new System.Drawing.Size(76, 20);
            this.rdbCodLivro.TabIndex = 0;
            this.rdbCodLivro.TabStop = true;
            this.rdbCodLivro.Text = "Codigo";
            this.rdbCodLivro.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnConfirmarCod);
            this.groupBox1.Controls.Add(this.txtUsuario);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtCodigo);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.rdbNome);
            this.groupBox1.Controls.Add(this.rdbCodigo);
            this.groupBox1.Location = new System.Drawing.Point(7, 7);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox1.Size = new System.Drawing.Size(615, 163);
            this.groupBox1.TabIndex = 38;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Usuario";
            // 
            // btnConfirmarCod
            // 
            this.btnConfirmarCod.Image = ((System.Drawing.Image)(resources.GetObject("btnConfirmarCod.Image")));
            this.btnConfirmarCod.Location = new System.Drawing.Point(184, 57);
            this.btnConfirmarCod.Name = "btnConfirmarCod";
            this.btnConfirmarCod.Size = new System.Drawing.Size(32, 32);
            this.btnConfirmarCod.TabIndex = 6;
            this.btnConfirmarCod.UseVisualStyleBackColor = true;
            this.btnConfirmarCod.Click += new System.EventHandler(this.btnConfirmarCod_Click_1);
            // 
            // txtUsuario
            // 
            this.txtUsuario.Location = new System.Drawing.Point(78, 110);
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.Size = new System.Drawing.Size(509, 22);
            this.txtUsuario.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(8, 113);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(66, 16);
            this.label3.TabIndex = 4;
            this.label3.Text = "Usuario:";
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(77, 62);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(90, 22);
            this.txtCodigo.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(8, 65);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(62, 16);
            this.label2.TabIndex = 2;
            this.label2.Text = "Codigo:";
            // 
            // rdbNome
            // 
            this.rdbNome.AutoSize = true;
            this.rdbNome.Location = new System.Drawing.Point(101, 23);
            this.rdbNome.Margin = new System.Windows.Forms.Padding(4);
            this.rdbNome.Name = "rdbNome";
            this.rdbNome.Size = new System.Drawing.Size(67, 20);
            this.rdbNome.TabIndex = 1;
            this.rdbNome.TabStop = true;
            this.rdbNome.Text = "Nome";
            this.rdbNome.UseVisualStyleBackColor = true;
            // 
            // rdbCodigo
            // 
            this.rdbCodigo.AutoSize = true;
            this.rdbCodigo.Location = new System.Drawing.Point(8, 23);
            this.rdbCodigo.Margin = new System.Windows.Forms.Padding(4);
            this.rdbCodigo.Name = "rdbCodigo";
            this.rdbCodigo.Size = new System.Drawing.Size(76, 20);
            this.rdbCodigo.TabIndex = 0;
            this.rdbCodigo.TabStop = true;
            this.rdbCodigo.Text = "Codigo";
            this.rdbCodigo.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.dtgDev);
            this.tabPage2.Controls.Add(this.btnBuscaDev);
            this.tabPage2.Controls.Add(this.txtNomeDev);
            this.tabPage2.Controls.Add(this.label10);
            this.tabPage2.Location = new System.Drawing.Point(4, 25);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(625, 378);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Devolução";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // dtgDev
            // 
            this.dtgDev.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgDev.Location = new System.Drawing.Point(6, 41);
            this.dtgDev.Name = "dtgDev";
            this.dtgDev.Size = new System.Drawing.Size(613, 331);
            this.dtgDev.TabIndex = 10;
            this.dtgDev.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgDev_CellDoubleClick);
            // 
            // btnBuscaDev
            // 
            this.btnBuscaDev.Image = ((System.Drawing.Image)(resources.GetObject("btnBuscaDev.Image")));
            this.btnBuscaDev.Location = new System.Drawing.Point(573, 3);
            this.btnBuscaDev.Name = "btnBuscaDev";
            this.btnBuscaDev.Size = new System.Drawing.Size(32, 32);
            this.btnBuscaDev.TabIndex = 9;
            this.btnBuscaDev.UseVisualStyleBackColor = true;
            this.btnBuscaDev.Click += new System.EventHandler(this.btnBuscaDev_Click);
            // 
            // txtNomeDev
            // 
            this.txtNomeDev.Location = new System.Drawing.Point(85, 11);
            this.txtNomeDev.Name = "txtNomeDev";
            this.txtNomeDev.Size = new System.Drawing.Size(473, 22);
            this.txtNomeDev.TabIndex = 8;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(16, 14);
            this.label10.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(53, 16);
            this.label10.TabIndex = 7;
            this.label10.Text = "Nome:";
            // 
            // frmEmprestimo_Reserva
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(659, 521);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.txtUser);
            this.Controls.Add(this.txtIdLogado);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.cmbTipo);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "frmEmprestimo_Reserva";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmEmprestimo_Reserva";
            this.Load += new System.EventHandler(this.frmEmprestimo_Reserva_Load);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgDev)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbTipo;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton btnConfirmarEmprestimo;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton btnConfirmarReserva;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton toolStripButton4;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripButton toolStripButton5;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtIdLogado;
        private System.Windows.Forms.TextBox txtUser;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DateTimePicker dtpDataEntrega;
        private System.Windows.Forms.DateTimePicker dtpDataEmprestimo;
        private System.Windows.Forms.DateTimePicker dtpDataReserva;
        private System.Windows.Forms.Button btnConfirmarLivro;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtTitulo;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtCodLivro;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.RadioButton rdbTitulo;
        private System.Windows.Forms.RadioButton rdbCodLivro;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnConfirmarCod;
        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.RadioButton rdbNome;
        private System.Windows.Forms.RadioButton rdbCodigo;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.DataGridView dtgDev;
        private System.Windows.Forms.Button btnBuscaDev;
        private System.Windows.Forms.TextBox txtNomeDev;
        private System.Windows.Forms.Label label10;
    }
}