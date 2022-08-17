using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace Proyecto.Administrador
{
    public partial class Empleados : System.Web.UI.Page
    {

        private void ListarUsuarios()
        {
            try
            {
                GridView1.DataSource = NUsuario.ListarUsuarios();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                this.ListarUsuarios();
            }
            
        }

        protected void chkSelect_CheckedChanged(object sender, EventArgs e)
        {
            int fila = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox chk = (CheckBox)GridView1.Rows[fila].FindControl("chkSelect");

            if (chk.Checked)
            {

                txtEstado.Text = GridView1.Rows[fila].Cells[9].Text;
                txtIdUsario.Text = GridView1.Rows[fila].Cells[1].Text;

            }
            else
            {
                txtEstado.Text = "";
                txtIdUsario.Text = "";
            }
        }

        protected void btnCambiar_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}