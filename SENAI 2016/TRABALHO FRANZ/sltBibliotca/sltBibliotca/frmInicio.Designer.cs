namespace sltBibliotca
{
    partial class frmInicio
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmInicio));
            this.btnCadastroLivros = new System.Windows.Forms.Button();
            this.btnCadastroUser = new System.Windows.Forms.Button();
            this.btnConsultaAcervo = new System.Windows.Forms.Button();
            this.btnEmprestimo = new System.Windows.Forms.Button();
            this.btnRelatorio = new System.Windows.Forms.Button();
            this.btnUsuarios = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.funcionáriosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cadastrarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.alterarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnCadastroLivros
            // 
            this.btnCadastroLivros.Image = ((System.Drawing.Image)(resources.GetObject("btnCadastroLivros.Image")));
            this.btnCadastroLivros.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnCadastroLivros.Location = new System.Drawing.Point(371, 212);
            this.btnCadastroLivros.Name = "btnCadastroLivros";
            this.btnCadastroLivros.Size = new System.Drawing.Size(101, 117);
            this.btnCadastroLivros.TabIndex = 4;
            this.btnCadastroLivros.Text = "Cadastrar Livros";
            this.btnCadastroLivros.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnCadastroLivros.UseVisualStyleBackColor = true;
            this.btnCadastroLivros.Click += new System.EventHandler(this.btnCadastroLivros_Click);
            // 
            // btnCadastroUser
            // 
            this.btnCadastroUser.Image = ((System.Drawing.Image)(resources.GetObject("btnCadastroUser.Image")));
            this.btnCadastroUser.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnCadastroUser.Location = new System.Drawing.Point(540, 212);
            this.btnCadastroUser.Name = "btnCadastroUser";
            this.btnCadastroUser.Size = new System.Drawing.Size(101, 117);
            this.btnCadastroUser.TabIndex = 5;
            this.btnCadastroUser.Text = "cadastrar usuario";
            this.btnCadastroUser.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnCadastroUser.UseVisualStyleBackColor = true;
            this.btnCadastroUser.Click += new System.EventHandler(this.btnCadastroUser_Click);
            // 
            // btnConsultaAcervo
            // 
            this.btnConsultaAcervo.Image = ((System.Drawing.Image)(resources.GetObject("btnConsultaAcervo.Image")));
            this.btnConsultaAcervo.Location = new System.Drawing.Point(33, 212);
            this.btnConsultaAcervo.Name = "btnConsultaAcervo";
            this.btnConsultaAcervo.Size = new System.Drawing.Size(101, 117);
            this.btnConsultaAcervo.TabIndex = 6;
            this.btnConsultaAcervo.Text = "Acervo";
            this.btnConsultaAcervo.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnConsultaAcervo.UseVisualStyleBackColor = true;
            // 
            // btnEmprestimo
            // 
            this.btnEmprestimo.Image = ((System.Drawing.Image)(resources.GetObject("btnEmprestimo.Image")));
            this.btnEmprestimo.Location = new System.Drawing.Point(202, 212);
            this.btnEmprestimo.Name = "btnEmprestimo";
            this.btnEmprestimo.Size = new System.Drawing.Size(101, 117);
            this.btnEmprestimo.TabIndex = 7;
            this.btnEmprestimo.Text = "Emprestimo";
            this.btnEmprestimo.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
            this.btnEmprestimo.UseVisualStyleBackColor = true;
            // 
            // btnRelatorio
            // 
            this.btnRelatorio.Image = ((System.Drawing.Image)(resources.GetObject("btnRelatorio.Image")));
            this.btnRelatorio.Location = new System.Drawing.Point(878, 212);
            this.btnRelatorio.Name = "btnRelatorio";
            this.btnRelatorio.Size = new System.Drawing.Size(101, 117);
            this.btnRelatorio.TabIndex = 8;
            this.btnRelatorio.Text = "Relatorio";
            this.btnRelatorio.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnRelatorio.UseVisualStyleBackColor = true;
            // 
            // btnUsuarios
            // 
            this.btnUsuarios.Image = ((System.Drawing.Image)(resources.GetObject("btnUsuarios.Image")));
            this.btnUsuarios.Location = new System.Drawing.Point(709, 212);
            this.btnUsuarios.Name = "btnUsuarios";
            this.btnUsuarios.Size = new System.Drawing.Size(101, 117);
            this.btnUsuarios.TabIndex = 9;
            this.btnUsuarios.Text = "Usuarios";
            this.btnUsuarios.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnUsuarios.UseVisualStyleBackColor = true;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.funcionáriosToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1015, 24);
            this.menuStrip1.TabIndex = 10;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // funcionáriosToolStripMenuItem
            // 
            this.funcionáriosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cadastrarToolStripMenuItem,
            this.alterarToolStripMenuItem});
            this.funcionáriosToolStripMenuItem.Name = "funcionáriosToolStripMenuItem";
            this.funcionáriosToolStripMenuItem.Size = new System.Drawing.Size(87, 20);
            this.funcionáriosToolStripMenuItem.Text = "Funcionários";
            // 
            // cadastrarToolStripMenuItem
            // 
            this.cadastrarToolStripMenuItem.Name = "cadastrarToolStripMenuItem";
            this.cadastrarToolStripMenuItem.Size = new System.Drawing.Size(178, 22);
            this.cadastrarToolStripMenuItem.Text = "Cadastrar ";
            this.cadastrarToolStripMenuItem.Click += new System.EventHandler(this.cadastrarToolStripMenuItem_Click);
            // 
            // alterarToolStripMenuItem
            // 
            this.alterarToolStripMenuItem.Name = "alterarToolStripMenuItem";
            this.alterarToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.alterarToolStripMenuItem.Text = "Consultar";
            // 
            // frmInicio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1015, 485);
            this.Controls.Add(this.btnUsuarios);
            this.Controls.Add(this.btnRelatorio);
            this.Controls.Add(this.btnEmprestimo);
            this.Controls.Add(this.btnConsultaAcervo);
            this.Controls.Add(this.btnCadastroUser);
            this.Controls.Add(this.btnCadastroLivros);
            this.Controls.Add(this.menuStrip1);
            this.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmInicio";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Inicio";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmInicio_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnCadastroLivros;
        private System.Windows.Forms.Button btnCadastroUser;
        private System.Windows.Forms.Button btnConsultaAcervo;
        private System.Windows.Forms.Button btnEmprestimo;
        private System.Windows.Forms.Button btnRelatorio;
        private System.Windows.Forms.Button btnUsuarios;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem funcionáriosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cadastrarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem alterarToolStripMenuItem;
    }
}

