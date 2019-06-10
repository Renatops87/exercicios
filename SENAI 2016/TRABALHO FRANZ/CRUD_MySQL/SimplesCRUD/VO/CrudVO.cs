using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SampleCRUD.VO
{
    class CrudVO
    {
        private Int32 _itemid;
        private String _itemcodigo, _itemdescricao;
        private Double _itempreco;
        private DAO.CrudDAO cdao;

        public CrudVO()
        {

        }

        public Int32 itemid
        {
            get { return _itemid; }
            set { _itemid = value; }
        }
        public String itemcodigo
        {
            get { return _itemcodigo; }
            set { _itemcodigo = value; }
        }
        public String itemdescricao
        {
            get { return _itemdescricao; }
            set { _itemdescricao = value; }
        }
        public Double itempreco
        {
            get { return _itempreco; }
            set { _itempreco = value; }
        }

        public void Inserir()
        {
            cdao = new DAO.CrudDAO();
            cdao.InserirDados(itemcodigo, itemdescricao, itempreco);
        }
        public void Atualizar()
        {
            cdao = new DAO.CrudDAO();
            cdao.AtualizarDados(itemcodigo, itemdescricao, itempreco, itemid);
        }
        public void Remover()
        {
            cdao = new DAO.CrudDAO();
            cdao.RemoverDados(itemcodigo, itemid);
        }
    }
}
